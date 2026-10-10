.class public Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;
.super Landroid/app/AlertDialog;
.source "stylesBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;
    }
.end annotation


# instance fields
.field customHolder:Landroid/view/View;

.field customSpace:Landroid/support/v7/widget/GridLayout;

.field defaultHolder:Landroid/view/View;

.field defaultSpace:Landroid/support/v7/widget/GridLayout;

.field loadCustom:Landroid/widget/Button;

.field loadDefault:Landroid/widget/Button;

.field loadedCustom:Z

.field loadedDefault:Z

.field param:Landroid/widget/FrameLayout$LayoutParams;

.field styleEvent:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;

.field v:Landroid/view/View;

.field warningText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedCustom:Z

    .line 58
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedDefault:Z

    .line 69
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->styleEvent:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustomStyles()V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;)V
    .locals 1

    const/4 v0, 0x3

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefaultStyles()V

    return-void

    const/4 v0, 0x0
.end method

.method private getDirLists(Ljava/io/File;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x2

    .line 72
    const/4 v4, 0x3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 75
    const/4 v4, 0x2

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 76
    const/4 v4, 0x3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v1, v0, :cond_1

    const/4 v4, 0x1

    aget-object v2, p1, v1

    .line 77
    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    .line 78
    const/4 v4, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    return-object p2

    const/4 v0, 0x0
.end method

.method private loadCustomStyles()V
    .locals 13

    .line 172
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefault:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 173
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustom:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 174
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedCustom:Z

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/pixelLab/textstyles"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->getDirLists(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-ltz v4, :cond_1

    .line 181
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 182
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/File;

    const-string v7, "deleted"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/File;

    const-string v7, "data.plab"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v7, 0x64

    invoke-static {v7}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v9

    const/16 v7, 0x28

    invoke-static {v7}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v10

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v11

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;-><init>(Landroid/content/Context;IIIZ)V

    .line 184
    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->ForStyle()V

    .line 185
    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customSpace:Landroid/support/v7/widget/GridLayout;

    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->param:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7, v6, v8}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v7, Ljava/io/File;

    const-string v8, "thumb"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 187
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 188
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$5;

    invoke-direct {v8, p0, v5}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;Ljava/io/File;)V

    invoke-virtual {v6, v7, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->setContent(Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    invoke-direct {v7, p0, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;Ljava/io/File;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-virtual {v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->setDeleteAction(Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 221
    :cond_1
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedCustom:Z

    .line 222
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customSpace:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 223
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    const/4 v1, 0x1
.end method

.method private loadDefaultStyles()V
    .locals 15

    .line 128
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefault:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 129
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustom:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 130
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedDefault:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 135
    new-array v4, v2, [Ljava/lang/String;

    :try_start_0
    const-string v5, "textstyles"

    .line 137
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    .line 139
    invoke-static {v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 141
    :goto_0
    array-length v5, v4

    if-lez v5, :cond_0

    .line 142
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 143
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 144
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v8, 0x64

    invoke-static {v8}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v10

    const/16 v8, 0x28

    invoke-static {v8}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v11

    const/4 v8, 0x6

    invoke-static {v8}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v12

    const/4 v13, 0x0

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;-><init>(Landroid/content/Context;IIIZ)V

    .line 145
    invoke-virtual {v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->ForStyle()V

    .line 146
    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultSpace:Landroid/support/v7/widget/GridLayout;

    iget-object v9, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->param:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8, v14, v9}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "textstyles/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/thumb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 150
    :try_start_1
    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    .line 152
    invoke-static {v8}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v8, v9

    .line 154
    :goto_2
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$4;

    invoke-direct {v9, p0, v7}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;Ljava/lang/String;)V

    invoke-virtual {v14, v8, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->setContent(Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 164
    :cond_0
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedDefault:Z

    .line 165
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultSpace:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x3

    .line 87
    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 89
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 93
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a0069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    .line 94
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->setContentView(Landroid/view/View;)V

    .line 95
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f080117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/GridLayout;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultSpace:Landroid/support/v7/widget/GridLayout;

    .line 96
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f080116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/GridLayout;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customSpace:Landroid/support/v7/widget/GridLayout;

    .line 97
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0800b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    .line 98
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0800ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    .line 99
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0801ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    .line 100
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0801c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const/4 v4, 0x0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->param:Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->param:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->param:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->param:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->param:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 110
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0801c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustom:Landroid/widget/Button;

    .line 111
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0801c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefault:Landroid/widget/Button;

    .line 112
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustom:Landroid/widget/Button;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$2;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefault:Landroid/widget/Button;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$3;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefaultStyles()V

    return-void

    const/4 v0, 0x0
.end method
