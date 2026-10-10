.class Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;
.super Landroid/view/View$BaseSavedState;
.source "DiscreteSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private max:I

.field private min:I

.field private progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1001
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState$1;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState$1;-><init>()V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 983
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->progress:I

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->max:I

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->min:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 990
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;)I
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 977
    const/4 v0, 0x1

    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->progress:I

    return p0

    const/4 v0, 0x0
.end method

.method static synthetic access$302(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;I)I
    .locals 1

    const/4 v0, 0x3

    .line 977
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->progress:I

    return p1

    const/4 v0, 0x0
.end method

.method static synthetic access$400(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;)I
    .locals 1

    const/4 v0, 0x2

    .line 977
    const/4 v0, 0x3

    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->max:I

    return p0

    const/4 v0, 0x0
.end method

.method static synthetic access$402(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;I)I
    .locals 1

    const/4 v0, 0x1

    .line 977
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->max:I

    return p1

    const/4 v0, 0x0
.end method

.method static synthetic access$500(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;)I
    .locals 1

    const/4 v0, 0x0

    .line 977
    const/4 v0, 0x1

    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->min:I

    return p0

    const/4 v0, 0x0
.end method

.method static synthetic access$502(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;I)I
    .locals 1

    const/4 v0, 0x3

    .line 977
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->min:I

    return p1

    const/4 v0, 0x0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x2

    .line 995
    const/4 v0, 0x3

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 996
    const/4 v0, 0x0

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    const/4 v0, 0x1

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->max:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    const/4 v0, 0x2

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->min:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    const/4 v0, 0x0
.end method
