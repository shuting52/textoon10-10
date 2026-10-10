.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->DoBgImagesJob(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$assetManager:Landroid/content/res/AssetManager;

.field final synthetic val$presetsHolder:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/content/res/AssetManager;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$assetManager:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$presetsHolder:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 15

    const/4 v0, 0x0

    .line 240
    new-array v1, v0, [Ljava/lang/String;

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$assetManager:Landroid/content/res/AssetManager;

    const-string v3, "bg"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 246
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 248
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 249
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    .line 250
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bg/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    new-array v5, v0, [Ljava/lang/String;

    .line 254
    :try_start_1
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v6, v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v6, v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v6, v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 255
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    goto :goto_2

    :catch_1
    move-exception v6

    .line 258
    invoke-static {v6}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 264
    :cond_1
    :goto_2
    array-length v6, v5

    const/4 v7, 0x0

    move-object v10, v7

    move-object v11, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    const/4 v12, 0x1

    if-ge v8, v6, :cond_4

    aget-object v13, v5, v8

    .line 265
    iget-object v14, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v14, :cond_3

    iget-object v14, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v14, :cond_3

    iget-object v14, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_3

    const-string v14, "thumb"

    .line 266
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 268
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    const/4 v9, 0x1

    goto :goto_4

    .line 272
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    if-nez v9, :cond_6

    .line 277
    array-length v6, v5

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_6

    aget-object v13, v5, v8

    .line 278
    iget-object v14, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v14, :cond_5

    iget-object v14, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v14, :cond_5

    iget-object v14, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_5

    const-string v14, "1"

    .line 279
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 281
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x1

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    if-eqz v9, :cond_8

    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    .line 287
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v4, v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 288
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;-><init>(Landroid/content/Context;)V

    .line 290
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;

    invoke-direct {v5, p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-static {v5}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    .line 300
    :try_start_2
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 301
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v5, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v5

    goto :goto_6

    .line 304
    :catch_2
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$2;

    invoke-direct {v5, p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-static {v5}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    .line 314
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 315
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 319
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;

    invoke-direct {v5, p0, v4, v7, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 349
    :cond_9
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$4;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;)V

    invoke-static {v0}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    return-void

    const/4 v1, 0x3
.end method
