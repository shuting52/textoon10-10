.class public Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackOvalDrawable;
.super Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;
.source "TrackOvalDrawable.java"


# instance fields
.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackOvalDrawable;->mRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 40
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackOvalDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackOvalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 41
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackOvalDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x2
.end method
