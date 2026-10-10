.class public Lcom/gun0912/tedpermission/TedPermission;
.super Ljava/lang/Object;
.source "TedPermission.java"


# static fields
.field private static instance:Lcom/gun0912/tedpermission/TedInstance;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/gun0912/tedpermission/TedInstance;

    invoke-direct {v0, p1}, Lcom/gun0912/tedpermission/TedInstance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    return-void
.end method


# virtual methods
.method public check()V
    .locals 2

    .line 128
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iget-object v0, v0, Lcom/gun0912/tedpermission/TedInstance;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You must setPermissionListener() on TedPermission"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iget-object v0, v0, Lcom/gun0912/tedpermission/TedInstance;->permissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/gun0912/tedpermission/util/ObjectUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You must setPermissions() on TedPermission"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    const-string v0, "preMarshmallow"

    .line 136
    invoke-static {v0}, Lcom/gun0912/tedpermission/util/Dlog;->d(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iget-object v0, v0, Lcom/gun0912/tedpermission/TedInstance;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    invoke-interface {v0}, Lcom/gun0912/tedpermission/PermissionListener;->onPermissionGranted()V

    goto :goto_0

    :cond_2
    const-string v0, "Marshmallow"

    .line 140
    invoke-static {v0}, Lcom/gun0912/tedpermission/util/Dlog;->d(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    invoke-virtual {v0}, Lcom/gun0912/tedpermission/TedInstance;->checkPermissions()V

    :goto_0
    return-void
.end method

.method public setDeniedCloseButtonText(I)Lcom/gun0912/tedpermission/TedPermission;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-gtz p1, :cond_0

    .line 116
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for DeniedCloseButtonText"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_0
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    sget-object v1, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iget-object v1, v1, Lcom/gun0912/tedpermission/TedInstance;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/gun0912/tedpermission/TedInstance;->deniedCloseButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setDeniedCloseButtonText(Ljava/lang/String;)Lcom/gun0912/tedpermission/TedPermission;
    .locals 1

    .line 108
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iput-object p1, v0, Lcom/gun0912/tedpermission/TedInstance;->deniedCloseButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setDeniedMessage(I)Lcom/gun0912/tedpermission/TedPermission;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-gtz p1, :cond_0

    .line 70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for DeniedMessage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_0
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    sget-object v1, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iget-object v1, v1, Lcom/gun0912/tedpermission/TedInstance;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/gun0912/tedpermission/TedInstance;->denyMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setDeniedMessage(Ljava/lang/String;)Lcom/gun0912/tedpermission/TedPermission;
    .locals 1

    .line 61
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iput-object p1, v0, Lcom/gun0912/tedpermission/TedInstance;->denyMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setGotoSettingButton(Z)Lcom/gun0912/tedpermission/TedPermission;
    .locals 1

    .line 79
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iput-boolean p1, v0, Lcom/gun0912/tedpermission/TedInstance;->hasSettingBtn:Z

    return-object p0
.end method

.method public setPermissionListener(Lcom/gun0912/tedpermission/PermissionListener;)Lcom/gun0912/tedpermission/TedPermission;
    .locals 1

    .line 29
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iput-object p1, v0, Lcom/gun0912/tedpermission/TedInstance;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    return-object p0
.end method

.method public varargs setPermissions([Ljava/lang/String;)Lcom/gun0912/tedpermission/TedPermission;
    .locals 1

    .line 37
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iput-object p1, v0, Lcom/gun0912/tedpermission/TedInstance;->permissions:[Ljava/lang/String;

    return-object p0
.end method

.method public setRationaleConfirmText(I)Lcom/gun0912/tedpermission/TedPermission;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-gtz p1, :cond_0

    .line 96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for RationaleConfirmText"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_0
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    sget-object v1, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iget-object v1, v1, Lcom/gun0912/tedpermission/TedInstance;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/gun0912/tedpermission/TedInstance;->rationaleConfirmText:Ljava/lang/String;

    return-object p0
.end method

.method public setRationaleConfirmText(Ljava/lang/String;)Lcom/gun0912/tedpermission/TedPermission;
    .locals 1

    .line 88
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iput-object p1, v0, Lcom/gun0912/tedpermission/TedInstance;->rationaleConfirmText:Ljava/lang/String;

    return-object p0
.end method

.method public setRationaleMessage(I)Lcom/gun0912/tedpermission/TedPermission;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-gtz p1, :cond_0

    .line 51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for RationaleMessage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_0
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    sget-object v1, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iget-object v1, v1, Lcom/gun0912/tedpermission/TedInstance;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/gun0912/tedpermission/TedInstance;->rationaleMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setRationaleMessage(Ljava/lang/String;)Lcom/gun0912/tedpermission/TedPermission;
    .locals 1

    .line 43
    sget-object v0, Lcom/gun0912/tedpermission/TedPermission;->instance:Lcom/gun0912/tedpermission/TedInstance;

    iput-object p1, v0, Lcom/gun0912/tedpermission/TedInstance;->rationaleMessage:Ljava/lang/String;

    return-object p0
.end method
