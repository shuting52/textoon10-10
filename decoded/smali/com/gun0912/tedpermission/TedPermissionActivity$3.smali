.class Lcom/gun0912/tedpermission/TedPermissionActivity$3;
.super Ljava/lang/Object;
.source "TedPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gun0912/tedpermission/TedPermissionActivity;->showPermissionDenyDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;


# direct methods
.method constructor <init>(Lcom/gun0912/tedpermission/TedPermissionActivity;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$3;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/16 p1, 0x14

    .line 254
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$3;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    iget-object v1, v1, Lcom/gun0912/tedpermission/TedPermissionActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    .line 256
    iget-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$3;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    invoke-virtual {v0, p2, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 258
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 259
    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gun0912/tedpermission/util/Dlog;->e(Ljava/lang/String;)V

    .line 260
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$3;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    invoke-virtual {v0, p2, p1}, Lcom/gun0912/tedpermission/TedPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
