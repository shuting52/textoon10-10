.class public final Lcom/google/ads/mediation/facebook/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_font:I = 0x0

.field public static final FontFamilyFont_fontStyle:I = 0x1

.field public static final FontFamilyFont_fontWeight:I = 0x2

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 174
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/ads/mediation/facebook/R$styleable;->AdsAttrs:[I

    const/4 v1, 0x6

    .line 178
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/ads/mediation/facebook/R$styleable;->FontFamily:[I

    .line 185
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/ads/mediation/facebook/R$styleable;->FontFamilyFont:[I

    const/16 v0, 0xb

    .line 189
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/ads/mediation/facebook/R$styleable;->RecyclerView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f030022
        0x7f030023
        0x7f030024
    .end array-data

    :array_1
    .array-data 4
        0x7f030094
        0x7f030095
        0x7f030096
        0x7f030097
        0x7f030098
        0x7f030099
    .end array-data

    :array_2
    .array-data 4
        0x7f030092
        0x7f03009a
        0x7f03009b
    .end array-data

    :array_3
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f03008c
        0x7f03008d
        0x7f03008e
        0x7f03008f
        0x7f030090
        0x7f0300ae
        0x7f0300ec
        0x7f030103
        0x7f030109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
