.class public final Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;
.super Ljava/lang/Object;
.source "PlusEnhancements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;,
        Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$DeleteTextAction;,
        Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;,
        Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;,
        Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;
    }
.end annotation


# static fields
.field private static final CANVAS_LONG_PRESS:Ljava/util/Map;
.field private static final ORIGINAL_STYLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private static final PINCH_ACTIVE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/imaginstudio/imagetools/pixellab/textContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PINCH_DISTANCE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/imaginstudio/imagetools/pixellab/textContainer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFS:Ljava/lang/String; = "pixellabplus_global_ui"


.field private static final THEME_KEY:Ljava/lang/String; = "theme_index"

.field private static final THEME_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u8ddf\u968f\u539f\u7248"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u65b0\u7c97\u91ce\u4e3b\u4e49"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\u65b0\u62df\u7269"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\u6db2\u6001\u73bb\u7483"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "\u52a8\u6001\u5361\u901a"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "\u624b\u7ed8\u7ed8\u5236"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->THEME_NAMES:[Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_DISTANCE:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_ACTIVE:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->ORIGINAL_STYLES:Ljava/util/Map;
    new-instance v0, Ljava/util/WeakHashMap;
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    move-result-object v0
    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->CANVAS_LONG_PRESS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .registers 1

    .line 43
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->showThemeMediaMenu(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .registers 1

    .line 43
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->showFxPresets(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;)V
    .registers 1

    .line 43
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->showReleaseNotes(Landroid/app/Activity;)V

    return-void
.end method

.method public static addMenuItems(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;)V
    .registers 4

    .line 57
    if-eqz p0, :cond_27

    if-nez p1, :cond_5

    goto :goto_27

    .line 58
    :cond_5
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;I)V

    const-string v1, "\u5168\u5c40\u4e3b\u9898 / \u672c\u5730\u5a92\u4f53"

    invoke-virtual {p1, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addTextItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 59
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;I)V

    const-string v1, "\u6587\u5b57\u7279\u6548\u9884\u8bbe"

    invoke-virtual {p1, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addTextItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 60
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$MenuAction;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;I)V

    const-string p0, "\u66f4\u65b0\u4e0e\u4fee\u590d / \u5b98\u65b9\u7fa4"

    invoke-virtual {p1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addTextItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 61
    return-void

    .line 57
    :cond_27
    :goto_27
    return-void
.end method

.method private static applyFx(Lcom/imaginstudio/imagetools/pixellab/MainActivity;I)V
    .registers 12

    .line 230
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    if-nez v0, :cond_5

    return-void

    .line 232
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getSelectedComponent()Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    move-result-object v0

    .line 233
    instance-of v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    const/4 v2, 0x0

    if-eqz v1, :cond_9c

    .line 234
    move-object v3, v0

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    .line 235
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrTextState(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V

    .line 236
    packed-switch p1, :pswitch_data_112

    .line 254
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x13b

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmboss(ZIIIII)V

    goto :goto_81

    .line 250
    :pswitch_24
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x13b

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmboss(ZIIIII)V

    .line 251
    const/4 v8, 0x5

    const/high16 v9, -0x67000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x3

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setOuterShadow(ZZFIII)V

    .line 252
    goto :goto_92

    .line 246
    :pswitch_3a
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x13b

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmboss(ZIIIII)V

    .line 247
    const/16 v7, 0x10

    const/16 v8, 0x30

    const/4 v4, 0x1

    const v5, -0xaaaf91

    const/16 v6, 0x46

    invoke-virtual/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setShadow3d(ZIIII)V

    .line 248
    goto :goto_92

    .line 242
    :pswitch_52
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setOuterShadow(ZZFIII)V

    .line 243
    const/16 v8, 0x41

    const/16 v9, 0x2a

    const/4 v4, 0x1

    const/16 v5, 0x13b

    const/16 v6, 0x58

    const/16 v7, 0x26

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmboss(ZIIIII)V

    .line 244
    goto :goto_92

    .line 238
    :pswitch_6a
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x13b

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmboss(ZIIIII)V

    .line 239
    const/4 v8, 0x0

    const v9, -0xab2001

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x41700000    # 15.0f

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setOuterShadow(ZZFIII)V

    .line 240
    goto :goto_92

    .line 255
    :goto_81
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setOuterShadow(ZZFIII)V

    .line 256
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setShadow3d(ZIIII)V

    .line 258
    :goto_92
    const-string p1, "\u7279\u6548\u5df2\u5e94\u7528\u5230\u5f53\u524d\u6587\u5b57\u5bf9\u8c61"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 259
    goto :goto_104

    :cond_9c
    instance-of v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_fb

    .line 260
    move-object v3, v0

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 261
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    .line 262
    packed-switch p1, :pswitch_data_11e

    .line 268
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x13b

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEmboss(ZIIIII)V

    goto :goto_e9

    .line 266
    :pswitch_b4
    const/4 v7, 0x5

    const/high16 v8, -0x67000000

    const/4 v4, 0x1

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x3

    invoke-virtual/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShadow(ZFIII)V

    goto :goto_f1

    .line 265
    :pswitch_bf
    const/16 v8, 0x46

    const/16 v9, 0x3c

    const/4 v4, 0x1

    const/16 v5, 0x13b

    const/16 v6, 0x5f

    const/16 v7, 0x23

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEmboss(ZIIIII)V

    goto :goto_f1

    .line 264
    :pswitch_ce
    const/16 v8, 0x41

    const/16 v9, 0x2a

    const/4 v4, 0x1

    const/16 v5, 0x13b

    const/16 v6, 0x58

    const/16 v7, 0x26

    invoke-virtual/range {v3 .. v9}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEmboss(ZIIIII)V

    goto :goto_f1

    .line 263
    :pswitch_dd
    const/4 v7, 0x0

    const v8, -0xab2001

    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShadow(ZFIII)V

    goto :goto_f1

    .line 269
    :goto_e9
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShadow(ZFIII)V

    .line 271
    :goto_f1
    const-string p1, "\u7279\u6548\u5df2\u5e94\u7528\u5230\u5f53\u524d\u56fe\u5f62\u5bf9\u8c61"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 272
    goto :goto_104

    .line 273
    :cond_fb
    const-string p1, "\u8bf7\u5148\u9009\u4e2d\u4e00\u4e2a\u6587\u5b57\u6216\u56fe\u5f62\u5bf9\u8c61"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_104
    .catchall {:try_start_5 .. :try_end_104} :catchall_105

    .line 277
    :goto_104
    goto :goto_110

    .line 275
    :catchall_105
    move-exception v0

    .line 276
    const-string p1, "\u65e0\u6cd5\u5e94\u7528\u6b64\u7279\u6548\uff0c\u8bf7\u5148\u9009\u4e2d\u53ef\u7f16\u8f91\u5bf9\u8c61"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 278
    :goto_110
    return-void

    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_52
        :pswitch_3a
        :pswitch_24
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_ce
        :pswitch_bf
        :pswitch_b4
    .end packed-switch
.end method

.method private static applyTheme(Landroid/app/Activity;)V
    .registers 5

    .line 349
    const-string v0, "pixellabplus_global_ui"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "theme_index"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 350
    if-ltz v0, :cond_16

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->THEME_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_15

    goto :goto_16

    :cond_15
    move v1, v0

    .line 351
    :cond_16
    :goto_16
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 352
    if-nez v0, :cond_20

    return-void

    .line 353
    :cond_20
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->captureStyle(Landroid/view/View;)V
    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->localizeTree(Landroid/app/Activity;Landroid/view/View;)V

    .line 354
    if-nez v1, :cond_29

    .line 355
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->restoreTree(Landroid/view/View;)V

    .line 356
    return-void

    .line 358
    :cond_29
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->forIndex(I)Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;

    move-result-object v2

    .line 359
    iget v3, v2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->background:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 360
    invoke-static {p0, v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->styleTree(Landroid/app/Activity;Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;I)V

    .line 361
    return-void
.end method

.method public static onThemeLayout(Landroid/app/Activity;)V
    .registers 1
    if-eqz p0, :theme_layout_done
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyTheme(Landroid/app/Activity;)V
    :theme_layout_done
    return-void
.end method

.method private static watchLocaleTree(Landroid/app/Activity;)V
    .registers 4
    if-eqz p0, :locale_watch_done
    const v0, 0x1020002
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :locale_watch_done
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v1
    instance-of v2, v1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;
    if-nez v2, :locale_watch_done
    if-eqz v1, :locale_watch_create
    goto :locale_watch_done
    :locale_watch_create
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;-><init>(Landroid/app/Activity;)V
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v2
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z
    move-result v3
    if-eqz v3, :locale_watch_done
    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :locale_watch_done
    return-void
.end method

.method public static localizeTree(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5
    if-eqz p1, :tree_localize_done
    instance-of v0, p1, Landroid/widget/TextView;
    if-eqz v0, :tree_localize_children
    instance-of v0, p1, Landroid/widget/EditText;
    if-eqz v0, :tree_check_canvas_text
    goto :tree_localize_children
    :tree_check_canvas_text
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v1, "CustomTextView"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :tree_translate_text
    goto :tree_localize_children
    :tree_translate_text
    move-object v0, p1
    check-cast v0, Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    move-result-object v1
    if-eqz v1, :tree_localize_children
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->translateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :tree_localize_children
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :tree_localize_children
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :tree_localize_children
    instance-of v0, p1, Landroid/view/ViewGroup;
    if-eqz v0, :tree_localize_done
    move-object v0, p1
    check-cast v0, Landroid/view/ViewGroup;
    const/4 v1, 0x0
    :tree_localize_loop
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    if-ge v1, v2, :tree_localize_done
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    invoke-static {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->localizeTree(Landroid/app/Activity;Landroid/view/View;)V
    add-int/lit8 v1, v1, 0x1
    goto :tree_localize_loop
    :tree_localize_done
    return-void
.end method

.method private static captureStyle(Landroid/view/View;)V
    .registers 10

    .line 396
    if-eqz p0, :cond_60

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->ORIGINAL_STYLES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_60

    .line 397
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 398
    nop

    .line 399
    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 400
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 401
    if-nez v2, :cond_1a

    goto :goto_22

    :cond_1a
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_22
    move-object v3, v0

    goto :goto_25

    .line 399
    :cond_24
    move-object v3, v1

    .line 403
    :goto_25
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_32

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object v4, v0

    goto :goto_33

    :cond_32
    move-object v4, v1

    .line 404
    :goto_33
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    :cond_3e
    move-object v5, v1

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4b

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    move v6, v0

    goto :goto_4d

    :cond_4b
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 406
    :goto_4d
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->ORIGINAL_STYLES:Ljava/util/Map;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/ColorFilter;FFF)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-void

    .line 396
    :cond_60
    :goto_60
    return-void
.end method

.method private static dockLayersRight(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .registers 3

    .line 113
    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    if-nez v0, :cond_a

    return-void

    .line 115
    :cond_a
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;

    invoke-direct {v1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .registers 2

    .line 450
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static handlePinchTouch(Lcom/imaginstudio/imagetools/pixellab/textContainer;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 135
    const/4 v0, 0x0

    if-eqz p0, :cond_99

    if-nez p1, :cond_7

    goto/16 :goto_99

    .line 136
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 138
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_ACTIVE:Ljava/util/Set;

    monitor-enter v2

    :try_start_e
    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_ACTIVE:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_96

    .line 139
    const/4 v2, 0x2

    if-nez v3, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v4, v2, :cond_1f

    return v0

    .line 140
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_78

    .line 141
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->spacing(Landroid/view/MotionEvent;)F

    move-result p1

    .line 142
    const/4 v0, 0x5

    if-eq v1, v0, :cond_2f

    if-ne v1, v2, :cond_71

    .line 144
    :cond_2f
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_DISTANCE:Ljava/util/Map;

    monitor-enter v0

    :try_start_32
    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_DISTANCE:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_75

    .line 145
    if-ne v1, v2, :cond_64

    if-eqz v3, :cond_64

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_64

    cmpl-float v0, p1, v1

    if-lez v0, :cond_64

    .line 146
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v0, p1, v0

    const v1, 0x3fb33333    # 1.4f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 147
    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->scaleSelected(Lcom/imaginstudio/imagetools/pixellab/textContainer;F)V

    .line 149
    :cond_64
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_DISTANCE:Ljava/util/Map;

    monitor-enter v1

    :try_start_67
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_DISTANCE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    .line 151
    :cond_71
    return v4

    .line 149
    :catchall_72
    move-exception p0

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_72

    throw p0

    .line 144
    :catchall_75
    move-exception p0

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0

    .line 153
    :cond_78
    if-eq v1, v4, :cond_7d

    const/4 p1, 0x3

    if-ne v1, p1, :cond_8f

    .line 154
    :cond_7d
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_ACTIVE:Ljava/util/Set;

    monitor-enter p1

    :try_start_80
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_ACTIVE:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_93

    .line 155
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_DISTANCE:Ljava/util/Map;

    monitor-enter v0

    :try_start_89
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_DISTANCE:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    .line 157
    :cond_8f
    return v3

    .line 155
    :catchall_90
    move-exception p0

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_90

    throw p0

    .line 154
    :catchall_93
    move-exception p0

    :try_start_94
    monitor-exit p1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p0

    .line 138
    :catchall_96
    move-exception p0

    :try_start_97
    monitor-exit v2
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p0

    .line 135
    :cond_99
    :goto_99
    return v0
.end method

.method public static hiddenLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)F
    .registers 4

    .line 98
    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    if-nez v0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_b
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 102
    :goto_1c
    if-gtz v0, :cond_28

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 103
    :cond_28
    nop

    .line 104
    if-eqz p1, :cond_4f

    .line 105
    const p1, 0x7f080128

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 106
    if-eqz p1, :cond_39

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_3a

    :cond_39
    const/4 p1, 0x0

    .line 107
    :goto_3a
    if-gtz p1, :cond_50

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x42000000    # 32.0f

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_50

    .line 104
    :cond_4f
    const/4 p1, 0x0

    .line 109
    :cond_50
    :goto_50
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method static synthetic lambda$showFxPresets$2(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 224
    invoke-static {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyFx(Lcom/imaginstudio/imagetools/pixellab/MainActivity;I)V

    return-void
.end method

.method static synthetic lambda$showReleaseNotes$3(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .line 298
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->openQqGroup(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$showThemeMediaMenu$0(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 179
    if-nez p2, :cond_6

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->showThemePicker(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    goto :goto_c

    .line 180
    :cond_6
    const/4 p1, 0x1

    if-ne p2, p1, :cond_c

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->openImagePicker(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    .line 181
    :cond_c
    :goto_c
    return-void
.end method

.method static synthetic lambda$showThemePicker$1(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 191
    const-string v0, "pixellabplus_global_ui"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme_index"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 193
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyTheme(Landroid/app/Activity;)V

    .line 194
    return-void
.end method

.method public static onMainResume(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .registers 1

    .line 76
    if-nez p0, :cond_3

    return-void

    .line 78
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyTheme(Landroid/app/Activity;)V
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->watchLocaleTree(Landroid/app/Activity;)V

    .line 79
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dockLayersRight(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    goto :goto_b

    .line 80
    :catchall_a
    move-exception p0

    :goto_b
    nop

    .line 81
    return-void
.end method

.method public static onQuotesResume(Landroid/app/Activity;)V
    .registers 1

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyTheme(Landroid/app/Activity;)V
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->watchLocaleTree(Landroid/app/Activity;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 85
    :goto_5
    return-void
.end method

.method private static openImagePicker(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .registers 8

    .line 201
    const-string v0, "image/*"

    const-string v1, "android.intent.category.OPENABLE"

    const-string v2, "\u65e0\u6cd5\u6253\u5f00\u7cfb\u7edf\u56fe\u7247\u9009\u62e9\u5668"

    const/16 v3, 0xd

    const/4 v4, 0x0

    :try_start_9
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v5, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/16 v6, 0x41

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v5, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_1e} :catch_28
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    goto :goto_42

    .line 215
    :catchall_1f
    move-exception v0

    .line 216
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_43

    .line 206
    :catch_28
    move-exception v5

    .line 208
    :try_start_29
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v5, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v5, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_3a

    .line 214
    goto :goto_42

    .line 212
    :catchall_3a
    move-exception v0

    .line 213
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 217
    :goto_42
    nop

    .line 218
    :goto_43
    return-void
.end method

.method private static openQqGroup(Landroid/app/Activity;)V
    .registers 5
    if-eqz p0, :group_link_done
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-nez v0, :group_link_done
    :try_start_qq
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"
    const-string v2, "mqqapi://card/show_pslcard?src_type=internal&version=1&uin=836869262&card_type=group&source=qrcode"
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v2
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    const-string v1, "com.tencent.mobileqq"
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_qq
    .catchall {:try_start_qq .. :try_end_qq} :group_link_failed
    goto :group_link_done
    :group_link_failed
    move-exception v0
    const-string v1, "未检测到 QQ，请安装 QQ 后再加入官方群。"
    const/4 v2, 0x1
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :group_link_done
    return-void
.end method

.method private static releaseHtml()Ljava/lang/String;
    .registers 1

    .line 320
    const-string v0, "<!doctype html><html lang=\'zh-CN\'><head><meta charset=\'utf-8\'><meta name=\'viewport\' content=\'width=device-width,initial-scale=1\'><style>*{box-sizing:border-box}html,body{margin:0;background:transparent;color:#eef5ff;font-family:system-ui,\'Noto Sans CJK SC\',sans-serif}body{padding:8px}.hero{position:relative;overflow:hidden;border:1px solid #5675a2;border-radius:24px;padding:23px 21px;background:linear-gradient(135deg,rgba(54,84,154,.75),rgba(75,36,122,.56),rgba(23,141,157,.34));box-shadow:0 18px 45px #050917aa;backdrop-filter:blur(22px);animation:float 5s ease-in-out infinite}.hero:before{content:\'\';position:absolute;width:220px;height:220px;right:-90px;top:-110px;border-radius:50%;background:radial-gradient(circle,#84ecff88,transparent 70%);filter:blur(5px)}.eyebrow{font-size:11px;letter-spacing:.22em;color:#a8eaff;text-transform:uppercase}h1{position:relative;margin:8px 0 4px;font-size:27px;line-height:1.2;background:linear-gradient(90deg,#d8fbff,#d6c0ff,#fff);color:transparent;background-clip:text;-webkit-background-clip:text;text-shadow:0 0 24px #73cfff55}.by{color:#b9c6e3;font-size:13px;margin-bottom:17px}.grid{display:grid;grid-template-columns:1fr;gap:10px}.card{position:relative;padding:14px 15px;border-radius:17px;border:1px solid #ffffff20;background:linear-gradient(135deg,#ffffff12,#ffffff06);box-shadow:inset 0 1px #ffffff18,0 8px 24px #05091755;animation:rise .7s both}.card:nth-child(2){animation-delay:.12s}.tag{font-size:11px;letter-spacing:.08em;color:#81ebdb;margin-bottom:6px;font-weight:700}.card p{margin:0;color:#e5ebfb;font-size:13px;line-height:1.7}.accent{color:#c7b7ff;font-weight:700}.foot{font-size:11px;color:#97a8c9;margin:14px 4px 4px}@keyframes rise{from{opacity:0;transform:translateY(12px)}to{opacity:1;transform:none}}@keyframes float{0%,100%{transform:translateY(0)}50%{transform:translateY(-3px)}}@media(prefers-reduced-motion:reduce){*,*:before,*:after{animation:none!important}}</style></head><body><main class=\'hero\'><div class=\'eyebrow\'>PIXELLAB PLUS \u00b7 \u7248\u672c\u66f4\u65b0</div><h1>\u66f4\u65b0\u4e0e\u4fee\u590d</h1><div class=\'by\'>\u9648\u6dd1\u5a77\u4fee\u6539 \u00b7 \u6301\u7eed\u6253\u78e8\u521b\u4f5c\u4f53\u9a8c</div><section class=\'grid\'><article class=\'card\'><div class=\'tag\'>\u672c\u6b21\u66f4\u65b0</div><p>\u753b\u5e03\u9009\u4e2d\u5bf9\u8c61\u652f\u6301\u53cc\u6307\u7f29\u653e\uff1b\u56fe\u5c42\u9762\u677f\u6539\u4e3a\u53f3\u4fa7\u5f39\u51fa\u505c\u9760\uff1b\u65b0\u589e\u5168\u5c40\u4e3b\u9898\u5207\u6362\uff1a\u65b0\u7c97\u91ce\u3001\u65b0\u62df\u7269\u3001\u6db2\u6001\u73bb\u7483\u3001\u52a8\u6001\u5361\u901a\u3001\u624b\u7ed8\u7ed8\u5236\uff1b\u65b0\u589e\u672c\u5730\u56fe\u7247\u5bfc\u5165\uff1b\u63d0\u4f9b\u9713\u8679\u3001\u91d1\u5c5e\u6d6e\u96d5\u30013D \u4e0e\u67d4\u548c\u6295\u5f71\u7b49\u7279\u6548\u9884\u8bbe\u3002</p></article><article class=\'card\'><div class=\'tag\'>\u95ee\u9898\u4fee\u590d</div><p>\u4fee\u590d\u6587\u5b57\u6d6e\u96d5\u7279\u6548\u7ed8\u5236\u8def\u5f84\uff1b\u4f18\u5316\u56fe\u5c42\u6536\u8d77/\u5c55\u5f00\u52a8\u753b\u4e0e\u89e6\u63a7\uff1b\u66f4\u65b0\u201c+\u201d\u83dc\u5355\u8bf4\u660e\u53ca\u5b98\u65b9\u793e\u7fa4\u5165\u53e3\u3002\u7fa4\u804a\u94fe\u63a5\u53ef\u5728\u624b\u673a\u4e0a\u901a\u8fc7\u6d4f\u89c8\u5668\u6216\u517c\u5bb9\u5e94\u7528\u6253\u5f00\u5e76\u52a0\u5165\u3002</p></article></section><div class=\'foot\'>PixelLab Plus \u00b7 \u4e3a\u521b\u4f5c\u754c\u9762\u4e0e\u6587\u5b57\u8868\u73b0\u5e26\u6765\u66f4\u591a\u9009\u62e9</div></main></body></html>"

    return-object v0
.end method

.method private static restoreTree(Landroid/view/View;)V
    .registers 4

    .line 410
    if-nez p0, :cond_3

    return-void

    .line 411
    :cond_3
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->ORIGINAL_STYLES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;

    .line 412
    if-eqz v0, :cond_43

    .line 413
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->textColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_22

    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_22

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->textColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 415
    :cond_22
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2e

    move-object v1, p0

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 416
    :cond_2e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_39

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->elevation:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setElevation(F)V

    .line 417
    :cond_39
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->scaleX:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->scaleY:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 419
    :cond_43
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5a

    .line 420
    check-cast p0, Landroid/view/ViewGroup;

    .line 421
    const/4 v0, 0x0

    :goto_4a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->restoreTree(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 423
    :cond_5a
    return-void
.end method

.method private static roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .line 445
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 446
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p0, p2

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 447
    return-object v0
.end method

.method private static scaleSelected(Lcom/imaginstudio/imagetools/pixellab/textContainer;F)V
    .registers 3

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getSelectedComponent()Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    move-result-object p0

    .line 169
    instance-of v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->relativeScale(F)V

    goto :goto_19

    .line 170
    :cond_e
    instance-of v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_19

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->relativeScale(F)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    goto :goto_19

    .line 171
    :catchall_18
    move-exception p0

    :cond_19
    :goto_19
    nop

    .line 172
    return-void
.end method

.method public static shouldInterceptPinch(Lcom/imaginstudio/imagetools/pixellab/textContainer;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 124
    if-eqz p0, :cond_22

    if-nez p1, :cond_5

    goto :goto_22

    .line 125
    :cond_5
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_ACTIVE:Ljava/util/Set;

    monitor-enter v0

    .line 126
    :try_start_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_17

    .line 127
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_ACTIVE:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 130
    :cond_17
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->PINCH_ACTIVE:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 131
    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw p0

    .line 124
    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method private static showFxPresets(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .registers 4

    .line 221
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u9713\u8679\u8f89\u5149"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u91d1\u5c5e\u6d6e\u96d5"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\u539a\u91cd 3D"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\u67d4\u548c\u6295\u5f71"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "\u6e05\u9664\u9884\u8bbe\u7279\u6548"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 222
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    const-string v2, "\u6587\u5b57\u7279\u6548\u9884\u8bbe\uff08\u5e94\u7528\u4e8e\u5f53\u524d\u9009\u4e2d\u5bf9\u8c61\uff09"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$0;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$0;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    .line 224
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 225
    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyDialogTheme(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 227
    return-void
.end method

.method private static showReleaseNotes(Landroid/app/Activity;)V
    .registers 11

    .line 281
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103012c

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 282
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 283
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 284
    const/16 v3, 0x10

    invoke-static {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v6, 0xe

    invoke-static {p0, v6}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 285
    const/16 v3, 0x16

    invoke-static {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v4

    const v5, -0xefe7d3

    const v6, -0xbfa57d

    invoke-static {v5, v6, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 287
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 288
    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 289
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 290
    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 291
    const-string v3, "UTF-8"

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->releaseHtml()Ljava/lang/String;

    move-result-object v6

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v7, "text/html"

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x19a

    invoke-static {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 295
    const-string v4, "\u52a0\u5165 PixelLab \u5b98\u65b9 QQ \u7fa4"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 297
    const/16 v4, 0x12

    invoke-static {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v2

    const v5, -0xb28b01

    const v7, -0x641701

    invoke-static {v5, v7, v4, v2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 298
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$4;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x36

    invoke-static {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 300
    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 301
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 303
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 304
    const/4 v2, -0x2

    const/16 v3, 0x208

    const/16 v4, 0x1c

    if-eqz v1, :cond_103

    .line 305
    const v5, 0x106000d

    invoke-virtual {v1, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 306
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    .line 307
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 308
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 310
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 311
    const v6, 0x3f147ae1    # 0.58f

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 312
    invoke-virtual {v1, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 313
    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/view/Window;->setGravity(I)V

    .line 315
    :cond_103
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 316
    if-eqz v1, :cond_122

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v1, p0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 317
    :cond_122
    return-void
.end method

.method private static showThemeMediaMenu(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .registers 4

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u9009\u62e9\u5168\u5c40\u4e3b\u9898"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u4ece\u672c\u5730\u5bfc\u5165\u56fe\u7247"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 176
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    const-string v2, "\u5168\u5c40\u5916\u89c2\u4e0e\u7d20\u6750"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$3;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    .line 178
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 182
    const-string v0, "\u5173\u95ed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyDialogTheme(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 184
    return-void
.end method

.method private static showThemePicker(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .registers 5

    .line 187
    const-string v0, "pixellabplus_global_ui"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "theme_index"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 188
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    const-string v2, "\u5168\u5c40\u4e3b\u9898\uff08\u80cc\u666f / \u56fe\u6807 / \u6587\u5b57 / \u7ec4\u4ef6\uff09"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->THEME_NAMES:[Ljava/lang/String;

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$2;

    invoke-direct {v3, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    .line 190
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 195
    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 196
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyDialogTheme(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 197
    return-void
.end method

.method private static spacing(Landroid/view/MotionEvent;)F
    .registers 5

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 162
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    .line 163
    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


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


.method private static styleTree(Landroid/app/Activity;Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;I)V
    .registers 9

    .line 364
    if-nez p1, :cond_3

    return-void

    .line 365
    :cond_3
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->captureStyle(Landroid/view/View;)V
    invoke-static {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->styleWidget(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;)V

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "CustomTextView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 368
    instance-of v1, p1, Landroid/widget/TextView;

    const/16 v2, 0x15

    if-eqz v1, :cond_6e

    if-nez v0, :cond_6e

    .line 369
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 370
    iget v1, p2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->foreground:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_6e

    .line 372
    invoke-static {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->surface(Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 373
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x4

    if-lt v1, v2, :cond_3f

    if-ne p3, v3, :cond_3f

    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElevation(F)V

    .line 374
    :cond_3f
    if-ne p3, v3, :cond_6e

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 376
    const v0, 0x3f7851ec    # 0.97f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xf0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 381
    :cond_6e
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :plus_theme_image_done

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    instance-of v1, p1, Landroid/widget/ImageButton;

    if-eqz v1, :plus_theme_check_image_size

    goto :plus_theme_tint_image

    :plus_theme_check_image_size
    const/16 v1, 0x40

    invoke-static {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-gt v3, v1, :plus_theme_image_done

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-gt v3, v1, :plus_theme_image_done

    :plus_theme_tint_image
    iget v1, p2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :plus_theme_image_done
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_8c

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8c

    invoke-static {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->surface(Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_8c
    instance-of v0, p1, Landroid/view/ViewGroup;
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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_bb

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-nez v0, :cond_ac

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_bb

    :cond_ac
    const/4 v0, 0x2

    if-ne p3, v0, :cond_b2

    const/16 v0, 0x8

    goto :goto_b3

    :cond_b2
    const/4 v0, 0x3

    :goto_b3
    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 389
    :cond_bb
    check-cast p1, Landroid/view/ViewGroup;

    .line 390
    const/4 v0, 0x0

    :goto_be
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_ce

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->styleTree(Landroid/app/Activity;Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    .line 392
    :cond_ce
    return-void
.end method

.method private static surface(Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    .line 437
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface:I

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface2:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 438
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->radius:I

    invoke-static {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    const/4 v2, 0x1
    invoke-static {p1, v2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I
    move-result v2
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->border:I
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method public static visibleLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)F
    .registers 4

    .line 88
    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    if-nez v0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 90
    :cond_b
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 91
    const/4 v2, 0x0

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 92
    :goto_1c
    if-gtz v1, :cond_28

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 93
    :cond_28
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method
