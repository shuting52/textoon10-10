.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$4;
.super Ljava/lang/Object;
.source "projectsBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 154
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->access$100(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    return-void

    const/4 v0, 0x0
.end method
