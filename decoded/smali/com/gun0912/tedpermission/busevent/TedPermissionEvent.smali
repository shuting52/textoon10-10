.class public Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;
.super Ljava/lang/Object;
.source "TedPermissionEvent.java"


# instance fields
.field public deniedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public permission:Z


# direct methods
.method public constructor <init>(ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;->permission:Z

    .line 17
    iput-object p2, p0, Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;->deniedPermissions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDeniedPermissions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;->deniedPermissions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasPermission()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/gun0912/tedpermission/busevent/TedPermissionEvent;->permission:Z

    return v0
.end method
