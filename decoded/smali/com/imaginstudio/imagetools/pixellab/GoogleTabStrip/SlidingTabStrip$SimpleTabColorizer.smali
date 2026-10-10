.class Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip$SimpleTabColorizer;
.super Ljava/lang/Object;
.source "SlidingTabStrip.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabColorizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTabColorizer"
.end annotation


# instance fields
.field private mIndicatorColors:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip$1;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip$SimpleTabColorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndicatorColor(I)I
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 150
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    array-length v1, v1

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1

    const/4 v0, 0x2
.end method

.method varargs setIndicatorColors([I)V
    .locals 1

    const/4 v0, 0x2

    .line 154
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    return-void

    const/4 v0, 0x0
.end method
