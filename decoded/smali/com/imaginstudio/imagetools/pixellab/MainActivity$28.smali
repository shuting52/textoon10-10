.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$28;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    .line 1262
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$28;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadStyle(Ljava/lang/String;Z)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1265
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$28;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->applyStyle(Ljava/lang/String;Z)V

    return-void

    const/4 v1, 0x1
.end method

.method public removeStyle(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    .line 1270
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$28;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->removePreset(Ljava/lang/String;)V

    return-void

    const/4 v1, 0x1
.end method
