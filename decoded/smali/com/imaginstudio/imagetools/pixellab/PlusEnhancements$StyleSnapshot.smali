.class final Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;
.super Ljava/lang/Object;
.source "PlusEnhancements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StyleSnapshot"
.end annotation


# instance fields
.field final background:Landroid/graphics/drawable/Drawable;

.field final colorFilter:Landroid/graphics/ColorFilter;

.field final elevation:F

.field final scaleX:F

.field final scaleY:F

.field final textColors:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/ColorFilter;FFF)V
    .registers 7

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->background:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->textColors:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->colorFilter:Landroid/graphics/ColorFilter;

    .line 432
    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->elevation:F

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->scaleX:F

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$StyleSnapshot;->scaleY:F

    .line 433
    return-void
.end method
