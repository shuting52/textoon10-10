.class public interface abstract Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
.super Ljava/lang/Object;
.source "textContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/textContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSelectionChangedListener"
.end annotation


# virtual methods
.method public abstract objectTouch()V
.end method

.method public abstract onObjectZChanged(Ljava/lang/String;I)V
.end method

.method public abstract onShapeCreate(Ljava/lang/String;)V
.end method

.method public abstract onShapeDelete(Landroid/os/Bundle;ILjava/lang/String;)V
.end method

.method public abstract onShapeGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract onShapeSelectionChanged(ZI)V
.end method

.method public abstract onTextCreate(Ljava/lang/String;)V
.end method

.method public abstract onTextDelete(Landroid/os/Bundle;ILjava/lang/String;)V
.end method

.method public abstract onTextDoubleTap()V
.end method

.method public abstract onTextGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract onTextSelectionChanged(Z)V
.end method
