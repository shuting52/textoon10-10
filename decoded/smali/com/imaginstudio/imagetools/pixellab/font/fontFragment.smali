.class public Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;
.super Landroid/support/v4/app/Fragment;
.source "fontFragment.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;
.implements Ljava/io/Serializable;


# static fields
.field public static final transient ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final transient LAST_USED_FONT:Ljava/lang/String; = "last_fonts"

.field public static final transient LAST_USED_USER_FONT:Ljava/lang/String; = "last_userFonts"

.field public static final transient SECTION_FONTS:I = 0x0

.field public static final transient SECTION_RECENT:I = 0x2

.field public static final transient SECTION_USER_FONTS:I = 0x1

.field public static final transient USER_FONT_DIRS:Ljava/lang/String; = "userFontDirs"


# instance fields
.field private transient addFontsButton:Landroid/view/View;

.field private transient changeDirsButton:Landroid/view/View;

.field private transient clearSearch:Landroid/view/View;

.field private transient fontListInvalidated:Z

.field transient listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

.field transient listView:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

.field private transient referenceToText:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

.field transient rootView:Landroid/view/View;

.field private transient searchBar:Landroid/widget/EditText;

.field transient warningFonts:Landroid/widget/TextView;

.field transient warningUserFonts:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->copyFontsToStorage(Ljava/util/ArrayList;)V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)Landroid/widget/EditText;
    .locals 1

    const/4 v0, 0x2

    .line 61
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->searchBar:Landroid/widget/EditText;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 61
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->clearSearch:Landroid/view/View;

    return-object p0

    const/4 v0, 0x0
.end method

.method private copyFontsToStorage(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    .line 209
    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/fonts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    const/4 v4, 0x3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 211
    const/4 v4, 0x1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v4, 0x2

    :try_start_0
    invoke-static {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v4, 0x3

    :catch_0
    move-exception v1

    .line 215
    const/4 v4, 0x0

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    const/4 v4, 0x1

    .line 218
    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->reloadFonts()V

    return-void

    const/4 v0, 0x0
.end method

.method public static hideKeyboardFrom(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "input_method"

    .line 222
    const/4 v1, 0x2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 223
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    const/4 v1, 0x1
.end method

.method public static newInstance(ILcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;
    .locals 3

    const/4 v2, 0x1

    .line 84
    const/4 v2, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;-><init>()V

    .line 85
    const/4 v2, 0x3

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->setReferenceToText(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    .line 86
    const/4 v2, 0x0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "section_number"

    .line 87
    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const/4 v2, 0x2

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const/4 v0, 0x2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 99
    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x3

    .line 111
    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p3, 0x0

    const v0, 0x7f0a0032

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    .line 114
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0800e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listView:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    .line 116
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0801f4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->warningUserFonts:Landroid/widget/TextView;

    .line 117
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0801f3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->warningFonts:Landroid/widget/TextView;

    .line 118
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f080187

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->searchBar:Landroid/widget/EditText;

    .line 119
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f08007e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->changeDirsButton:Landroid/view/View;

    .line 120
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f080045

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->addFontsButton:Landroid/view/View;

    .line 121
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->addFontsButton:Landroid/view/View;

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->changeDirsButton:Landroid/view/View;

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f080081

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->clearSearch:Landroid/view/View;

    .line 165
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->clearSearch:Landroid/view/View;

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$3;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->searchBar:Landroid/widget/EditText;

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$4;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0800a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "section_number"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v1, 0x2

    const/4 p2, 0x0

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/16 p2, 0x8

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const/4 v1, 0x2

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$5;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)V

    invoke-direct {p1, p2, p3, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    .line 202
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listView:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    return-object p1

    const/4 v1, 0x1
.end method

.method public onFontClicked(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    .line 281
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->referenceToText:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setFontToSelected(Ljava/lang/String;)V

    return-void

    const/4 v1, 0x1
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x1

    .line 265
    const/4 v1, 0x2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const/4 v0, 0x1

    .line 266
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->fontListInvalidated:Z

    return-void

    const/4 v1, 0x1
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    .line 270
    const/4 v2, 0x2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 271
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "section_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->fontListInvalidated:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 272
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->reloadFonts()V

    const/4 v0, 0x0

    .line 273
    const/4 v2, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->fontListInvalidated:Z

    :cond_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 227
    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 228
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->reloadFonts()V

    return-void

    const/4 v0, 0x0
.end method

.method reloadFonts()V
    .locals 6

    const/4 v5, 0x0

    .line 232
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->clear()V

    .line 233
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "section_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    const/4 v5, 0x3

    .line 259
    const/4 v5, 0x0

    :pswitch_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->generateContentFor(I)V

    goto/16 :goto_3

    const/4 v5, 0x1

    .line 235
    const/4 v5, 0x2

    :pswitch_1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->generateContentFor(I)V

    .line 237
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    const/4 v5, 0x2

    .line 247
    const/4 v5, 0x3

    :cond_0
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->warningUserFonts:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    const/4 v5, 0x1

    .line 238
    const/4 v5, 0x2

    :cond_1
    const/4 v5, 0x3

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getDirsImportFonts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 239
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->warningUserFonts:Landroid/widget/TextView;

    const v3, 0x7f0c0182

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 240
    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    const/4 v5, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->warningUserFonts:Landroid/widget/TextView;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 242
    const/4 v5, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->warningUserFonts:Landroid/widget/TextView;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 243
    const/4 v5, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->warningUserFonts:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    const/4 v5, 0x0

    .line 245
    const/4 v5, 0x1

    :cond_2
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->warningUserFonts:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    const/4 v5, 0x3

    .line 251
    const/4 v5, 0x0

    :pswitch_2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->generateContentFor(I)V

    .line 252
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    if-nez v0, :cond_3

    const/4 v5, 0x3

    goto :goto_2

    const/4 v5, 0x0

    .line 255
    const/4 v5, 0x1

    :cond_3
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->warningFonts:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    const/4 v5, 0x3

    .line 253
    const/4 v5, 0x0

    :cond_4
    const/4 v5, 0x1

    :goto_2
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->warningFonts:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const/4 v5, 0x3

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v1, 0x1
.end method

.method public setReferenceToText(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 1

    const/4 v0, 0x1

    .line 285
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->referenceToText:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    return-void

    const/4 v0, 0x0
.end method
