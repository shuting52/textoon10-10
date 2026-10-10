.class public Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;
.super Landroid/app/AlertDialog;
.source "projectsBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;,
        Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;,
        Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;,
        Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;,
        Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;
    }
.end annotation


# static fields
.field static final SORT_DATE_ASC:I = 0x1

.field static final SORT_DATE_DESC:I = 0x0

.field static final SORT_NAME_ASC:I = 0x3

.field static final SORT_NAME_DESC:I = 0x2


# instance fields
.field adapter:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

.field currentSort:I

.field holder:Landroid/widget/ListView;

.field private final pickPLP:Z

.field projectEvent:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/support/v4/app/FragmentManager;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->currentSort:I

    .line 57
    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->projectEvent:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    .line 58
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->pickPLP:Z

    return-void
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 40
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->showPLPPicker()V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;Ljava/io/File;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->openPLP(Ljava/io/File;Z)V

    return-void

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

    const/4 v5, 0x3

    .line 61
    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v5, 0x2

    .line 64
    const/4 v5, 0x3

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v2, v1, :cond_1

    const/4 v5, 0x1

    aget-object v3, p1, v2

    .line 65
    const/4 v5, 0x2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x3

    .line 66
    const/4 v5, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v5, 0x2

    :cond_1
    const/4 v5, 0x3

    return-object v0

    const/4 v1, 0x1
.end method

.method private openPLP(Ljava/io/File;Z)V
    .locals 4

    const/4 v3, 0x1

    .line 217
    const/4 v3, 0x2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    const/4 v3, 0x3

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

    .line 219
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 217
    const/4 v3, 0x1

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->returnAvailableFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 220
    const/4 v3, 0x2

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->unzipFile(Ljava/io/File;Ljava/io/File;)Z

    .line 221
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->projectEvent:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;->loadProject(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v3, 0x0

    .line 222
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->projectEvent:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;->removeProject(Ljava/lang/String;)V

    .line 223
    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->dismiss()V

    return-void

    const/4 v1, 0x3
.end method

.method private showPLPPicker()V
    .locals 12

    const/4 v11, 0x1

    .line 187
    const/4 v11, 0x2

    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->FILE_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0c0105

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "plp"

    const/4 v4, 0x0

    aput-object v0, v6, v4

    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;

    invoke-direct {v9, p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    const/4 v4, 0x0

    const v7, 0x7f070126

    const v8, 0x7f070101

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;)V

    .line 214
    const/4 v11, 0x3

    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->show()V

    return-void

    const/4 v1, 0x3
.end method

.method private updateUserPresets(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;)V
    .locals 5

    const/4 v4, 0x1

    .line 176
    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->clear()V

    .line 177
    const/4 v4, 0x3

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

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getDirLists(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 178
    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 179
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    new-instance v2, Ljava/io/File;

    const-string v3, "deleted"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x2

    new-instance v2, Ljava/io/File;

    const-string v3, "data.plab"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x3

    .line 180
    const/4 v4, 0x0

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    invoke-direct {v2, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;Ljava/io/File;)V

    invoke-virtual {p1, v2}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    const/4 v4, 0x1

    .line 183
    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$1;)V

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->sort(Ljava/util/Comparator;)V

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    .line 79
    const/4 v3, 0x2

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 81
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 85
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v2, 0x7f0a0055

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    .line 86
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->setContentView(Landroid/view/View;)V

    .line 87
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    const v2, 0x7f080008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->holder:Landroid/widget/ListView;

    .line 88
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->holder:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 89
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->holder:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 90
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    const v0, 0x7f080143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    const v0, 0x7f080145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const/4 v3, 0x1

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    invoke-direct {p1, p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    .line 148
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->updateUserPresets(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;)V

    .line 149
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->holder:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    const v0, 0x7f080144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$4;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const/4 v3, 0x1

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->pickPLP:Z

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    .line 159
    const/4 v3, 0x3

    :try_start_0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->showPLPPicker()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v3, 0x0

    :catch_0
    move-exception p1

    .line 161
    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method
