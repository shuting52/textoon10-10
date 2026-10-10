.class public Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;
.super Landroid/app/AlertDialog;
.source "textEditorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;
    }
.end annotation


# instance fields
.field editArea:Landroid/widget/EditText;

.field private final onTextChangedL:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;

.field up:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->up:Z

    .line 27
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->onTextChangedL:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;

    .line 28
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0a0067

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->setView(Landroid/view/View;)V

    const p3, 0x7f0801ea

    .line 32
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    .line 33
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    const/16 v0, 0xf

    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 34
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$1;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p2, 0x7f080005

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f080003

    .line 44
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 45
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$2;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080004

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    const v0, 0x7f080006

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 56
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$4;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$5;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;)V

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 87
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 90
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;)Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 21
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->onTextChangedL:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;

    return-object p0

    const/4 v0, 0x0
.end method


# virtual methods
.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x2

    .line 96
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x2

    .line 102
    const/4 v1, 0x3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void

    const/4 v1, 0x1
.end method
