.class public interface abstract Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;
.super Ljava/lang/Object;
.source "TextComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSelectEventListener"
.end annotation


# virtual methods
.method public abstract onEvent_SelectText(I)V
.end method

.method public abstract onEvent_TextGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract onEvent_doubleTapText()V
.end method
