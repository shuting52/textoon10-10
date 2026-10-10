.class public abstract Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
.super Landroid/view/View;
.source "AbstractComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;,
        Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;
    }
.end annotation


# static fields
.field static final snapNear:[I


# instance fields
.field protected resizeListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

.field protected rotationListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->snapNear:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb4
        -0xb4
        -0x5a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract OnCustomTouchEvent(Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;)Z
.end method

.method public clearListeners()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 31
    const/4 v1, 0x1

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->resizeListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

    .line 32
    const/4 v1, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->rotationListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    return-void

    const/4 v1, 0x1
.end method

.method public setResizeListener(Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->resizeListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

    return-void

    const/4 v0, 0x0
.end method

.method public setRotationListener(Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;)V
    .locals 1

    const/4 v0, 0x3

    .line 26
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->rotationListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    return-void

    const/4 v0, 0x0
.end method

.method protected snapAngle(I)I
    .locals 7

    const/4 v6, 0x2

    .line 9
    const/4 v6, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->snapNear:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v6, 0x0

    if-ge v2, v1, :cond_1

    const/4 v6, 0x1

    aget v3, v0, v2

    sub-int v4, p1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    const/4 v6, 0x2

    return v3

    :cond_0
    const/4 v6, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v6, 0x0

    :cond_1
    const/4 v6, 0x1

    return p1

    const/4 v0, 0x2
.end method
