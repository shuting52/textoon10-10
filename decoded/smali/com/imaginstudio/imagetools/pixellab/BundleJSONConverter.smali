.class public Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;
.super Ljava/lang/Object;
.source "BundleJSONConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$Setter;
    }
.end annotation


# static fields
.field private static final SETTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$Setter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$1;

    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$2;

    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$3;

    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$4;

    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$5;

    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, [Ljava/lang/String;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$6;

    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    const-class v1, Lorg/json/JSONArray;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$7;

    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v6, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    if-nez p0, :cond_0

    const/4 v6, 0x1

    const/4 p0, 0x0

    return-object p0

    .line 159
    const/4 v6, 0x2

    :cond_0
    const/4 v6, 0x3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    const/4 v6, 0x1

    :cond_1
    const/4 v6, 0x2

    :goto_0
    const/4 v6, 0x3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x0

    .line 163
    const/4 v6, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    const/4 v6, 0x2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v6, 0x3

    .line 165
    const/4 v6, 0x0

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    const/4 v6, 0x2

    .line 171
    const/4 v6, 0x3

    :cond_2
    const/4 v6, 0x0

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    .line 172
    const/4 v6, 0x2

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    const/4 v6, 0x3

    .line 176
    const/4 v6, 0x0

    :cond_3
    const/4 v6, 0x1

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$Setter;

    if-nez v4, :cond_4

    const/4 v6, 0x2

    .line 178
    const/4 v6, 0x3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    const/4 v6, 0x0

    :cond_4
    const/4 v6, 0x1

    invoke-interface {v4, v0, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$Setter;->setOnBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    const/4 v6, 0x2

    :cond_5
    const/4 v6, 0x3

    return-object v0

    const/4 v0, 0x2
.end method

.method public static convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 129
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 131
    check-cast v3, Ljava/util/List;

    .line 132
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 133
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 140
    :cond_2
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 141
    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 145
    :cond_3
    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->SETTERS:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$Setter;

    if-nez v4, :cond_4

    .line 147
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_4
    invoke-interface {v4, v0, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter$Setter;->setOnJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-object v0

    const/4 v0, 0x2
.end method
