#!/usr/bin/env python3
"""Apply repeatable global-theme coverage and canvas long-press delete patches."""
from pathlib import Path

ROOT = Path('/workspace/pixellabplus_custom')
SMALI = ROOT / 'decoded/smali/com/imaginstudio/imagetools/pixellab'
PLUS = SMALI / 'PlusEnhancements.smali'
CONTAINER = SMALI / 'textContainer.smali'


def replace_method(path: Path, signature: str, body: str) -> None:
    text = path.read_text(encoding='utf-8')
    start = text.index(signature)
    end = text.index('.end method', start) + len('.end method')
    path.write_text(text[:start] + body.rstrip() + text[end:], encoding='utf-8')


plus = PLUS.read_text(encoding='utf-8')
member_marker = '        Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;,'
members_start = plus.index('.annotation system Ldalvik/annotation/MemberClasses;')
members_end = plus.index('.end annotation', members_start)
members_block = plus[members_start:members_end]
for member in (
    '        Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;,\n',
    '        Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$DeleteTextAction;,\n',
):
    descriptor = member.strip().rstrip(',')
    if descriptor not in members_block:
        plus = plus.replace(member_marker, member + member_marker, 1)
        members_block = plus[members_start:plus.index('.end annotation', members_start)]

field = '.field private static final CANVAS_LONG_PRESS:Ljava/util/Map;\n'
if 'CANVAS_LONG_PRESS:Ljava/util/Map;' not in plus:
    marker = '.field private static final ORIGINAL_STYLES:Ljava/util/Map;\n'
    plus = plus.replace(marker, field + marker, 1)

init_marker = '    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->ORIGINAL_STYLES:Ljava/util/Map;\n'
if '->CANVAS_LONG_PRESS:Ljava/util/Map;' not in plus:
    init = '''    new-instance v0, Ljava/util/WeakHashMap;
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    move-result-object v0
    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->CANVAS_LONG_PRESS:Ljava/util/Map;
'''
    assert plus.count(init_marker) == 1
    plus = plus.replace(init_marker, init_marker + init, 1)

# Extend the themes to actual controls, not just TextViews and images.
style_sig = '.method private static styleTree(Landroid/app/Activity;Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;I)V'
start = plus.index(style_sig)
end = plus.index('.end method', start) + len('.end method')
style = plus[start:end]
style_marker = '    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->captureStyle(Landroid/view/View;)V\n'
if '->styleWidget(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;)V' not in style:
    assert style.count(style_marker) == 1
    style = style.replace(style_marker, style_marker + '    invoke-static {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->styleWidget(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;)V\n', 1)

# Give otherwise-transparent panel containers a themed surface, but leave the
# actual canvas (RelativeLayout) and the content root alone. Containers with an
# existing background are already themed by the preceding background block.
group_marker = '    instance-of v0, p1, Landroid/view/ViewGroup;\n\n    if-eqz v0, :cond_ce\n'
if ':plus_theme_group_surface_done' not in style:
    assert style.count(group_marker) == 1
    group_surface = '''    instance-of v0, p1, Landroid/view/ViewGroup;
    if-eqz v0, :cond_ce
    const v0, 0x1020002
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eq p1, v0, :plus_theme_group_surface_done
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :plus_theme_group_surface_done
    instance-of v0, p1, Landroid/widget/LinearLayout;
    if-nez v0, :plus_theme_group_surface_apply
    instance-of v0, p1, Landroid/widget/ScrollView;
    if-nez v0, :plus_theme_group_surface_apply
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z
    move-result v0
    if-eqz v0, :plus_theme_group_surface_done
    :plus_theme_group_surface_apply
    invoke-static {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->surface(Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    move-result-object v0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :plus_theme_group_surface_done
'''
    style = style.replace(group_marker, group_surface, 1)
plus = plus[:start] + style + plus[end:]

# Put the currently selected theme onto custom dialogs as well as the activity.
surface_sig = '.method private static surface(Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;'
start = plus.index(surface_sig)
end = plus.index('.end method', start) + len('.end method')
surface = plus[start:end]
if '->setStroke(II)V' not in surface:
    corner = '    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V\n'
    assert surface.count(corner) == 1
    stroke = '''    const/4 v2, 0x1
    invoke-static {p1, v2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I
    move-result v2
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->border:I
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
'''
    surface = surface.replace(corner, corner + stroke, 1)
plus = plus[:start] + surface + plus[end:]

# Quotes are also dynamically inflated; attach the same layout watcher used by the editor.
quotes_sig = '.method public static onQuotesResume(Landroid/app/Activity;)V'
qstart = plus.index(quotes_sig)
qend = plus.index('.end method', qstart) + len('.end method')
quotes = plus[qstart:qend]
watch_call = '    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->watchLocaleTree(Landroid/app/Activity;)V'
if '->watchLocaleTree(' not in quotes:
    apply_call = '    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyTheme(Landroid/app/Activity;)V'
    assert quotes.count(apply_call) == 1
    quotes = quotes.replace(apply_call, apply_call + '\n' + watch_call, 1)
plus = plus[:qstart] + quotes + plus[qend:]

# Add the reusable long-press and widget-tint helpers once.
methods = r'''
.method public static updateCanvasLongPress(Lcom/imaginstudio/imagetools/pixellab/textContainer;Landroid/view/MotionEvent;)V
    .registers 5
    if-eqz p0, :canvas_long_update_done
    if-eqz p1, :canvas_long_update_done
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 0x2
    if-ne v0, v1, :canvas_long_cancel
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->CANVAS_LONG_PRESS:Ljava/util/Map;
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    instance-of v2, v1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;
    if-eqz v2, :canvas_long_update_done
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object v2
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
    move-result v2
    invoke-virtual {v1, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;->movedBeyondSlop(Landroid/view/MotionEvent;I)Z
    move-result v1
    if-eqz v1, :canvas_long_update_done
    :canvas_long_cancel
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->cancelCanvasLongPress(Lcom/imaginstudio/imagetools/pixellab/textContainer;)V
    :canvas_long_update_done
    return-void
.end method

.method public static scheduleCanvasLongPress(Lcom/imaginstudio/imagetools/pixellab/textContainer;ILandroid/view/MotionEvent;)V
    .registers 8
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->cancelCanvasLongPress(Lcom/imaginstudio/imagetools/pixellab/textContainer;)V
    if-eqz p0, :canvas_long_schedule_done
    if-eqz p2, :canvas_long_schedule_done
    if-ltz p1, :canvas_long_schedule_done
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;
    move-result-object v0
    instance-of v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    if-eqz v1, :canvas_long_schedule_done
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getSelectedComponent()Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
    move-result-object v1
    if-ne v0, v1, :canvas_long_schedule_done
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
    move-result v1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
    move-result v2
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;
    invoke-direct {v3, p0, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;-><init>(Lcom/imaginstudio/imagetools/pixellab/textContainer;Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;FF)V
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->CANVAS_LONG_PRESS:Ljava/util/Map;
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I
    move-result v0
    int-to-long v0, v0
    invoke-virtual {p0, v3, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->postDelayed(Ljava/lang/Runnable;J)Z
    :canvas_long_schedule_done
    return-void
.end method

.method private static cancelCanvasLongPress(Lcom/imaginstudio/imagetools/pixellab/textContainer;)V
    .registers 3
    if-eqz p0, :canvas_long_cancel_done
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->CANVAS_LONG_PRESS:Ljava/util/Map;
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :canvas_long_remove
    check-cast v1, Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeCallbacks(Ljava/lang/Runnable;)Z
    :canvas_long_remove
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :canvas_long_cancel_done
    return-void
.end method

.method public static onCanvasLongPressFired(Lcom/imaginstudio/imagetools/pixellab/textContainer;Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Ljava/lang/Runnable;)V
    .registers 7
    if-eqz p0, :canvas_long_fire_done
    if-eqz p1, :canvas_long_fire_done
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->CANVAS_LONG_PRESS:Ljava/util/Map;
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    if-ne v1, p2, :canvas_long_fire_done
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result v1
    if-ltz v1, :canvas_long_fire_done
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getSelectedComponent()Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
    move-result-object v1
    if-ne v1, p1, :canvas_long_fire_done
    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const-string v2, "文字对象"
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v1
    const-string v2, "删除"
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$DeleteTextAction;
    invoke-direct {v3, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$DeleteTextAction;-><init>(Lcom/imaginstudio/imagetools/pixellab/textContainer;Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v1
    const-string v2, "取消"
    const/4 v3, 0x0
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v2
    instance-of v3, v2, Landroid/app/Activity;
    if-eqz v3, :canvas_long_fire_done
    check-cast v2, Landroid/app/Activity;
    invoke-static {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyDialogTheme(Landroid/app/Activity;Landroid/app/Dialog;)V
    :canvas_long_fire_done
    return-void
.end method

.method private static applyDialogTheme(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 6
    if-eqz p0, :dialog_theme_done
    if-eqz p1, :dialog_theme_done
    const-string v0, "pixellabplus_global_ui"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v2, "theme_index"
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v0
    if-lez v0, :dialog_theme_done
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->THEME_NAMES:[Ljava/lang/String;
    array-length v2, v2
    if-ge v0, v2, :dialog_theme_done
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->forIndex(I)Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;
    move-result-object v2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object v3
    if-eqz v3, :dialog_theme_done
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v3
    invoke-static {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->localizeTree(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {p0, v3, v2, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->styleTree(Landroid/app/Activity;Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;I)V
    :dialog_theme_done
    return-void
.end method

.method private static styleWidget(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;)V
    .registers 4
    if-eqz p0, :widget_theme_done
    if-eqz p1, :widget_theme_done
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x15
    if-lt v0, v1, :widget_theme_done
    instance-of v0, p0, Landroid/widget/EditText;
    if-eqz v0, :widget_theme_button_tint
    move-object v0, p0
    check-cast v0, Landroid/widget/EditText;
    iget v1, p1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->foreground:I
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V
    :widget_theme_button_tint
    instance-of v0, p0, Landroid/widget/CompoundButton;
    if-eqz v0, :widget_theme_seekbar
    move-object v0, p0
    check-cast v0, Landroid/widget/CompoundButton;
    iget v1, p1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V
    :widget_theme_seekbar
    instance-of v0, p0, Landroid/widget/SeekBar;
    if-eqz v0, :widget_theme_progress
    move-object v0, p0
    check-cast v0, Landroid/widget/SeekBar;
    iget v1, p1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V
    :widget_theme_progress
    instance-of v0, p0, Landroid/widget/ProgressBar;
    if-eqz v0, :widget_theme_done
    move-object v0, p0
    check-cast v0, Landroid/widget/ProgressBar;
    iget v1, p1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    :widget_theme_done
    return-void
.end method
'''
if '.method public static scheduleCanvasLongPress(' not in plus:
    insert_before = '.method private static styleTree('
    pos = plus.index(insert_before)
    plus = plus[:pos] + methods + '\n' + plus[pos:]

def instrument_dialog(signature: str, show_call: str, captured: bool) -> None:
    global plus
    start = plus.index(signature)
    end = plus.index('.end method', start) + len('.end method')
    block = plus[start:end]
    if '->applyDialogTheme(' in block:
        return
    assert block.count(show_call) == 1, f'Expected one dialog show call in {signature}'
    if captured:
        extra = '\n    move-result-object v0\n    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyDialogTheme(Landroid/app/Activity;Landroid/app/Dialog;)V'
    else:
        extra = '\n    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyDialogTheme(Landroid/app/Activity;Landroid/app/Dialog;)V'
    block = block.replace(show_call, show_call + extra, 1)
    plus = plus[:start] + block + plus[end:]

alert_show = '    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;'
for dialog_signature in (
    '.method private static showFxPresets(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V',
    '.method private static showThemeMediaMenu(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V',
    '.method private static showThemePicker(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V',
):
    instrument_dialog(dialog_signature, alert_show, True)
release_signature = '.method private static showReleaseNotes(Landroid/app/Activity;)V'
release_start = plus.index(release_signature)
release_end = plus.index('.end method', release_start) + len('.end method')
release_block = plus[release_start:release_end]
release_theme_call = '    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyDialogTheme(Landroid/app/Activity;Landroid/app/Dialog;)V\n'
if release_theme_call in release_block:
    release_block = release_block.replace(release_theme_call, '', 1)
    plus = plus[:release_start] + release_block + plus[release_end:]
PLUS.write_text(plus, encoding='utf-8')

# Keep the canvas's normal down/move/up dispatch untouched; observe motion only
# to cancel a delayed long press on movement/release, then schedule for a hit text.
container = CONTAINER.read_text(encoding='utf-8')
touch_sig = '.method public onTouchEvent(Landroid/view/MotionEvent;)Z'
tstart = container.index(touch_sig)
tend = container.index('.end method', tstart) + len('.end method')
touch = container[tstart:tend]
update_call = '    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->updateCanvasLongPress(Lcom/imaginstudio/imagetools/pixellab/textContainer;Landroid/view/MotionEvent;)V\n'
if '->updateCanvasLongPress(' not in touch:
    pinch_call = '    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->handlePinchTouch(Lcom/imaginstudio/imagetools/pixellab/textContainer;Landroid/view/MotionEvent;)Z\n'
    assert touch.count(pinch_call) == 1
    touch = touch.replace(pinch_call, update_call + pinch_call, 1)

pass_call = '    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->passEventToAll(Landroid/view/MotionEvent;)I\n'
if '->scheduleCanvasLongPress(' not in touch:
    assert touch.count(pass_call) == 1
    touch = touch.replace(pass_call, '    move-object v3, p1\n' + pass_call, 1)
    set_id = '    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I\n'
    assert touch.count(set_id) == 1
    schedule = '    invoke-static {p0, p1, v3}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->scheduleCanvasLongPress(Lcom/imaginstudio/imagetools/pixellab/textContainer;ILandroid/view/MotionEvent;)V\n'
    touch = touch.replace(set_id, set_id + schedule, 1)
container = container[:tstart] + touch + container[tend:]
CONTAINER.write_text(container, encoding='utf-8')
print('Patched persistent global widget theming, dialog surfaces, dynamic quote refresh, and movement-safe long-press text deletion.')
