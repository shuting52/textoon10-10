.class Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;
.super Ljava/lang/Object;
.source "ThemesTab.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->updateAssetPresets(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

.field final synthetic val$assetManager:Landroid/content/res/AssetManager;

.field final synthetic val$holder:Landroid/widget/LinearLayout;

.field final synthetic val$layoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;Landroid/content/res/AssetManager;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->val$assetManager:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->val$holder:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->val$layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 9

    const-string v8, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 84
    const/4 v8, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->val$assetManager:Landroid/content/res/AssetManager;

    const-string v1, "presets"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 86
    const/4 v8, 0x3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v8, 0x0

    if-ge v2, v1, :cond_0

    const/4 v8, 0x1

    aget-object v3, v0, v2

    .line 87
    const/4 v8, 0x2

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    const/4 v8, 0x3

    :try_start_1
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->val$assetManager:Landroid/content/res/AssetManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "presets/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/thumb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    const/4 v8, 0x0

    :try_start_2
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;

    invoke-direct {v6, p0, v4, v5, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v8, 0x1

    :catch_1
    :cond_0
    const/4 v8, 0x2

    return-void

    const/4 v0, 0x0
.end method
