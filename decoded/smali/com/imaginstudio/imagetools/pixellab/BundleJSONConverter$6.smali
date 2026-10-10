.class final Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$6;
.super Ljava/lang/Object;
.source "BundleJSONConverter.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 71
    const/4 v0, 0x1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected type from JSON"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    const/4 v0, 0x0
.end method

.method public setOnJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v4, 0x3

    .line 75
    const/4 v4, 0x0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 76
    const/4 v4, 0x1

    check-cast p3, [Ljava/lang/String;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v2, v1, :cond_0

    const/4 v4, 0x3

    aget-object v3, p3, v2

    .line 77
    const/4 v4, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v4, 0x1

    .line 79
    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    const/4 v0, 0x0
.end method
