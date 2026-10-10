.class public Lcom/gun0912/tedpermission/TedInstance;
.super Ljava/lang/Object;
.source "TedInstance.java"


# instance fields
.field context:Landroid/content/Context;

.field public deniedCloseButtonText:Ljava/lang/String;

.field public denyMessage:Ljava/lang/String;

.field public hasSettingBtn:Z

.field public listener:Lcom/gun0912/tedpermission/PermissionListener;

.field public permissions:[Ljava/lang/String;

.field public rationaleConfirmText:Ljava/lang/String;

.field public rationaleMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/gun0912/tedpermission/TedInstance;->hasSettingBtn:Z

    .line 29
    iput-object p1, p0, Lcom/gun0912/tedpermission/TedInstance;->context:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->getInstance()Lcom/gun0912/tedpermission/busevent/TedBusProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->register(Ljava/lang/Object;)V

    .line 33
    sget v0, Lcom/gun0912/tedpermission/R$string;->tedpermission_close:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gun0912/tedpermission/TedInstance;->deniedCloseButtonText:Ljava/lang/String;

    .line 34
    sget v0, Lcom/gun0912/tedpermission/R$string;->tedpermission_confirm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gun0912/tedpermission/TedInstance;->rationaleConfirmText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkPermissions()V
    .locals 3

    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gun0912/tedpermission/TedInstance;->context:Landroid/content/Context;

    const-class v2, Lcom/gun0912/tedpermission/TedPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "permissions"

    .line 42
    iget-object v2, p0, Lcom/gun0912/tedpermission/TedInstance;->permissions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rationale_message"

    .line 44
    iget-object v2, p0, Lcom/gun0912/tedpermission/TedInstance;->rationaleMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "deny_message"

    .line 45
    iget-object v2, p0, Lcom/gun0912/tedpermission/TedInstance;->denyMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    .line 46
    iget-object v2, p0, Lcom/gun0912/tedpermission/TedInstance;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "setting_button"

    .line 47
    iget-boolean v2, p0, Lcom/gun0912/tedpermission/TedInstance;->hasSettingBtn:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "denied_dialog_close_text"

    .line 48
    iget-object v2, p0, Lcom/gun0912/tedpermission/TedInstance;->deniedCloseButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rationale_confirm_text"

    .line 49
    iget-object v2, p0, Lcom/gun0912/tedpermission/TedInstance;->rationaleConfirmText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/gun0912/tedpermission/TedInstance;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onPermissionResult(Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, ""

    .line 61
    invoke-static {v0}, Lcom/gun0912/tedpermission/util/Dlog;->d(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/gun0912/tedpermission/TedInstance;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    invoke-interface {p1}, Lcom/gun0912/tedpermission/PermissionListener;->onPermissionGranted()V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/gun0912/tedpermission/TedInstance;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    invoke-virtual {p1}, Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;->getDeniedPermissions()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gun0912/tedpermission/PermissionListener;->onPermissionDenied(Ljava/util/ArrayList;)V

    .line 67
    :goto_0
    invoke-static {}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->getInstance()Lcom/gun0912/tedpermission/busevent/TedBusProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->unregister(Ljava/lang/Object;)V

    return-void
.end method
