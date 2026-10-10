.class public final Lcom/google/android/exoplayer2/ui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final AspectRatioFrameLayout_resize_mode:I = 0x0

.field public static final DefaultTimeBar:[I

.field public static final DefaultTimeBar_ad_marker_color:I = 0x0

.field public static final DefaultTimeBar_ad_marker_width:I = 0x1

.field public static final DefaultTimeBar_bar_height:I = 0x2

.field public static final DefaultTimeBar_buffered_color:I = 0x3

.field public static final DefaultTimeBar_played_color:I = 0x4

.field public static final DefaultTimeBar_scrubber_color:I = 0x5

.field public static final DefaultTimeBar_scrubber_disabled_size:I = 0x6

.field public static final DefaultTimeBar_scrubber_dragged_size:I = 0x7

.field public static final DefaultTimeBar_scrubber_enabled_size:I = 0x8

.field public static final DefaultTimeBar_touch_target_height:I = 0x9

.field public static final DefaultTimeBar_unplayed_color:I = 0xa

.field public static final PlaybackControlView:[I

.field public static final PlaybackControlView_controller_layout_id:I = 0x0

.field public static final PlaybackControlView_fastforward_increment:I = 0x1

.field public static final PlaybackControlView_rewind_increment:I = 0x2

.field public static final PlaybackControlView_show_timeout:I = 0x3

.field public static final SimpleExoPlayerView:[I

.field public static final SimpleExoPlayerView_controller_layout_id:I = 0x0

.field public static final SimpleExoPlayerView_default_artwork:I = 0x1

.field public static final SimpleExoPlayerView_fastforward_increment:I = 0x2

.field public static final SimpleExoPlayerView_hide_on_touch:I = 0x3

.field public static final SimpleExoPlayerView_player_layout_id:I = 0x4

.field public static final SimpleExoPlayerView_resize_mode:I = 0x5

.field public static final SimpleExoPlayerView_rewind_increment:I = 0x6

.field public static final SimpleExoPlayerView_show_timeout:I = 0x7

.field public static final SimpleExoPlayerView_surface_type:I = 0x8

.field public static final SimpleExoPlayerView_use_artwork:I = 0x9

.field public static final SimpleExoPlayerView_use_controller:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 97
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0300eb

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->AspectRatioFrameLayout:[I

    const/16 v0, 0xb

    .line 99
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar:[I

    const/4 v1, 0x4

    .line 111
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView:[I

    .line 116
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView:[I

    return-void

    :array_0
    .array-data 4
        0x7f030025
        0x7f030026
        0x7f03003f
        0x7f030041
        0x7f0300da
        0x7f0300f2
        0x7f0300f3
        0x7f0300f4
        0x7f0300f5
        0x7f030141
        0x7f030145
    .end array-data

    :array_1
    .array-data 4
        0x7f03006a
        0x7f030091
        0x7f0300ed
        0x7f030101
    .end array-data

    :array_2
    .array-data 4
        0x7f03006a
        0x7f03006d
        0x7f030091
        0x7f0300a0
        0x7f0300db
        0x7f0300eb
        0x7f0300ed
        0x7f030101
        0x7f030113
        0x7f030147
        0x7f030148
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
