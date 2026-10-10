.class final Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$7;
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

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 85
    const/4 v4, 0x2

    check-cast p3, Lorg/json/JSONArray;

    .line 86
    const/4 v4, 0x3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const/4 v4, 0x0

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 89
    const/4 v4, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 94
    const/4 v4, 0x0

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v4, 0x2

    .line 95
    const/4 v4, 0x3

    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 96
    const/4 v4, 0x0

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    .line 97
    const/4 v4, 0x2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x3

    .line 99
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected type in an array: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    const/4 v4, 0x2

    :cond_2
    const/4 v4, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    const/4 v0, 0x0
.end method

.method public setOnJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 107
    const/4 v0, 0x2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "JSONArray\'s are not supported in bundles."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    const/4 v0, 0x0
.end method
