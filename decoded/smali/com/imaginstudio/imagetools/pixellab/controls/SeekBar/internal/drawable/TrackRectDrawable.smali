.class public Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackRectDrawable;
.super Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;
.source "TrackRectDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 37
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x1
.end method
