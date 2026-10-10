.class public Lcom/imaginstudio/imagetools/pixellab/ContactDialog;
.super Landroid/app/AlertDialog;
.source "ContactDialog.java"


# instance fields
.field private editArea:Landroid/widget/EditText;

.field info:Ljava/lang/String;

.field type:Landroid/widget/Spinner;

.field v:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 28
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 24
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->info:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->info:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0a0025

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->setView(Landroid/view/View;)V

    const p2, 0x7f080091

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/ContactDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08008f

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$2;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/ContactDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080092

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->type:Landroid/widget/Spinner;

    const/4 p2, 0x3

    .line 51
    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c00ce

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p2, v2

    .line 54
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 56
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->type:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const p2, 0x7f080090

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->editArea:Landroid/widget/EditText;

    .line 58
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->editArea:Landroid/widget/EditText;

    const/16 p2, 0xf

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 59
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->editArea:Landroid/widget/EditText;

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$3;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/ContactDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 67
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 68
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {p1, p2, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/ContactDialog;)Ljava/lang/String;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 23
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/ContactDialog;)V
    .locals 1

    const/4 v0, 0x3

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->sendMessage()V

    return-void

    const/4 v0, 0x0
.end method

.method private composeEmail([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x2

    .line 114
    const/4 v2, 0x3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    .line 115
    const/4 v2, 0x0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.SUBJECT"

    .line 117
    const/4 v2, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 118
    const/4 v2, 0x3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feedback ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") : \n-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n\n\nDevice info (don\'t remove) : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->info:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 120
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    const/4 v2, 0x3

    .line 123
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0c00fd

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method private getMessage()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    .line 89
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const-string v0, ""

    :goto_0
    const/4 v1, 0x1

    return-object v0

    const/4 v1, 0x1
.end method

.method private sendMessage()V
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    const/4 v4, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "imaginstudio.apps@gmail.com"

    aput-object v2, v0, v1

    const-string v2, "Feedback For PixelLab 1.9"

    invoke-direct {p0, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->composeEmail([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v4, 0x1

    .line 110
    const/4 v4, 0x2

    :catch_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-string v0, "message"

    .line 93
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->type:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    const/4 v2, 0x3

    :pswitch_0
    const-string v0, "question"

    goto :goto_0

    const/4 v2, 0x0

    :pswitch_1
    const-string v0, "idea"

    goto :goto_0

    const/4 v2, 0x1

    :pswitch_2
    const-string v0, "bug"

    :goto_0
    const/4 v2, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    .line 82
    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 84
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void

    const/4 v1, 0x1
.end method
