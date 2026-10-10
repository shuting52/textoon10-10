.class public final enum Lcom/mopub/common/util/ResponseHeader;
.super Ljava/lang/Enum;
.source "ResponseHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/util/ResponseHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/util/ResponseHeader;

.field public static final enum ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum AD_RESPONSE_TYPE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum BANNER_IMPRESSION_MIN_VISIBLE_DIPS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum BANNER_IMPRESSION_MIN_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum BROWSER_AGENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CONSENT_CHANGE_REASON:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CUSTOM_EVENT_HTML_DATA:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CUSTOM_EVENT_NAME:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CUSTOM_SELECTOR:Lcom/mopub/common/util/ResponseHeader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DISABLE_VIEWABILITY:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum FORCE_EXPLICIT_NO:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum FORCE_GDPR_APPLIES:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum HEIGHT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum IMPRESSION_MIN_VISIBLE_PX:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum INVALIDATE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum LOCATION:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REACQUIRE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REDIRECT_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REWARDED_CURRENCIES:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REWARDED_DURATION:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum SCROLLABLE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum SHOULD_REWARD_ON_CLICK:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum USER_AGENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum VIDEO_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum VIDEO_VIEWABILITY_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum WARMUP:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum WIDTH:Lcom/mopub/common/util/ResponseHeader;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 4
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "AD_TIMEOUT"

    const-string v2, "X-AdTimeout"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    .line 5
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "AD_TYPE"

    const-string v2, "X-Adtype"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    .line 6
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CLICK_TRACKING_URL"

    const-string v2, "X-Clickthrough"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 7
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CUSTOM_EVENT_DATA"

    const-string v2, "X-Custom-Event-Class-Data"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

    .line 8
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CUSTOM_EVENT_NAME"

    const-string v2, "X-Custom-Event-Class-Name"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/mopub/common/util/ResponseHeader;

    .line 9
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CUSTOM_EVENT_HTML_DATA"

    const-string v2, "X-Custom-Event-Html-Data"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_HTML_DATA:Lcom/mopub/common/util/ResponseHeader;

    .line 10
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CREATIVE_ID"

    const-string v2, "X-CreativeId"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    .line 11
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "DSP_CREATIVE_ID"

    const-string v2, "X-DspCreativeid"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    .line 12
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "FAIL_URL"

    const-string v2, "X-Failurl"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 13
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "FULL_AD_TYPE"

    const-string v2, "X-Fulladtype"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    .line 14
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "HEIGHT"

    const-string v2, "X-Height"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    .line 15
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "IMPRESSION_URL"

    const-string v2, "X-Imptracker"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 16
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REDIRECT_URL"

    const-string v2, "X-Launchpage"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REDIRECT_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 17
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "NATIVE_PARAMS"

    const-string v2, "X-Nativeparams"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

    .line 18
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "NETWORK_TYPE"

    const-string v2, "X-Networktype"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    .line 19
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "ORIENTATION"

    const-string v2, "X-Orientation"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

    .line 20
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REFRESH_TIME"

    const-string v2, "X-Refreshtime"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    .line 21
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "SCROLLABLE"

    const-string v2, "X-Scrollable"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->SCROLLABLE:Lcom/mopub/common/util/ResponseHeader;

    .line 22
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "WARMUP"

    const-string v2, "X-Warmup"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    .line 23
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "WIDTH"

    const-string v2, "X-Width"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    .line 25
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "LOCATION"

    const-string v2, "Location"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->LOCATION:Lcom/mopub/common/util/ResponseHeader;

    .line 26
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "USER_AGENT"

    const-string v2, "User-Agent"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->USER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    .line 27
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "ACCEPT_LANGUAGE"

    const-string v2, "Accept-Language"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

    .line 28
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "BROWSER_AGENT"

    const-string v2, "X-Browser-Agent"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->BROWSER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    .line 31
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "BANNER_IMPRESSION_MIN_VISIBLE_DIPS"

    const-string v2, "X-Banner-Impression-Min-Pixels"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_DIPS:Lcom/mopub/common/util/ResponseHeader;

    .line 32
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "BANNER_IMPRESSION_MIN_VISIBLE_MS"

    const-string v2, "X-Banner-Impression-Min-Ms"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    .line 35
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "IMPRESSION_MIN_VISIBLE_PERCENT"

    const-string v2, "X-Impression-Min-Visible-Percent"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 36
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "IMPRESSION_VISIBLE_MS"

    const-string v2, "X-Impression-Visible-Ms"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    .line 37
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "IMPRESSION_MIN_VISIBLE_PX"

    const-string v2, "X-Native-Impression-Min-Px"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PX:Lcom/mopub/common/util/ResponseHeader;

    .line 40
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "PLAY_VISIBLE_PERCENT"

    const-string v2, "X-Play-Visible-Percent"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 41
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "PAUSE_VISIBLE_PERCENT"

    const-string v2, "X-Pause-Visible-Percent"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 42
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "MAX_BUFFER_MS"

    const-string v2, "X-Max-Buffer-Ms"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

    .line 45
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REWARDED_VIDEO_CURRENCY_NAME"

    const-string v2, "X-Rewarded-Video-Currency-Name"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

    .line 46
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REWARDED_VIDEO_CURRENCY_AMOUNT"

    const-string v2, "X-Rewarded-Video-Currency-Amount"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

    .line 47
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REWARDED_CURRENCIES"

    const-string v2, "X-Rewarded-Currencies"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_CURRENCIES:Lcom/mopub/common/util/ResponseHeader;

    .line 48
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REWARDED_VIDEO_COMPLETION_URL"

    const-string v2, "X-Rewarded-Video-Completion-Url"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 49
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REWARDED_DURATION"

    const-string v2, "X-Rewarded-Duration"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_DURATION:Lcom/mopub/common/util/ResponseHeader;

    .line 50
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "SHOULD_REWARD_ON_CLICK"

    const-string v2, "X-Should-Reward-On-Click"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->SHOULD_REWARD_ON_CLICK:Lcom/mopub/common/util/ResponseHeader;

    .line 53
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "VIDEO_TRACKERS"

    const-string v2, "X-Video-Trackers"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->VIDEO_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    .line 56
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "VIDEO_VIEWABILITY_TRACKERS"

    const-string v2, "X-Video-Viewability-Trackers"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->VIDEO_VIEWABILITY_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    .line 57
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "DISABLE_VIEWABILITY"

    const-string v2, "X-Disable-Viewability"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->DISABLE_VIEWABILITY:Lcom/mopub/common/util/ResponseHeader;

    .line 60
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "AD_RESPONSE_TYPE"

    const-string v2, "X-Ad-Response-Type"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->AD_RESPONSE_TYPE:Lcom/mopub/common/util/ResponseHeader;

    .line 63
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "INVALIDATE_CONSENT"

    const-string v2, "invalidate_consent"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->INVALIDATE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    .line 64
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "FORCE_EXPLICIT_NO"

    const-string v2, "force_explicit_no"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->FORCE_EXPLICIT_NO:Lcom/mopub/common/util/ResponseHeader;

    .line 65
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REACQUIRE_CONSENT"

    const-string v2, "reacquire_consent"

    const/16 v15, 0x2c

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REACQUIRE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    .line 66
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CONSENT_CHANGE_REASON"

    const-string v2, "consent_change_reason"

    const/16 v15, 0x2d

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CONSENT_CHANGE_REASON:Lcom/mopub/common/util/ResponseHeader;

    .line 67
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "FORCE_GDPR_APPLIES"

    const-string v2, "force_gdpr_applies"

    const/16 v15, 0x2e

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->FORCE_GDPR_APPLIES:Lcom/mopub/common/util/ResponseHeader;

    .line 70
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CUSTOM_SELECTOR"

    const-string v2, "X-Customselector"

    const/16 v15, 0x2f

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_SELECTOR:Lcom/mopub/common/util/ResponseHeader;

    const/16 v0, 0x30

    .line 3
    new-array v0, v0, [Lcom/mopub/common/util/ResponseHeader;

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_HTML_DATA:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v9

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v10

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v11

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v12

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v13

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    aput-object v1, v0, v14

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->REDIRECT_URL:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->SCROLLABLE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->LOCATION:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->USER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->BROWSER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_DIPS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PX:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->REWARDED_CURRENCIES:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->REWARDED_DURATION:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->SHOULD_REWARD_ON_CLICK:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->VIDEO_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->VIDEO_VIEWABILITY_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->DISABLE_VIEWABILITY:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->AD_RESPONSE_TYPE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->INVALIDATE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->FORCE_EXPLICIT_NO:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->REACQUIRE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->CONSENT_CHANGE_REASON:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->FORCE_GDPR_APPLIES:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_SELECTOR:Lcom/mopub/common/util/ResponseHeader;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->$VALUES:[Lcom/mopub/common/util/ResponseHeader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/mopub/common/util/ResponseHeader;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/util/ResponseHeader;
    .locals 1

    .line 3
    const-class v0, Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/util/ResponseHeader;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/util/ResponseHeader;
    .locals 1

    .line 3
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->$VALUES:[Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v0}, [Lcom/mopub/common/util/ResponseHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/util/ResponseHeader;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mopub/common/util/ResponseHeader;->key:Ljava/lang/String;

    return-object v0
.end method
