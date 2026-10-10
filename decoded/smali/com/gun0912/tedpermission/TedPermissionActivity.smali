.class public Lcom/gun0912/tedpermission/TedPermissionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TedPermissionActivity.java"


# static fields
.field public static final EXTRA_DENIED_DIALOG_CLOSE_TEXT:Ljava/lang/String; = "denied_dialog_close_text"

.field public static final EXTRA_DENY_MESSAGE:Ljava/lang/String; = "deny_message"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final EXTRA_RATIONALE_CONFIRM_TEXT:Ljava/lang/String; = "rationale_confirm_text"

.field public static final EXTRA_RATIONALE_MESSAGE:Ljava/lang/String; = "rationale_message"

.field public static final EXTRA_SETTING_BUTTON:Ljava/lang/String; = "setting_button"

.field public static final REQ_CODE_PERMISSION_REQUEST:I = 0xa

.field public static final REQ_CODE_REQUEST_SETTING:I = 0x14


# instance fields
.field deniedCloseButtonText:Ljava/lang/String;

.field denyMessage:Ljava/lang/String;

.field hasSettingButton:Z

.field packageName:Ljava/lang/String;

.field permissions:[Ljava/lang/String;

.field rationaleConfirmText:Ljava/lang/String;

.field rationale_message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/gun0912/tedpermission/TedPermissionActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionDenied(Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkPermissions(Z)V
    .locals 7

    const-string v0, ""

    .line 115
    invoke-static {v0}, Lcom/gun0912/tedpermission/util/Dlog;->d(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 124
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    invoke-direct {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionGranted()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 148
    invoke-direct {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionDenied(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 151
    iget-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 153
    invoke-direct {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->showRationaleDialog(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 160
    :cond_6
    invoke-virtual {p0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->requestPermissions(Ljava/util/ArrayList;)V

    :goto_2
    return-void
.end method

.method private permissionDenied(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->getInstance()Lcom/gun0912/tedpermission/busevent/TedBusProvider;

    move-result-object v0

    new-instance v1, Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;-><init>(ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->post(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->finish()V

    .line 110
    invoke-virtual {p0, v2, v2}, Lcom/gun0912/tedpermission/TedPermissionActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private permissionGranted()V
    .locals 4

    .line 102
    invoke-static {}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->getInstance()Lcom/gun0912/tedpermission/busevent/TedBusProvider;

    move-result-object v0

    new-instance v1, Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;-><init>(ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->post(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->finish()V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private setupFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "permissions"

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissions:[Ljava/lang/String;

    const-string v1, "rationale_message"

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/String;

    const-string v1, "deny_message"

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/String;

    const-string v1, "package_name"

    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->packageName:Ljava/lang/String;

    const-string v1, "setting_button"

    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasSettingButton:Z

    const-string v0, "rationale_confirm_text"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleConfirmText:Ljava/lang/String;

    const-string v0, "denied_dialog_close_text"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->deniedCloseButtonText:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "permissions"

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissions:[Ljava/lang/String;

    const-string v1, "rationale_message"

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/String;

    const-string v1, "deny_message"

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/String;

    const-string v1, "package_name"

    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->packageName:Ljava/lang/String;

    const-string v1, "setting_button"

    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasSettingButton:Z

    const-string v0, "rationale_confirm_text"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleConfirmText:Ljava/lang/String;

    const-string v0, "denied_dialog_close_text"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->deniedCloseButtonText:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private showRationaleDialog(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 209
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleConfirmText:Ljava/lang/String;

    new-instance v2, Lcom/gun0912/tedpermission/TedPermissionActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity$1;-><init>(Lcom/gun0912/tedpermission/TedPermissionActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 282
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 279
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->checkPermissions(Z)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 54
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->setupFromSavedInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->checkPermissions(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const-string p1, ""

    .line 178
    invoke-static {p1}, Lcom/gun0912/tedpermission/util/Dlog;->d(Ljava/lang/String;)V

    .line 179
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 182
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 183
    aget-object v1, p2, v0

    .line 184
    aget v2, p3, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 187
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionGranted()V

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->showPermissionDenyDialog(Ljava/util/ArrayList;)V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "permissions"

    .line 89
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissions:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "rationale_message"

    .line 90
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationale_message:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "deny_message"

    .line 91
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package_name"

    .line 92
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "setting_button"

    .line 93
    iget-boolean v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasSettingButton:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "setting_button"

    .line 94
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->deniedCloseButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rationale_confirm_text"

    .line 95
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->rationaleConfirmText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public requestPermissions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public showPermissionDenyDialog(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->permissionDenied(Ljava/util/ArrayList;)V

    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->denyMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->deniedCloseButtonText:Ljava/lang/String;

    new-instance v3, Lcom/gun0912/tedpermission/TedPermissionActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity$2;-><init>(Lcom/gun0912/tedpermission/TedPermissionActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 247
    iget-boolean p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity;->hasSettingButton:Z

    if-eqz p1, :cond_1

    .line 249
    sget p1, Lcom/gun0912/tedpermission/R$string;->tedpermission_setting:I

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/gun0912/tedpermission/TedPermissionActivity$3;

    invoke-direct {v1, p0}, Lcom/gun0912/tedpermission/TedPermissionActivity$3;-><init>(Lcom/gun0912/tedpermission/TedPermissionActivity;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 270
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method
