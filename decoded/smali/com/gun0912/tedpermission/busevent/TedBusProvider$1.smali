.class Lcom/gun0912/tedpermission/busevent/TedBusProvider$1;
.super Ljava/lang/Object;
.source "TedBusProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gun0912/tedpermission/busevent/TedBusProvider;->post(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gun0912/tedpermission/busevent/TedBusProvider;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/gun0912/tedpermission/busevent/TedBusProvider;Ljava/lang/Object;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gun0912/tedpermission/busevent/TedBusProvider$1;->this$0:Lcom/gun0912/tedpermission/busevent/TedBusProvider;

    iput-object p2, p0, Lcom/gun0912/tedpermission/busevent/TedBusProvider$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    invoke-static {}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->getInstance()Lcom/gun0912/tedpermission/busevent/TedBusProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/gun0912/tedpermission/busevent/TedBusProvider$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->post(Ljava/lang/Object;)V

    return-void
.end method
