.class final Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState$1;
.super Ljava/lang/Object;
.source "DiscreteSeekBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1011
    const/4 v1, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;

    invoke-direct {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;-><init>(Landroid/os/Parcel;)V

    return-object v0

    const/4 v1, 0x1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x3

    .line 1002
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;

    move-result-object p1

    return-object p1

    const/4 v0, 0x0
.end method

.method public newArray(I)[Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;
    .locals 1

    const/4 v0, 0x2

    .line 1006
    const/4 v0, 0x3

    new-array p1, p1, [Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;

    return-object p1

    const/4 v0, 0x0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 1002
    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState$1;->newArray(I)[Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;

    move-result-object p1

    return-object p1

    const/4 v0, 0x0
.end method
