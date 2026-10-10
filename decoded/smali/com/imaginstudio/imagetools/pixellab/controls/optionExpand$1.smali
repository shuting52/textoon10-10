.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->DoStickersJob(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$assetManager:Landroid/content/res/AssetManager;

.field final synthetic val$pathSuffix:Ljava/lang/String;

.field final synthetic val$presetsHolder:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

.field final synthetic val$stickerType:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ILandroid/content/res/AssetManager;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$assetManager:Landroid/content/res/AssetManager;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$pathSuffix:Ljava/lang/String;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$presetsHolder:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 19

    move-object/from16 v8, p0

    const/4 v9, 0x0

    .line 124
    new-array v1, v9, [Ljava/lang/String;

    .line 126
    :try_start_0
    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v2, :cond_0

    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v3, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v2, v3, :cond_0

    .line 127
    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$assetManager:Landroid/content/res/AssetManager;

    iget-object v3, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$pathSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 130
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    move-object v10, v1

    .line 132
    iget-object v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v1, :cond_8

    iget-object v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v1, v2, :cond_8

    .line 133
    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_8

    aget-object v1, v10, v12

    .line 134
    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v2, :cond_7

    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v3, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v2, v3, :cond_7

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$pathSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    new-array v1, v9, [Ljava/lang/String;

    .line 138
    :try_start_1
    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v2, :cond_1

    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v3, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v2, v3, :cond_1

    .line 139
    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 142
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    const-string v2, ""

    .line 146
    array-length v3, v1

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_3
    const/4 v7, 0x1

    if-ge v2, v3, :cond_3

    aget-object v13, v1, v2

    .line 147
    iget-object v14, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v14, :cond_2

    iget-object v14, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v14, :cond_2

    iget-object v14, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_2

    iget v14, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v15, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v15, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v14, v15, :cond_2

    if-nez v4, :cond_2

    const-string v14, "thumb"

    .line 148
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    if-nez v4, :cond_5

    .line 155
    array-length v2, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    aget-object v13, v1, v3

    .line 156
    iget-object v14, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v14, :cond_4

    iget-object v14, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v14, :cond_4

    iget-object v14, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v14, v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_4

    iget v14, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v15, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v15, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v14, v15, :cond_4

    if-nez v4, :cond_4

    const-string v14, "1"

    .line 157
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_7

    .line 165
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 166
    iget-object v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v1, :cond_7

    iget-object v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 167
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iget-object v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v15

    iget-object v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v16

    iget-object v1, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v17

    const/16 v18, 0x1

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;-><init>(Landroid/content/Context;IIIZ)V

    .line 168
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$1;

    invoke-direct {v1, v8, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    const/4 v1, 0x0

    .line 179
    :try_start_2
    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v2, :cond_6

    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6

    iget v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v4, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v4, v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v2, v4, :cond_6

    .line 180
    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    goto :goto_5

    .line 183
    :catch_2
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$2;

    invoke-direct {v2, v8, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-static {v2}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    :cond_6
    :goto_5
    move-object v4, v1

    if-eqz v4, :cond_7

    .line 193
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v6, v1

    .line 194
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v7, v1

    .line 197
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    move-object v1, v13

    move-object v2, v8

    invoke-direct/range {v1 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Landroid/graphics/Bitmap;Ljava/lang/String;FF)V

    invoke-static {v13}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 219
    :cond_8
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;

    invoke-direct {v1, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    return-void

    const/4 v1, 0x3
.end method
