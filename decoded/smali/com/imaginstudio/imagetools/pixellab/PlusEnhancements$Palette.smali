.class final Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;
.super Ljava/lang/Object;
.source "PlusEnhancements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Palette"
.end annotation


# instance fields
.field accent:I

.field background:I

.field border:I

.field dashed:Z

.field foreground:I

.field radius:I

.field surface:I

.field surface2:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static forIndex(I)Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;
    .registers 3

    .line 456
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;-><init>()V

    .line 457
    const/16 v1, 0x16

    packed-switch p0, :pswitch_data_b0

    .line 462
    const p0, -0x40712

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->background:I

    const/16 p0, -0x20a

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface:I

    const p0, -0xc0f1b

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface2:I

    const p0, -0xcbc4cc

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->foreground:I

    const p0, -0xb28ca5

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I

    const p0, -0x998a9d

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->border:I

    const/16 p0, 0x8

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->radius:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->dashed:Z

    goto/16 :goto_af

    .line 461
    :pswitch_30
    const/16 p0, -0xe2a

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->background:I

    const/16 p0, -0x81a

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface:I

    const/16 p0, -0x2219

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface2:I

    const p0, -0xb6d198

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->foreground:I

    const p0, -0x5b885

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I

    const/16 p0, -0x70ac

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->border:I

    const/16 p0, 0x1a

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->radius:I

    goto :goto_af

    .line 460
    :pswitch_4f
    const p0, -0xeee7d9

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->background:I

    const p0, -0x37cdbfa5

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface:I

    const p0, -0x57d6c8b0

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface2:I

    const p0, -0xf0a01

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->foreground:I

    const p0, -0x7d1701

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I

    const p0, -0x669c2b01

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->border:I

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->radius:I

    goto :goto_af

    .line 459
    :pswitch_70
    const p0, -0x181611

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->background:I

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface:I

    const p0, -0xf0e0b

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface2:I

    const p0, -0xbdb6a5

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->foreground:I

    const p0, -0xad9225

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I

    const p0, -0x332f24

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->border:I

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->radius:I

    goto :goto_af

    .line 458
    :pswitch_8e
    const p0, -0x12161f

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->background:I

    const/16 p0, -0x30a

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface:I

    const p0, -0xb111d

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->surface2:I

    const p0, -0xe8e9ec

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->foreground:I

    const p0, -0xa9c8

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I

    const p0, -0xe6e7e9

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->border:I

    const/16 p0, 0x9

    iput p0, v0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->radius:I

    .line 464
    :goto_af
    return-object v0

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_70
        :pswitch_4f
        :pswitch_30
    .end packed-switch
.end method
