.class public interface abstract Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;
.super Ljava/lang/Object;
.source "LayerObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLayerAction"
.end annotation


# virtual methods
.method public abstract clickedEditButton(Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Landroid/graphics/Rect;)V
.end method

.method public abstract deleteMyView(Landroid/view/View;)V
.end method

.method public abstract dragLayerFinish(Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;)V
.end method
