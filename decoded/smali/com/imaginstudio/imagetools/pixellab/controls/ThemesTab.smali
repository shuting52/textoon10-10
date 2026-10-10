.class public Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;
.super Landroid/support/v4/app/Fragment;
.source "ThemesTab.java"


# instance fields
.field private callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field cancelled:Z

.field private layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->cancelled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 37
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    return-object p0

    const/4 v0, 0x0
.end method

.method private getDirIsEmpty(Ljava/io/File;)Z
    .locals 5

    const/4 v4, 0x3

    .line 128
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 129
    const/4 v4, 0x2

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v4, 0x3

    .line 130
    const/4 v4, 0x0

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    const/4 v4, 0x2

    aget-object v3, p1, v2

    .line 131
    const/4 v4, 0x3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    return v1

    :cond_0
    const/4 v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    const/4 p1, 0x1

    return p1

    const/4 v0, 0x0
.end method

.method private getDirLists(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    .line 116
    const/4 v5, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const/4 v5, 0x3

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    .line 119
    const/4 v5, 0x1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v2, v1, :cond_1

    const/4 v5, 0x3

    aget-object v3, p1, v2

    .line 120
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    .line 121
    const/4 v5, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v5, 0x0

    :cond_1
    const/4 v5, 0x1

    return-object v0

    const/4 v1, 0x1
.end method

.method private getPresetsIsEmpty(Ljava/io/File;)Z
    .locals 7

    const/4 v6, 0x3

    .line 139
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v6, 0x1

    .line 140
    const/4 v6, 0x2

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v6, 0x3

    .line 141
    const/4 v6, 0x0

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v2, v0, :cond_1

    const/4 v6, 0x2

    aget-object v3, p1, v2

    .line 142
    const/4 v6, 0x3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    new-instance v4, Ljava/io/File;

    const-string v5, "deleted"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v6, 0x1

    new-instance v4, Ljava/io/File;

    const-string v5, "data.plab"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v6, 0x2

    return v1

    :cond_0
    const/4 v6, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v6, 0x0

    :cond_1
    const/4 v6, 0x1

    const/4 p1, 0x1

    return p1

    const/4 v0, 0x2
.end method

.method private updateAssetPresets(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 3

    const/4 v2, 0x3

    .line 78
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 79
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 80
    const/4 v2, 0x2

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;Landroid/content/res/AssetManager;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x0

    .line 49
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 51
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    .line 161
    const/4 v2, 0x1

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    .line 162
    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 161
    const/4 v2, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    .line 164
    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void

    const/4 v0, 0x2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x2

    const/4 p3, 0x0

    .line 58
    const/4 v1, 0x3

    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->cancelled:Z

    const v0, 0x7f0a0036

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    .line 60
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    const p2, 0x7f080075

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    .line 61
    const/4 v1, 0x2

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;

    invoke-direct {p2, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setActionEvent(Landroid/view/View$OnClickListener;)V

    .line 67
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    const p2, 0x7f080054

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 68
    const/4 v1, 0x0

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    const/4 v1, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, 0x5

    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->dpToPixels(I)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 70
    const/4 v1, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->dpToPixels(I)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 71
    const/4 v1, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->dpToPixels(I)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 72
    const/4 v1, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->dpToPixels(I)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 73
    const/4 v1, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->updateAssetPresets(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 74
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->updateCustomProjectsVisibility()V

    .line 75
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    return-object p1

    const/4 v1, 0x1
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x1

    .line 152
    const/4 v1, 0x2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 153
    const/4 v1, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    const/4 v0, 0x1

    .line 154
    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->cancelled:Z

    return-void

    const/4 v1, 0x1
.end method

.method public onDetach()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 170
    const/4 v1, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    .line 171
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void

    const/4 v1, 0x1
.end method

.method public updateCustomProjectsVisibility()V
    .locals 4

    const/4 v3, 0x2

    .line 175
    const/4 v3, 0x3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/pixelLab/presets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->getPresetsIsEmpty(Ljava/io/File;)Z

    move-result v0

    const v1, 0x7f08015e

    const v2, 0x7f080075

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 179
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    const/4 v3, 0x0

    .line 182
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v3, 0x0

    :catch_0
    move-exception v0

    .line 186
    const/4 v3, 0x1

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method
