from pathlib import Path
import re

ROOT = Path('/workspace/pixellabplus_custom')
SMALI = ROOT / 'decoded/smali/com/imaginstudio/imagetools/pixellab'

def replace_once(path, old, new):
    data = path.read_text()
    n = data.count(old)
    if n != 1:
        raise RuntimeError(f'{path}: expected one occurrence, found {n}: {old[:100]!r}')
    path.write_text(data.replace(old, new, 1))

def in_method(path, method_sig, transform):
    data = path.read_text()
    start = data.index(method_sig)
    end = data.index('.end method', start) + len('.end method')
    block = data[start:end]
    if 'PlusEnhancements' in block:
        return
    updated = transform(block)
    if updated == block:
        if 'PlusEnhancements' in block:
            return
        raise RuntimeError(f'No changes applied to {method_sig}')
    path.write_text(data[:start] + updated + data[end:])

main = SMALI / 'MainActivity.smali'
# The source dump contains harmless blank lines between most instructions.
for _file in [main, SMALI / 'MainActivity$1.smali', SMALI / 'textContainer.smali', SMALI / 'TextObject/CustomTextView.smali', SMALI / 'quotes_browser.smali']:
    if _file.exists():
        _file.write_text(re.sub(r'\n{2,}', '\n', _file.read_text()))
# Extend the existing + menu, preserving its existing localized-language entry.
in_method(main, '.method createAddNewMenu()V', lambda b: b.replace(
    '    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->done()V',
    '    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->addMenuItems(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;)V\n    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->done()V'))

# Apply global palette and reposition the layer dock whenever the editor resumes.
in_method(main, '.method protected onResume()V', lambda b: b.replace(
    '    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V',
    '    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V\n    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->onMainResume(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V'))

# Video imports become editable cover-image layers through the original gallery pipeline.
in_method(main, '.method protected onActivityResult(IILandroid/content/Intent;)V', lambda b: b.replace(
    '    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V',
    '    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V\n    const/16 v0, 0x1576\n    if-ne p1, v0, :plus_video_not_selected\n    invoke-static {p0, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->handleVideoResult(Lcom/imaginstudio/imagetools/pixellab/MainActivity;ILandroid/content/Intent;)V\n    return-void\n:plus_video_not_selected'))

# Move layer panel to right edge in all main visibility transitions.
in_method(main, '.method maximizeLayers()V', lambda b: b.replace(
    '    const/4 v1, 0x0\n    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;',
    '    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->visibleLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)F\n    move-result v1\n    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;'))

in_method(main, '.method minimizeLayers()V', lambda b: re.sub(
    r'    const/high16 v1, -0x40800000    # -1\.0f\n    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F\n    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHandle:Landroid/widget/ImageButton;\n    invoke-virtual \{v3\}, Landroid/widget/ImageButton;->getWidth\(\)I\n    move-result v3\n    int-to-float v3, v3\n    sub-float/2addr v2, v3\n    mul-float v2, v2, v1\n    invoke-virtual \{v0, v2\}, Landroid/view/ViewPropertyAnimator;->x\(F\)Landroid/view/ViewPropertyAnimator;',
    '    const/4 v1, 0x1\n    invoke-static {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->hiddenLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)F\n    move-result v2\n    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;', b, count=1))

in_method(main, '.method hideLayers()V', lambda b: re.sub(
    r'    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F\n    const/high16 v2, -0x40800000    # -1\.0f\n    mul-float v1, v1, v2\n    invoke-virtual \{v0, v1\}, Landroid/view/ViewPropertyAnimator;->x\(F\)Landroid/view/ViewPropertyAnimator;',
    '    const/4 v1, 0x0\n    invoke-static {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->hiddenLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)F\n    move-result v1\n    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;', b, count=1))

in_method(main, '.method enableLayers(Z)V', lambda b: re.sub(
    r'    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;\n    const/high16 v0, -0x40800000    # -1\.0f\n    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F\n    mul-float v1, v1, v0\n    invoke-virtual \{p1, v1\}, Landroid/widget/LinearLayout;->setX\(F\)V',
    '    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;\n    const/4 v0, 0x1\n    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->hiddenLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)F\n    move-result v1\n    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setX(F)V', b, count=1))

# The group link is handled by the helper before Android's original media callback.
# Apply the selected theme on the secondary quotes screen too.
quotes = SMALI / 'quotes_browser.smali'
if '.method protected onResume()V' in quotes.read_text():
    in_method(quotes, '.method protected onResume()V', lambda b: b.replace(
        '    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V',
        '    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V\n    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->onQuotesResume(Landroid/app/Activity;)V'))

# Intercept two-finger events at the parent; single-finger selection remains unchanged.
container = SMALI / 'textContainer.smali'
in_method(container, '.method public onTouchEvent(Landroid/view/MotionEvent;)Z', lambda b: b.replace(
    '    .locals 4\n',
    '    .locals 4\n    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->handlePinchTouch(Lcom/imaginstudio/imagetools/pixellab/textContainer;Landroid/view/MotionEvent;)Z\n    move-result v0\n    if-eqz v0, :plus_continue_touch\n    const/4 v0, 0x1\n    return v0\n:plus_continue_touch\n', 1))
container_data = container.read_text()
if '.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z' not in container_data:
    container.write_text(container_data + '\n.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z\n    .locals 1\n    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->shouldInterceptPinch(Lcom/imaginstudio/imagetools/pixellab/textContainer;Landroid/view/MotionEvent;)Z\n    move-result v0\n    if-eqz v0, :plus_super_intercept\n    const/4 v0, 0x1\n    return v0\n:plus_super_intercept\n    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z\n    move-result v0\n    return v0\n.end method\n')

# MaskFilter/EmbossMaskFilter are unsupported by many hardware-accelerated text paths.
custom_text = SMALI / 'TextObject/CustomTextView.smali'
in_method(custom_text, '.method public setMaskFilter(Landroid/graphics/EmbossMaskFilter;)V', lambda b: b.replace(
    '    :goto_0\n    const/4 v2, 0x1\n    return-void',
    '    :goto_0\n    if-eqz p1, :plus_emboss_restore_hardware\n    const/4 v0, 0x1\n    const/4 v1, 0x0\n    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V\n    goto :plus_emboss_layer_done\n:plus_emboss_restore_hardware\n    const/4 v0, 0x0\n    const/4 v1, 0x0\n    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V\n:plus_emboss_layer_done\n    const/4 v2, 0x1\n    return-void'))

# Allow the right-edge handle to drag only within the right-side dock range.
handle = SMALI / 'MainActivity$1.smali'
in_method(handle, '.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z', lambda b: b.replace(
    '    const/4 v0, 0x0\n    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->minX:F',
    '    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;\n    const/4 v0, 0x1\n    invoke-static {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->hiddenLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)F\n    move-result v0\n    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->minX:F', 1).replace(
    '    const/high16 p1, -0x40800000    # -1.0f\n    .line 218\n    const/4 v2, 0x2\n    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;\n    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$000(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)F\n    move-result p2\n    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;\n    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHandle:Landroid/widget/ImageButton;\n    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I\n    move-result v0\n    int-to-float v0, v0\n    sub-float/2addr p2, v0\n    mul-float p2, p2, p1\n    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->minX:F',
    '    .line 218\n    const/4 v2, 0x2\n    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;\n    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->visibleLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)F\n    move-result p2\n    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->minX:F', 1))

# Add undo snapshots before applying a preset.
helper = ROOT / 'src/com/imaginstudio/imagetools/pixellab/PlusEnhancements.java'
source = helper.read_text()
source = source.replace('                TextComponent text = (TextComponent) selected;\n                switch (which) {',
                        '                TextComponent text = (TextComponent) selected;\n                activity.saveCurrTextState(text);\n                switch (which) {', 1)
source = source.replace('                ShapeComponent shape = (ShapeComponent) selected;\n                switch (which) {',
                        '                ShapeComponent shape = (ShapeComponent) selected;\n                activity.saveCurrShapeState(shape);\n                switch (which) {', 1)
helper.write_text(source)
print('Applied Plus enhancements patches to MainActivity, textContainer, CustomTextView and helper source.')
