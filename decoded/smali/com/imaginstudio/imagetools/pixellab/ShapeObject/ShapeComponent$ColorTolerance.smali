.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;
.super Ljava/lang/Object;
.source "ShapeComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorTolerance"
.end annotation


# instance fields
.field public c:I

.field public t:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2517
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    .line 2518
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    return-void
.end method


# virtual methods
.method copy()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2523
    const/4 v3, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;-><init>(II)V

    return-object v0

    const/4 v1, 0x3
.end method
