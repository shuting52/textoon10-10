.class public Lcom/imaginstudio/imagetools/pixellab/textContainer;
.super Landroid/widget/RelativeLayout;
.source "textContainer.java"
# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;
# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;,
        Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;,
        Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    }
.end annotation
# static fields
.field public static final AB:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.field static final abLength:I
.field static rnd:Ljava/security/SecureRandom;
# instance fields
.field public curr_id:I
.field public curr_id_shape:I
.field lastInserted:I
.field lastInserted_shape:I
.field layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
.field mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
.field public shapes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;",
            ">;"
        }
    .end annotation
.end field
.field public texts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;",
            ">;"
        }
    .end annotation
.end field
.field touchDownId:I
.field public willResize:Z
# direct methods
.method static constructor <clinit>()V
    .locals 1
    .line 732
    new-instance v0, Ljava/security/SecureRandom;
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V
    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->rnd:Ljava/security/SecureRandom;
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    .line 733
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v0
    sput v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->abLength:I
    return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
    .line 111
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
    .line 41
    new-instance p1, Ljava/util/HashMap;
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    .line 42
    new-instance p1, Ljava/util/HashMap;
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    const/4 p1, -0x1
    .line 43
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    .line 44
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    .line 45
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    .line 46
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    .line 121
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I
    const/4 p1, 0x0
    .line 112
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setClipChildren(Z)V
    const/4 v0, 0x0
    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setLayerType(ILandroid/graphics/Paint;)V
    const/4 p1, 0x1
    .line 114
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setDrawingCacheEnabled(Z)V
    return-void
.end method
.method private clickedNothing()V
    .locals 2
    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"
    const/4 v0, -0x1
    .line 156
    const/4 v1, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    .line 157
    const/4 v1, 0x0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    return-void
    const/4 v1, 0x1
.end method
.method private getCurrentOrFirstShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 3
    const/4 v2, 0x2
    .line 226
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->size()I
    move-result v0
    if-lez v0, :cond_1
    const/4 v2, 0x0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0
    const/4 v2, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    :goto_0
    const/4 v2, 0x2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    goto :goto_1
    const/4 v2, 0x3
    :cond_0
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    const/4 v1, 0x0
    goto :goto_0
    const/4 v2, 0x1
    :cond_1
    const/4 v2, 0x2
    const/4 v0, 0x0
    :goto_1
    const/4 v2, 0x3
    return-object v0
    const/4 v0, 0x2
.end method
.method private getCurrentOrFirstText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 3
    const/4 v2, 0x1
    .line 229
    const/4 v2, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->size()I
    move-result v0
    if-lez v0, :cond_1
    const/4 v2, 0x3
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    :goto_0
    const/4 v2, 0x1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    goto :goto_1
    const/4 v2, 0x2
    :cond_0
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    const/4 v1, 0x0
    goto :goto_0
    const/4 v2, 0x0
    :cond_1
    const/4 v2, 0x1
    const/4 v0, 0x0
    :goto_1
    const/4 v2, 0x2
    return-object v0
    const/4 v0, 0x2
.end method
.method private getObjectsBoundingBox(Ljava/util/ArrayList;)Landroid/graphics/RectF;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation
    const/4 v8, 0x0
    .line 972
    const/4 v8, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/high16 v1, -0x31000000
    const/high16 v2, 0x4f000000
    const/high16 v1, 0x4f000000
    const/high16 v3, -0x31000000
    const/high16 v4, -0x31000000
    :cond_0
    const/4 v8, 0x2
    :goto_0
    const/4 v8, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :cond_4
    const/4 v8, 0x0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/util/Map$Entry;
    .line 973
    const/4 v8, 0x1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    .line 974
    const/4 v8, 0x2
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 975
    const/4 v8, 0x3
    iget-object v6, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :cond_0
    const/4 v8, 0x0
    .line 976
    const/4 v8, 0x1
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F
    move-result v6
    cmpg-float v6, v6, v2
    if-gez v6, :cond_1
    const/4 v8, 0x2
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F
    move-result v2
    .line 977
    const/4 v8, 0x3
    :cond_1
    const/4 v8, 0x0
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F
    move-result v6
    cmpg-float v6, v6, v1
    if-gez v6, :cond_2
    const/4 v8, 0x1
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F
    move-result v1
    .line 978
    const/4 v8, 0x2
    :cond_2
    const/4 v8, 0x3
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F
    move-result v6
    iget v7, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F
    add-float/2addr v6, v7
    cmpl-float v6, v6, v3
    if-lez v6, :cond_3
    const/4 v8, 0x0
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F
    move-result v3
    iget v6, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F
    add-float/2addr v3, v6
    .line 979
    const/4 v8, 0x1
    :cond_3
    const/4 v8, 0x2
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F
    move-result v6
    iget v7, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F
    add-float/2addr v6, v7
    cmpl-float v6, v6, v4
    if-lez v6, :cond_0
    const/4 v8, 0x3
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F
    move-result v4
    iget v5, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F
    add-float/2addr v4, v5
    goto :goto_0
    const/4 v8, 0x0
    .line 982
    const/4 v8, 0x1
    :cond_4
    const/4 v8, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_5
    const/4 v8, 0x3
    :goto_1
    const/4 v8, 0x0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :cond_9
    const/4 v8, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/util/Map$Entry;
    .line 983
    const/4 v8, 0x2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    .line 984
    const/4 v8, 0x3
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .line 985
    const/4 v8, 0x0
    iget-object v6, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :cond_5
    const/4 v8, 0x1
    .line 986
    const/4 v8, 0x2
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F
    move-result v6
    cmpg-float v6, v6, v2
    if-gez v6, :cond_6
    const/4 v8, 0x3
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F
    move-result v2
    .line 987
    const/4 v8, 0x0
    :cond_6
    const/4 v8, 0x1
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F
    move-result v6
    cmpg-float v6, v6, v1
    if-gez v6, :cond_7
    const/4 v8, 0x2
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F
    move-result v1
    .line 988
    const/4 v8, 0x3
    :cond_7
    const/4 v8, 0x0
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F
    move-result v6
    iget v7, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I
    int-to-float v7, v7
    add-float/2addr v6, v7
    cmpl-float v6, v6, v3
    if-lez v6, :cond_8
    const/4 v8, 0x1
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F
    move-result v3
    iget v6, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I
    int-to-float v6, v6
    add-float/2addr v3, v6
    .line 989
    const/4 v8, 0x2
    :cond_8
    const/4 v8, 0x3
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F
    move-result v6
    iget v7, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I
    int-to-float v7, v7
    add-float/2addr v6, v7
    cmpl-float v6, v6, v4
    if-lez v6, :cond_5
    const/4 v8, 0x0
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F
    move-result v4
    iget v5, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I
    int-to-float v5, v5
    add-float/2addr v4, v5
    goto :goto_1
    const/4 v8, 0x1
    .line 992
    const/4 v8, 0x2
    :cond_9
    const/4 v8, 0x3
    new-instance p1, Landroid/graphics/RectF;
    invoke-direct {p1, v2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V
    return-object p1
    const/4 v0, 0x0
.end method
.method static getRandomString(I)Ljava/lang/String;
    .locals 6
    const/4 v5, 0x1
    .line 736
    const/4 v5, 0x2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V
    const/4 v1, 0x0
    :goto_0
    const/4 v5, 0x3
    if-ge v1, p0, :cond_0
    const/4 v5, 0x0
    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    .line 738
    const/4 v5, 0x1
    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/textContainer;->rnd:Ljava/security/SecureRandom;
    sget v4, Lcom/imaginstudio/imagetools/pixellab/textContainer;->abLength:I
    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I
    move-result v3
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1
    goto :goto_0
    const/4 v5, 0x2
    .line 739
    const/4 v5, 0x3
    :cond_0
    const/4 v5, 0x0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
    const/4 v1, 0x1
.end method
.method private msg(Ljava/lang/String;)V
    .locals 3
    const/4 v2, 0x2
    .line 507
    const/4 v2, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v0
    const/4 v1, 0x0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    return-void
    const/4 v0, 0x2
.end method
.method private passEventTo(Landroid/view/MotionEvent;I)V
    .locals 3
    const/4 v2, 0x1
    if-ltz p2, :cond_0
    const/4 v2, 0x2
    .line 138
    const/4 v2, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildCount()I
    move-result v0
    if-ge p2, v0, :cond_0
    const/4 v2, 0x0
    .line 139
    const/4 v2, 0x1
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;
    move-result-object v1
    invoke-direct {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;-><init>(Landroid/view/MotionEvent;Landroid/view/View;)V
    .line 140
    const/4 v2, 0x2
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->OnCustomTouchEvent(Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;)Z
    :cond_0
    const/4 v2, 0x3
    return-void
    const/4 v0, 0x2
.end method
.method private passEventToAll(Landroid/view/MotionEvent;)I
    .locals 4
    const/4 v3, 0x1
    .line 145
    const/4 v3, 0x2
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;
    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;-><init>()V
    .line 146
    const/4 v3, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildCount()I
    move-result v1
    add-int/lit8 v1, v1, -0x1
    :goto_0
    const/4 v3, 0x0
    if-ltz v1, :cond_1
    const/4 v3, 0x1
    .line 147
    const/4 v3, 0x2
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    invoke-virtual {v0, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->updateWith(Landroid/view/MotionEvent;Landroid/view/View;)V
    .line 148
    const/4 v3, 0x3
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
    invoke-virtual {v2, v0}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->OnCustomTouchEvent(Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;)Z
    move-result v2
    if-eqz v2, :cond_0
    const/4 v3, 0x0
    return v1
    :cond_0
    const/4 v3, 0x1
    add-int/lit8 v1, v1, -0x1
    goto :goto_0
    const/4 v3, 0x2
    :cond_1
    const/4 v3, 0x3
    const/4 p1, -0x1
    return p1
    const/4 v1, 0x3
.end method
.method private removeCurrent()V
    .locals 3
    const/4 v2, 0x1
    .line 472
    const/4 v2, 0x2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    const/4 v1, 0x1
    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeText(IZ)V
    return-void
    const/4 v0, 0x2
.end method
.method private removeCurrentShape()V
    .locals 3
    const/4 v2, 0x0
    .line 469
    const/4 v2, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    const/4 v1, 0x1
    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeShape(IZ)V
    return-void
    const/4 v0, 0x2
.end method
.method private removeShape(IZ)V
    .locals 6
    const/4 v5, 0x3
    const/4 v0, -0x1
    if-eq p1, v0, :cond_1
    const/4 v5, 0x0
    .line 442
    const/4 v5, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v1, :cond_0
    const/4 v5, 0x2
    .line 443
    const/4 v5, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 444
    const/4 v5, 0x0
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;
    move-result-object v2
    .line 445
    const/4 v5, 0x1
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result v4
    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-interface {v3, v2, v4, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onShapeDelete(Landroid/os/Bundle;ILjava/lang/String;)V
    .line 447
    const/4 v5, 0x2
    :cond_0
    const/4 v5, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
    invoke-virtual {p0, v1, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeView(Landroid/view/View;Z)V
    .line 448
    const/4 v5, 0x0
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    .line 449
    const/4 v5, 0x1
    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    if-ne p1, p2, :cond_1
    const/4 v5, 0x2
    .line 450
    const/4 v5, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    :cond_1
    const/4 v5, 0x0
    return-void
    const/4 v1, 0x1
.end method
.method private removeText(IZ)V
    .locals 6
    const/4 v5, 0x2
    const/4 v0, -0x1
    if-eq p1, v0, :cond_1
    const/4 v5, 0x3
    .line 456
    const/4 v5, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v1, :cond_0
    const/4 v5, 0x1
    .line 457
    const/4 v5, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .line 458
    const/4 v5, 0x3
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;
    move-result-object v2
    .line 459
    const/4 v5, 0x0
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result v4
    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-interface {v3, v2, v4, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextDelete(Landroid/os/Bundle;ILjava/lang/String;)V
    .line 461
    const/4 v5, 0x1
    :cond_0
    const/4 v5, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
    invoke-virtual {p0, v1, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeView(Landroid/view/View;Z)V
    .line 462
    const/4 v5, 0x3
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    .line 463
    const/4 v5, 0x0
    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    if-ne p1, p2, :cond_1
    const/4 v5, 0x1
    .line 464
    const/4 v5, 0x2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    :cond_1
    const/4 v5, 0x3
    return-void
    const/4 v1, 0x1
.end method
# virtual methods
.method public addNewShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;
    .locals 10
    move-object v0, p0
    .line 192
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    add-int/lit8 v1, v1, 0x1
    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    const/4 v1, 0x5
    .line 194
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;
    move-result-object v1
    .line 195
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v3
    move-object v2, v9
    move v4, p1
    move-object v5, p2
    move/from16 v6, p6
    move/from16 v7, p7
    move-object v8, v1
    invoke-direct/range {v2 .. v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;FFLjava/lang/String;)V
    .line 196
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .line 197
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    iput v2, v9, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I
    const/4 v2, -0x1
    .line 198
    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    .line 199
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    .line 200
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setTouchEventListener(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;)V
    if-eqz p3, :cond_0
    .line 202
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getViewOrigin()Landroid/graphics/PointF;
    move-result-object v2
    .line 203
    iget v3, v2, Landroid/graphics/PointF;->x:F
    invoke-virtual {v9, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V
    .line 204
    iget v2, v2, Landroid/graphics/PointF;->y:F
    invoke-virtual {v9, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V
    goto :goto_0
    :cond_0
    move v2, p4
    .line 207
    invoke-virtual {v9, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V
    move v2, p5
    .line 208
    invoke-virtual {v9, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V
    .line 210
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, -0x2
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    .line 211
    invoke-virtual {v0, v9, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .line 212
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v2, :cond_1
    .line 213
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-interface {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onShapeCreate(Ljava/lang/String;)V
    :cond_1
    return-object v1
    const/4 v0, 0x2
.end method
.method public addNewText(I)Ljava/lang/String;
    .locals 4
    const/4 v3, 0x2
    .line 170
    const/4 v3, 0x3
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    const/4 v0, 0x5
    .line 172
    const/4 v3, 0x0
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;
    move-result-object v0
    .line 173
    const/4 v3, 0x1
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-direct {v1, v2, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;ILjava/lang/String;)V
    .line 174
    const/4 v3, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .line 175
    const/4 v3, 0x3
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    iput p1, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I
    const/4 p1, -0x1
    .line 176
    const/4 v3, 0x0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    .line 177
    const/4 v3, 0x1
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    .line 178
    const/4 v3, 0x2
    invoke-virtual {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTouchEventListener(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;)V
    .line 179
    const/4 v3, 0x3
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getViewOrigin()Landroid/graphics/PointF;
    move-result-object p1
    .line 180
    const/4 v3, 0x0
    iget v2, p1, Landroid/graphics/PointF;->x:F
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V
    .line 181
    const/4 v3, 0x1
    iget p1, p1, Landroid/graphics/PointF;->y:F
    invoke-virtual {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V
    .line 182
    const/4 v3, 0x2
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addView(Landroid/view/View;)V
    .line 183
    const/4 v3, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz p1, :cond_0
    const/4 v3, 0x0
    .line 184
    const/4 v3, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextCreate(Ljava/lang/String;)V
    :cond_0
    const/4 v3, 0x2
    return-object v0
    const/4 v1, 0x3
.end method
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    const/4 v0, 0x0
    .line 796
    const/4 v0, 0x1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .line 797
    const/4 v0, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    if-eqz p1, :cond_0
    const/4 v0, 0x3
    .line 798
    const/4 v0, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectCountChanged()V
    :cond_0
    const/4 v0, 0x1
    return-void
    const/4 v0, 0x0
.end method
.method public bundleObjects(Landroid/os/Bundle;)V
    .locals 7
    const/4 v6, 0x3
    .line 259
    const/4 v6, 0x0
    new-instance v0, Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    .line 260
    const/4 v6, 0x1
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    const/4 v2, 0x0
    .line 262
    const/4 v6, 0x2
    :goto_0
    const/4 v6, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildCount()I
    move-result v3
    if-ge v2, v3, :cond_2
    const/4 v6, 0x0
    .line 263
    const/4 v6, 0x1
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    instance-of v3, v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    if-eqz v3, :cond_0
    const/4 v6, 0x2
    .line 264
    const/4 v6, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .line 265
    const/4 v6, 0x0
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "text"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;
    move-result-object v3
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .line 266
    const/4 v6, 0x1
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "text"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :goto_1
    const/4 v6, 0x2
    .line 268
    const/4 v6, 0x3
    :cond_0
    const/4 v6, 0x0
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    instance-of v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    if-eqz v3, :cond_1
    const/4 v6, 0x1
    .line 269
    const/4 v6, 0x2
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 270
    const/4 v6, 0x3
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "shape"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;
    move-result-object v3
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .line 271
    const/4 v6, 0x0
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "shape"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :cond_1
    const/4 v6, 0x1
    :goto_1
    const/4 v6, 0x2
    add-int/lit8 v2, v2, 0x1
    goto/16 :goto_0
    const/4 v6, 0x3
    .line 275
    const/4 v6, 0x0
    :cond_2
    const/4 v6, 0x1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    move-result v2
    if-eqz v2, :cond_3
    const/4 v6, 0x2
    const-string v2, "objectsSkipEmpty"
    const/4 v3, 0x1
    .line 276
    const/4 v6, 0x3
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :cond_3
    const/4 v6, 0x0
    const-string v2, "objectsBundle"
    .line 279
    const/4 v6, 0x1
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    const-string v0, "objectsIds"
    .line 280
    const/4 v6, 0x2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    return-void
    const/4 v0, 0x2
.end method
.method public computeObjectsCenter(Ljava/util/ArrayList;)Landroid/graphics/PointF;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation
    const/4 v8, 0x0
    .line 808
    const/4 v8, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/4 v1, 0x0
    const/4 v2, 0x0
    const/4 v2, 0x0
    const/4 v3, 0x0
    :cond_0
    const/4 v8, 0x2
    :goto_0
    const/4 v8, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :cond_1
    const/4 v8, 0x0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/Map$Entry;
    .line 809
    const/4 v8, 0x1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    .line 810
    const/4 v8, 0x2
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :cond_0
    const/4 v8, 0x3
    .line 811
    const/4 v8, 0x0
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPivotX()F
    move-result v5
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F
    move-result v6
    add-float/2addr v5, v6
    add-float/2addr v1, v5
    .line 812
    const/4 v8, 0x1
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPivotY()F
    move-result v5
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F
    move-result v4
    add-float/2addr v5, v4
    add-float/2addr v2, v5
    add-int/lit8 v3, v3, 0x1
    goto :goto_0
    const/4 v8, 0x2
    .line 816
    const/4 v8, 0x3
    :cond_1
    const/4 v8, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_2
    const/4 v8, 0x1
    :goto_1
    const/4 v8, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :cond_3
    const/4 v8, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/Map$Entry;
    .line 817
    const/4 v8, 0x0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    .line 818
    const/4 v8, 0x1
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :cond_2
    const/4 v8, 0x2
    .line 819
    const/4 v8, 0x3
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getPivotX()F
    move-result v5
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F
    move-result v6
    add-float/2addr v5, v6
    add-float/2addr v1, v5
    .line 820
    const/4 v8, 0x0
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getPivotY()F
    move-result v5
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F
    move-result v4
    add-float/2addr v5, v4
    add-float/2addr v2, v5
    add-int/lit8 v3, v3, 0x1
    goto :goto_1
    const/4 v8, 0x1
    :cond_3
    const/4 v8, 0x2
    int-to-float p1, v3
    div-float/2addr v1, p1
    div-float/2addr v2, p1
    .line 825
    const/4 v8, 0x3
    new-instance p1, Landroid/graphics/PointF;
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V
    return-object p1
    const/4 v0, 0x0
.end method
.method public copyCurrentShape()V
    .locals 7
    const/4 v6, 0x1
    .line 405
    const/4 v6, 0x2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    const/4 v1, 0x1
    add-int/2addr v0, v1
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    const/4 v0, 0x5
    .line 406
    const/4 v6, 0x3
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;
    move-result-object v0
    .line 407
    const/4 v6, 0x0
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v3
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;
    move-result-object v4
    invoke-direct {v2, v3, v4, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V
    .line 408
    const/4 v6, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .line 409
    const/4 v6, 0x2
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    iput v1, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I
    const/4 v1, -0x1
    .line 410
    const/4 v6, 0x3
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    .line 411
    const/4 v6, 0x0
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    .line 412
    const/4 v6, 0x1
    invoke-virtual {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setTouchEventListener(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;)V
    .line 413
    const/4 v6, 0x2
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getViewOrigin()Landroid/graphics/PointF;
    move-result-object v1
    .line 414
    const/4 v6, 0x3
    iget v3, v1, Landroid/graphics/PointF;->x:F
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V
    .line 415
    const/4 v6, 0x0
    iget v1, v1, Landroid/graphics/PointF;->y:F
    invoke-virtual {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V
    .line 416
    const/4 v6, 0x1
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addView(Landroid/view/View;)V
    .line 417
    const/4 v6, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v1, :cond_0
    const/4 v6, 0x3
    .line 418
    const/4 v6, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-interface {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onShapeCreate(Ljava/lang/String;)V
    :cond_0
    const/4 v6, 0x1
    return-void
    const/4 v0, 0x2
.end method
.method public copyCurrentText()V
    .locals 7
    const/4 v6, 0x3
    .line 422
    const/4 v6, 0x0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    const/4 v1, 0x1
    add-int/2addr v0, v1
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    const/4 v0, 0x5
    .line 423
    const/4 v6, 0x1
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;
    move-result-object v0
    .line 424
    const/4 v6, 0x2
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v3
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;
    move-result-object v4
    invoke-direct {v2, v3, v4, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V
    .line 425
    const/4 v6, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .line 426
    const/4 v6, 0x0
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    iput v1, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I
    const/4 v1, -0x1
    .line 427
    const/4 v6, 0x1
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    .line 428
    const/4 v6, 0x2
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    .line 429
    const/4 v6, 0x3
    invoke-virtual {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTouchEventListener(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;)V
    .line 430
    const/4 v6, 0x0
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getViewOrigin()Landroid/graphics/PointF;
    move-result-object v1
    .line 431
    const/4 v6, 0x1
    iget v3, v1, Landroid/graphics/PointF;->x:F
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V
    .line 432
    const/4 v6, 0x2
    iget v1, v1, Landroid/graphics/PointF;->y:F
    invoke-virtual {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V
    .line 433
    const/4 v6, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addView(Landroid/view/View;)V
    .line 434
    const/4 v6, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v1, :cond_0
    const/4 v6, 0x1
    .line 435
    const/4 v6, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-interface {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextCreate(Ljava/lang/String;)V
    :cond_0
    const/4 v6, 0x3
    return-void
    const/4 v0, 0x2
.end method
.method public editCurrShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZII)V
    .locals 7
    .line 243
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z
    move-result v0
    if-nez v0, :cond_0
    return-void
    .line 246
    :cond_0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_2
    const/4 v0, 0x1
    if-eqz p3, :cond_1
    goto :goto_0
    :cond_1
    const/4 p4, 0x1
    const/4 p5, 0x1
    .line 253
    :goto_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->resetCropPortion()V
    .line 254
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    move-object v1, v0
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    int-to-float v5, p4
    int-to-float v6, p5
    move v2, p1
    move-object v3, p2
    move v4, p3
    invoke-virtual/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->editSrc(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFF)V
    :cond_2
    return-void
    const/4 v1, 0x3
.end method
.method public editCurrentText(Ljava/lang/String;)V
    .locals 3
    const/4 v2, 0x2
    .line 161
    const/4 v2, 0x3
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0
    const/4 v2, 0x0
    .line 162
    const/4 v2, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;
    move-result-object v0
    .line 163
    const/4 v2, 0x2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :cond_0
    const/4 v2, 0x3
    .line 164
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    const/4 v1, 0x1
    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;Z)V
    :cond_0
    const/4 v2, 0x1
    return-void
    const/4 v0, 0x2
.end method
.method public getCurrentSelectedType()Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    .locals 3
    const/4 v2, 0x3
    .line 74
    const/4 v2, 0x0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0
    const/4 v2, 0x1
    .line 75
    const/4 v2, 0x2
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    return-object v0
    .line 77
    const/4 v2, 0x3
    :cond_0
    const/4 v2, 0x0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    if-eq v0, v1, :cond_1
    const/4 v2, 0x1
    .line 78
    const/4 v2, 0x2
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    return-object v0
    :cond_1
    const/4 v2, 0x3
    const/4 v0, 0x0
    return-object v0
    const/4 v0, 0x2
.end method
.method public getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 3
    const/4 v2, 0x1
    .line 223
    const/4 v2, 0x2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    goto :goto_0
    const/4 v2, 0x0
    :cond_0
    const/4 v2, 0x1
    const/4 v0, 0x0
    :goto_0
    const/4 v2, 0x2
    return-object v0
    const/4 v0, 0x2
.end method
.method public getCurrentText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 3
    const/4 v2, 0x0
    .line 232
    const/4 v2, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0
    const/4 v2, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    goto :goto_0
    const/4 v2, 0x3
    :cond_0
    const/4 v2, 0x0
    const/4 v0, 0x0
    :goto_0
    const/4 v2, 0x1
    return-object v0
    const/4 v0, 0x2
.end method
.method getGlobalCenter(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 4
    const/4 v3, 0x3
    .line 828
    const/4 v3, 0x0
    new-instance v0, Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/view/View;->getX()F
    move-result v1
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F
    move-result v2
    add-float/2addr v1, v2
    invoke-virtual {p1}, Landroid/view/View;->getY()F
    move-result v2
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F
    move-result p1
    add-float/2addr v2, p1
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V
    return-object v0
    const/4 v1, 0x3
.end method
.method public getObjectByRef(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    const/4 v1, 0x2
    .line 644
    const/4 v1, 0x3
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getTextByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    move-result-object v0
    if-eqz v0, :cond_0
    const/4 v1, 0x0
    goto :goto_0
    const/4 v1, 0x1
    .line 645
    const/4 v1, 0x2
    :cond_0
    const/4 v1, 0x3
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getShapeByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    move-result-object v0
    :goto_0
    const/4 v1, 0x0
    return-object v0
    const/4 v1, 0x1
.end method
.method public getSelectedComponent()Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
    .locals 3
    const/4 v2, 0x2
    .line 219
    const/4 v2, 0x3
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
    goto :goto_0
    const/4 v2, 0x1
    :cond_0
    const/4 v2, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    move-result-object v0
    :goto_0
    const/4 v2, 0x3
    return-object v0
    const/4 v0, 0x2
.end method
.method public getSelectedReference()Ljava/lang/String;
    .locals 3
    const/4 v2, 0x1
    .line 475
    const/4 v2, 0x2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0
    const/4 v2, 0x3
    .line 476
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    return-object v0
    .line 478
    const/4 v2, 0x1
    :cond_0
    const/4 v2, 0x2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    if-eq v0, v1, :cond_1
    const/4 v2, 0x3
    .line 479
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    return-object v0
    :cond_1
    const/4 v2, 0x1
    const-string v0, "0"
    return-object v0
    const/4 v0, 0x2
.end method
.method public getShapeByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 5
    const/4 v4, 0x3
    .line 649
    const/4 v4, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_0
    const/4 v4, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_1
    const/4 v4, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 650
    const/4 v4, 0x3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 651
    const/4 v4, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->compareStrings(Ljava/lang/String;Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :cond_0
    const/4 v4, 0x1
    .line 652
    const/4 v4, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    return-object p1
    :cond_1
    const/4 v4, 0x3
    const/4 p1, 0x0
    return-object p1
    const/4 v0, 0x0
.end method
.method public getTextByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 5
    const/4 v4, 0x1
    .line 658
    const/4 v4, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_0
    const/4 v4, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_1
    const/4 v4, 0x0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 659
    const/4 v4, 0x1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 660
    const/4 v4, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->compareStrings(Ljava/lang/String;Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :cond_0
    const/4 v4, 0x3
    .line 661
    const/4 v4, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    return-object p1
    :cond_1
    const/4 v4, 0x1
    const/4 p1, 0x0
    return-object p1
    const/4 v0, 0x0
.end method
.method hideAllBut(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
    const/4 v3, 0x3
    .line 1039
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_0
    const/4 v3, 0x1
    :goto_0
    const/4 v3, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_3
    const/4 v3, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 1040
    const/4 v3, 0x0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 1041
    const/4 v3, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    if-eqz p1, :cond_1
    const/4 v3, 0x2
    .line 1042
    const/4 v3, 0x3
    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :cond_0
    const/4 v3, 0x0
    :cond_1
    const/4 v3, 0x1
    if-eqz p2, :cond_2
    const/4 v3, 0x2
    .line 1043
    const/4 v3, 0x3
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hideTemp()V
    goto :goto_0
    const/4 v3, 0x0
    .line 1044
    const/4 v3, 0x1
    :cond_2
    const/4 v3, 0x2
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->unhideTemp()V
    goto :goto_0
    const/4 v3, 0x3
    .line 1047
    const/4 v3, 0x0
    :cond_3
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_4
    const/4 v3, 0x2
    :goto_1
    const/4 v3, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_7
    const/4 v3, 0x0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 1048
    const/4 v3, 0x1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 1049
    const/4 v3, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    if-eqz p1, :cond_5
    const/4 v3, 0x3
    .line 1050
    const/4 v3, 0x0
    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :cond_4
    const/4 v3, 0x1
    :cond_5
    const/4 v3, 0x2
    if-eqz p2, :cond_6
    const/4 v3, 0x3
    .line 1051
    const/4 v3, 0x0
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hideTemp()V
    goto :goto_1
    const/4 v3, 0x1
    .line 1052
    const/4 v3, 0x2
    :cond_6
    const/4 v3, 0x3
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->unhideTemp()V
    goto :goto_1
    const/4 v3, 0x0
    :cond_7
    const/4 v3, 0x1
    return-void
    const/4 v1, 0x3
.end method
.method public hideLockObjects(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
    const/4 v3, 0x3
    .line 858
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_0
    const/4 v3, 0x1
    :goto_0
    const/4 v3, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_2
    const/4 v3, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 859
    const/4 v3, 0x0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 860
    const/4 v3, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 861
    const/4 v3, 0x2
    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :cond_0
    const/4 v3, 0x3
    if-eqz p2, :cond_1
    const/4 v3, 0x0
    .line 863
    const/4 v3, 0x1
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isHidden()Z
    move-result v2
    xor-int/lit8 v2, v2, 0x1
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setHidden(Z)V
    goto :goto_0
    const/4 v3, 0x2
    .line 865
    const/4 v3, 0x3
    :cond_1
    const/4 v3, 0x0
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isLocked()Z
    move-result v2
    xor-int/lit8 v2, v2, 0x1
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setLocked(Z)V
    goto :goto_0
    const/4 v3, 0x1
    .line 869
    const/4 v3, 0x2
    :cond_2
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_3
    const/4 v3, 0x0
    :goto_1
    const/4 v3, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_5
    const/4 v3, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 870
    const/4 v3, 0x3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 871
    const/4 v3, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .line 872
    const/4 v3, 0x1
    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :cond_3
    const/4 v3, 0x2
    if-eqz p2, :cond_4
    const/4 v3, 0x3
    .line 874
    const/4 v3, 0x0
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isHidden()Z
    move-result v2
    xor-int/lit8 v2, v2, 0x1
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setHidden(Z)V
    goto :goto_1
    const/4 v3, 0x1
    .line 876
    const/4 v3, 0x2
    :cond_4
    const/4 v3, 0x3
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isLocked()Z
    move-result v2
    xor-int/lit8 v2, v2, 0x1
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLocked(Z)V
    goto :goto_1
    const/4 v3, 0x0
    :cond_5
    const/4 v3, 0x1
    return-void
    const/4 v1, 0x3
.end method
.method public mergeObjects(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
    const/4 v0, 0x0
    .line 1001
    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getWidth()I
    move-result v1
    int-to-float v1, v1
    const/high16 v2, 0x40000000    # 2.0f
    mul-float v1, v1, v2
    float-to-int v1, v1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getHeight()I
    move-result v3
    int-to-float v3, v3
    mul-float v3, v3, v2
    float-to-int v3, v3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v1
    .line 1002
    new-instance v3, Landroid/graphics/Canvas;
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    .line 1003
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V
    const/4 v4, 0x4
    .line 1005
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setVisibility(I)V
    const/4 v4, 0x1
    .line 1006
    invoke-virtual {p0, v4, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setRenderMode(ZF)V
    .line 1007
    invoke-virtual {p0, p1, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->hideAllBut(Ljava/util/ArrayList;Z)V
    .line 1008
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->draw(Landroid/graphics/Canvas;)V
    .line 1010
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getAutoCropBound(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    move-result-object v3
    .line 1011
    iget v5, v3, Landroid/graphics/Rect;->right:I
    const/4 v6, -0x1
    if-eq v5, v6, :cond_1
    iget v5, v3, Landroid/graphics/Rect;->left:I
    if-eq v5, v6, :cond_1
    iget v5, v3, Landroid/graphics/Rect;->top:I
    if-eq v5, v6, :cond_1
    iget v5, v3, Landroid/graphics/Rect;->bottom:I
    if-ne v5, v6, :cond_0
    goto :goto_0
    .line 1014
    :cond_0
    invoke-static {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->autoCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    move-result-object v1
    const-string v5, "drawingMerged"
    .line 1016
    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    .line 1017
    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v5
    .line 1018
    invoke-static {v1, v5, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;I)V
    .line 1019
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeObjectsByReferences(Ljava/util/ArrayList;)V
    const/high16 p1, 0x3f800000    # 1.0f
    .line 1020
    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setRenderMode(ZF)V
    .line 1021
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->unHideAll()V
    .line 1022
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setVisibility(I)V
    .line 1023
    iget p1, v3, Landroid/graphics/Rect;->left:I
    int-to-float p1, p1
    div-float v10, p1, v2
    .line 1024
    iget p1, v3, Landroid/graphics/Rect;->top:I
    int-to-float p1, p1
    div-float v11, p1, v2
    .line 1025
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I
    move-result p1
    int-to-float p1, p1
    div-float v12, p1, v2
    .line 1026
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I
    move-result p1
    int-to-float p1, p1
    div-float v13, p1, v2
    .line 1027
    sget v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_DRAWING:I
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object p1
    invoke-direct {v8, p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V
    const/4 v9, 0x0
    move-object v6, p0
    invoke-virtual/range {v6 .. v13}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;
    goto :goto_1
    .line 1012
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V
    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .line 1030
    :catch_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object p1
    const v1, 0x7f0c00b5
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :goto_1
    return-void
    const/4 v0, 0x2
.end method
.method public moveCurrShapeToBack()V
    .locals 6
    const/4 v5, 0x0
    .line 351
    const/4 v5, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_3
    const/4 v5, 0x2
    .line 352
    const/4 v5, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 353
    const/4 v5, 0x0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result v1
    .line 354
    const/4 v5, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v2, :cond_0
    const/4 v5, 0x2
    .line 355
    const/4 v5, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result v4
    invoke-interface {v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onObjectZChanged(Ljava/lang/String;I)V
    :cond_0
    const/4 v5, 0x0
    if-lez v1, :cond_1
    const/4 v5, 0x1
    .line 358
    const/4 v5, 0x2
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->detachViewFromParent(I)V
    const/4 v1, 0x0
    .line 359
    const/4 v5, 0x3
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    invoke-virtual {p0, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .line 361
    const/4 v5, 0x0
    :cond_1
    const/4 v5, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    if-eqz v0, :cond_2
    const/4 v5, 0x2
    .line 362
    const/4 v5, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectZChange()V
    .line 364
    const/4 v5, 0x0
    :cond_2
    const/4 v5, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->invalidate()V
    :cond_3
    const/4 v5, 0x2
    return-void
    const/4 v1, 0x1
.end method
.method public moveCurrShapeToFront()V
    .locals 5
    const/4 v4, 0x0
    .line 320
    const/4 v4, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 321
    const/4 v4, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v1, :cond_0
    const/4 v4, 0x3
    .line 322
    const/4 v4, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result v3
    invoke-interface {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onObjectZChanged(Ljava/lang/String;I)V
    .line 324
    const/4 v4, 0x1
    :cond_0
    const/4 v4, 0x2
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bringToFront()V
    .line 325
    const/4 v4, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    if-eqz v0, :cond_1
    const/4 v4, 0x0
    .line 326
    const/4 v4, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectZChange()V
    .line 328
    const/4 v4, 0x2
    :cond_1
    const/4 v4, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->invalidate()V
    return-void
    const/4 v0, 0x0
.end method
.method public moveCurrTextToBack()V
    .locals 6
    const/4 v5, 0x1
    .line 332
    const/4 v5, 0x2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_3
    const/4 v5, 0x3
    .line 333
    const/4 v5, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .line 334
    const/4 v5, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result v1
    .line 335
    const/4 v5, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v2, :cond_0
    const/4 v5, 0x3
    .line 336
    const/4 v5, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result v4
    invoke-interface {v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onObjectZChanged(Ljava/lang/String;I)V
    :cond_0
    const/4 v5, 0x1
    if-lez v1, :cond_1
    const/4 v5, 0x2
    .line 339
    const/4 v5, 0x3
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->detachViewFromParent(I)V
    const/4 v1, 0x0
    .line 340
    const/4 v5, 0x0
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    invoke-virtual {p0, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .line 342
    const/4 v5, 0x1
    :cond_1
    const/4 v5, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    if-eqz v0, :cond_2
    const/4 v5, 0x3
    .line 343
    const/4 v5, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectZChange()V
    .line 345
    const/4 v5, 0x1
    :cond_2
    const/4 v5, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->invalidate()V
    :cond_3
    const/4 v5, 0x3
    return-void
    const/4 v1, 0x1
.end method
.method public moveCurrTextToFront()V
    .locals 5
    const/4 v4, 0x1
    .line 308
    const/4 v4, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .line 309
    const/4 v4, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v1, :cond_0
    const/4 v4, 0x0
    .line 310
    const/4 v4, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result v3
    invoke-interface {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onObjectZChanged(Ljava/lang/String;I)V
    .line 312
    const/4 v4, 0x2
    :cond_0
    const/4 v4, 0x3
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bringToFront()V
    .line 313
    const/4 v4, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    if-eqz v0, :cond_1
    const/4 v4, 0x1
    .line 314
    const/4 v4, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectZChange()V
    .line 316
    const/4 v4, 0x3
    :cond_1
    const/4 v4, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->invalidate()V
    return-void
    const/4 v0, 0x0
.end method
.method public onEvent_SelectShape(I)V
    .locals 2
    const/4 v1, 0x2
    .line 631
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v0, :cond_0
    const/4 v1, 0x0
    .line 632
    const/4 v1, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->objectTouch()V
    :cond_0
    const/4 v1, 0x2
    const/4 v0, -0x1
    .line 634
    const/4 v1, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    .line 635
    const/4 v1, 0x0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    return-void
    const/4 v1, 0x1
.end method
.method public onEvent_SelectText(I)V
    .locals 2
    const/4 v1, 0x2
    .line 609
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v0, :cond_0
    const/4 v1, 0x0
    .line 610
    const/4 v1, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->objectTouch()V
    :cond_0
    const/4 v1, 0x2
    const/4 v0, -0x1
    .line 612
    const/4 v1, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    .line 613
    const/4 v1, 0x0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    return-void
    const/4 v1, 0x1
.end method
.method public onEvent_ShapeGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    const/4 v1, 0x2
    .line 640
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v0, :cond_0
    const/4 v1, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-interface {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onShapeGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
    :cond_0
    const/4 v1, 0x1
    return-void
    const/4 v1, 0x1
.end method
.method public onEvent_TextGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    const/4 v1, 0x3
    .line 625
    const/4 v1, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v0, :cond_0
    const/4 v1, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-interface {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
    :cond_0
    const/4 v1, 0x2
    return-void
    const/4 v1, 0x1
.end method
.method public onEvent_doubleTapText()V
    .locals 2
    const/4 v1, 0x0
    .line 618
    const/4 v1, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v0, :cond_0
    const/4 v1, 0x2
    .line 619
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextDoubleTap()V
    :cond_0
    const/4 v1, 0x0
    return-void
    const/4 v1, 0x1
.end method
.method protected onSizeChanged(IIII)V
    .locals 4
    const/4 v3, 0x2
    .line 388
    const/4 v3, 0x3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V
    if-ne p1, p3, :cond_0
    const/4 v3, 0x0
    if-eq p2, p4, :cond_3
    const/4 v3, 0x1
    .line 390
    const/4 v3, 0x2
    :cond_0
    const/4 v3, 0x3
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->willResize:Z
    if-eqz v0, :cond_3
    const/4 v3, 0x0
    .line 391
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :goto_0
    const/4 v3, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_1
    const/4 v3, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 392
    const/4 v3, 0x0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 393
    const/4 v3, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rearrange(IIII)V
    goto :goto_0
    const/4 v3, 0x2
    .line 395
    const/4 v3, 0x3
    :cond_1
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :goto_1
    const/4 v3, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_2
    const/4 v3, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 396
    const/4 v3, 0x3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 397
    const/4 v3, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rearrange(IIII)V
    goto :goto_1
    const/4 v3, 0x1
    :cond_2
    const/4 v3, 0x2
    const/4 p1, 0x0
    .line 399
    const/4 v3, 0x3
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->willResize:Z
    :cond_3
    const/4 v3, 0x0
    return-void
    const/4 v1, 0x3
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->handlePinchTouch(Lcom/imaginstudio/imagetools/pixellab/textContainer;Landroid/view/MotionEvent;)Z
    move-result v0
    if-eqz v0, :plus_continue_touch
    const/4 v0, 0x1
    return v0
:plus_continue_touch
    const/4 v3, 0x2
    .line 124
    const/4 v3, 0x3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 0x1
    if-nez v0, :cond_0
    const/4 v3, 0x0
    .line 125
    const/4 v3, 0x1
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->passEventToAll(Landroid/view/MotionEvent;)I
    move-result p1
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I
    goto :goto_2
    const/4 v3, 0x2
    .line 126
    const/4 v3, 0x3
    :cond_0
    const/4 v3, 0x0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    if-eq v0, v1, :cond_2
    const/4 v3, 0x1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v2, 0x3
    if-ne v0, v2, :cond_1
    const/4 v3, 0x2
    goto :goto_0
    const/4 v3, 0x3
    .line 131
    const/4 v3, 0x0
    :cond_1
    const/4 v3, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I
    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->passEventTo(Landroid/view/MotionEvent;I)V
    goto :goto_2
    const/4 v3, 0x2
    .line 127
    const/4 v3, 0x3
    :cond_2
    const/4 v3, 0x0
    :goto_0
    const/4 v3, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I
    const/4 v2, -0x1
    if-ne v0, v2, :cond_3
    const/4 v3, 0x2
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->clickedNothing()V
    goto :goto_1
    const/4 v3, 0x3
    .line 128
    const/4 v3, 0x0
    :cond_3
    const/4 v3, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I
    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->passEventTo(Landroid/view/MotionEvent;I)V
    .line 129
    const/4 v3, 0x2
    :goto_1
    const/4 v3, 0x3
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I
    :goto_2
    const/4 v3, 0x0
    return v1
    const/4 v1, 0x3
.end method
.method public positionObjects(Ljava/util/ArrayList;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;FF)V"
        }
    .end annotation
    const/4 v3, 0x2
    .line 882
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_0
    const/4 v3, 0x0
    :goto_0
    const/4 v3, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_1
    const/4 v3, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 883
    const/4 v3, 0x3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 884
    const/4 v3, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 885
    const/4 v3, 0x1
    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :cond_0
    const/4 v3, 0x2
    .line 886
    const/4 v3, 0x3
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F
    move-result v2
    add-float/2addr v2, p2
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V
    .line 887
    const/4 v3, 0x0
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F
    move-result v2
    add-float/2addr v2, p3
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V
    goto :goto_0
    const/4 v3, 0x1
    .line 890
    const/4 v3, 0x2
    :cond_1
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_2
    const/4 v3, 0x0
    :goto_1
    const/4 v3, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_3
    const/4 v3, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 891
    const/4 v3, 0x3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 892
    const/4 v3, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .line 893
    const/4 v3, 0x1
    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :cond_2
    const/4 v3, 0x2
    .line 894
    const/4 v3, 0x3
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F
    move-result v2
    add-float/2addr v2, p2
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V
    .line 895
    const/4 v3, 0x0
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F
    move-result v2
    add-float/2addr v2, p3
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V
    goto :goto_1
    const/4 v3, 0x1
    :cond_3
    const/4 v3, 0x2
    return-void
    const/4 v1, 0x3
.end method
.method public recreateObjects(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
    const/4 v7, 0x0
    if-eqz p2, :cond_2
    const/4 v7, 0x1
    .line 285
    const/4 v7, 0x2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_0
    const/4 v7, 0x3
    :goto_0
    const/4 v7, 0x0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_2
    const/4 v7, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    const-string v2, "shape"
    .line 286
    const/4 v7, 0x2
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v2
    const/4 v3, 0x5
    const/4 v4, 0x0
    if-eqz v2, :cond_1
    const/4 v7, 0x3
    .line 287
    const/4 v7, 0x0
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    add-int/lit8 v2, v2, 0x1
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    .line 288
    const/4 v7, 0x1
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v6
    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;
    move-result-object v3
    invoke-direct {v2, v5, v6, v4, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V
    .line 289
    const/4 v7, 0x2
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .line 290
    const/4 v7, 0x3
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    iput v3, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I
    .line 291
    const/4 v7, 0x0
    invoke-virtual {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setTouchEventListener(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;)V
    .line 292
    const/4 v7, 0x1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v1
    invoke-virtual {p0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addView(Landroid/view/View;I)V
    goto :goto_0
    const/4 v7, 0x2
    :cond_1
    const/4 v7, 0x3
    const-string v2, "text"
    .line 294
    const/4 v7, 0x0
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :cond_0
    const/4 v7, 0x1
    .line 295
    const/4 v7, 0x2
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    add-int/lit8 v2, v2, 0x1
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    .line 296
    const/4 v7, 0x3
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v6
    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;
    move-result-object v3
    invoke-direct {v2, v5, v6, v4, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V
    .line 297
    const/4 v7, 0x0
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .line 298
    const/4 v7, 0x1
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    iput v3, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I
    .line 299
    const/4 v7, 0x2
    invoke-virtual {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTouchEventListener(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;)V
    .line 300
    const/4 v7, 0x3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v1
    invoke-virtual {p0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addView(Landroid/view/View;I)V
    goto/16 :goto_0
    const/4 v7, 0x0
    :cond_2
    const/4 v7, 0x1
    return-void
    const/4 v1, 0x3
.end method
.method public redrawAll()V
    .locals 4
    const/4 v3, 0x3
    .line 558
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :goto_0
    const/4 v3, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_0
    const/4 v3, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 559
    const/4 v3, 0x3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 560
    const/4 v3, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->postInvalidate()V
    goto :goto_0
    const/4 v3, 0x1
    .line 562
    const/4 v3, 0x2
    :cond_0
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :goto_1
    const/4 v3, 0x0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_1
    const/4 v3, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 563
    const/4 v3, 0x2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 564
    const/4 v3, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->postInvalidate()V
    goto :goto_1
    const/4 v3, 0x0
    :cond_1
    const/4 v3, 0x1
    return-void
    const/4 v1, 0x3
.end method
.method public relativePosObjects(Ljava/util/ArrayList;Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;",
            ")V"
        }
    .end annotation
    const/4 v4, 0x3
    .line 927
    const/4 v4, 0x0
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getObjectsBoundingBox(Ljava/util/ArrayList;)Landroid/graphics/RectF;
    move-result-object v0
    .line 930
    const/4 v4, 0x1
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/textContainer$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$textContainer$floatObject:[I
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->ordinal()I
    move-result p2
    aget p2, v1, p2
    const/high16 v1, -0x40800000    # -1.0f
    const/high16 v2, 0x3f000000    # 0.5f
    const/4 v3, 0x0
    packed-switch p2, :pswitch_data_0
    const/4 p2, 0x0
    :goto_0
    const/4 v4, 0x2
    const/4 v0, 0x0
    goto :goto_2
    const/4 v4, 0x3
    .line 947
    const/4 v4, 0x0
    :pswitch_0
    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I
    move-result p2
    int-to-float p2, p2
    mul-float p2, p2, v2
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F
    move-result v0
    sub-float/2addr p2, v0
    goto :goto_1
    const/4 v4, 0x1
    .line 944
    const/4 v4, 0x2
    :pswitch_1
    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I
    move-result p2
    int-to-float p2, p2
    mul-float p2, p2, v2
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F
    move-result v0
    sub-float/2addr p2, v0
    goto :goto_0
    const/4 v4, 0x3
    .line 941
    const/4 v4, 0x0
    :pswitch_2
    iget p2, v0, Landroid/graphics/RectF;->top:F
    mul-float p2, p2, v1
    goto :goto_1
    const/4 v4, 0x1
    .line 938
    const/4 v4, 0x2
    :pswitch_3
    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I
    move-result p2
    int-to-float p2, p2
    iget v0, v0, Landroid/graphics/RectF;->bottom:F
    sub-float/2addr p2, v0
    :goto_1
    const/4 v4, 0x3
    move v0, p2
    const/4 p2, 0x0
    goto :goto_2
    const/4 v4, 0x0
    .line 935
    const/4 v4, 0x1
    :pswitch_4
    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I
    move-result p2
    int-to-float p2, p2
    iget v0, v0, Landroid/graphics/RectF;->right:F
    sub-float/2addr p2, v0
    goto :goto_0
    const/4 v4, 0x2
    .line 932
    const/4 v4, 0x3
    :pswitch_5
    iget p2, v0, Landroid/graphics/RectF;->left:F
    mul-float p2, p2, v1
    goto :goto_0
    const/4 v4, 0x0
    :goto_2
    const/4 v4, 0x1
    cmpl-float v1, p2, v3
    if-nez v1, :cond_0
    const/4 v4, 0x2
    cmpl-float v1, v0, v3
    if-eqz v1, :cond_4
    const/4 v4, 0x3
    .line 951
    const/4 v4, 0x0
    :cond_0
    const/4 v4, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_1
    const/4 v4, 0x2
    :goto_3
    const/4 v4, 0x3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_2
    const/4 v4, 0x0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Map$Entry;
    .line 952
    const/4 v4, 0x1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    .line 953
    const/4 v4, 0x2
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 954
    const/4 v4, 0x3
    iget-object v3, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :cond_1
    const/4 v4, 0x0
    .line 955
    const/4 v4, 0x1
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F
    move-result v3
    add-float/2addr v3, p2
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V
    .line 956
    const/4 v4, 0x2
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F
    move-result v3
    add-float/2addr v3, v0
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V
    goto :goto_3
    const/4 v4, 0x3
    .line 959
    const/4 v4, 0x0
    :cond_2
    const/4 v4, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_3
    const/4 v4, 0x2
    :goto_4
    const/4 v4, 0x3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_4
    const/4 v4, 0x0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Map$Entry;
    .line 960
    const/4 v4, 0x1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    .line 961
    const/4 v4, 0x2
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .line 962
    const/4 v4, 0x3
    iget-object v3, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :cond_3
    const/4 v4, 0x0
    .line 963
    const/4 v4, 0x1
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F
    move-result v3
    add-float/2addr v3, p2
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V
    .line 964
    const/4 v4, 0x2
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F
    move-result v3
    add-float/2addr v3, v0
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V
    goto :goto_4
    const/4 v4, 0x3
    :cond_4
    const/4 v4, 0x0
    return-void
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    const/4 v0, 0x0
.end method
.method public removeCurrentObject()V
    .locals 3
    const/4 v2, 0x2
    .line 511
    const/4 v2, 0x3
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0
    const/4 v2, 0x0
    .line 512
    const/4 v2, 0x1
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeCurrent()V
    goto :goto_0
    const/4 v2, 0x2
    .line 514
    const/4 v2, 0x3
    :cond_0
    const/4 v2, 0x0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    if-eq v0, v1, :cond_1
    const/4 v2, 0x1
    .line 515
    const/4 v2, 0x2
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeCurrentShape()V
    :cond_1
    const/4 v2, 0x3
    :goto_0
    const/4 v2, 0x0
    return-void
    const/4 v0, 0x2
.end method
.method public removeObjectByReference(Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/lang/String;Z)V
    .locals 5
    const/4 v4, 0x2
    .line 763
    const/4 v4, 0x3
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    if-eq p1, v0, :cond_0
    const/4 v4, 0x0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    if-ne p1, v0, :cond_2
    const/4 v4, 0x1
    .line 764
    const/4 v4, 0x2
    :cond_0
    const/4 v4, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_1
    const/4 v4, 0x0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_2
    const/4 v4, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 765
    const/4 v4, 0x2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 766
    const/4 v4, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :cond_1
    const/4 v4, 0x0
    .line 767
    const/4 v4, 0x1
    invoke-direct {p0, v1, p3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeText(IZ)V
    return-void
    .line 772
    const/4 v4, 0x2
    :cond_2
    const/4 v4, 0x3
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    if-eq p1, v0, :cond_3
    const/4 v4, 0x0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    if-ne p1, v0, :cond_5
    const/4 v4, 0x1
    .line 773
    const/4 v4, 0x2
    :cond_3
    const/4 v4, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object p1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object p1
    :cond_4
    const/4 v4, 0x0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_5
    const/4 v4, 0x1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;
    .line 774
    const/4 v4, 0x2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    .line 775
    const/4 v4, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :cond_4
    const/4 v4, 0x0
    .line 776
    const/4 v4, 0x1
    invoke-direct {p0, v0, p3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeShape(IZ)V
    return-void
    :cond_5
    const/4 v4, 0x2
    return-void
    const/4 v0, 0x0
.end method
.method public removeObjectsByReferences(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
    const/4 v3, 0x0
    if-eqz p1, :cond_0
    const/4 v3, 0x1
    .line 753
    const/4 v3, 0x2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :cond_0
    const/4 v3, 0x3
    .line 754
    const/4 v3, 0x0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object p1
    :goto_0
    const/4 v3, 0x1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_0
    const/4 v3, 0x2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    .line 755
    const/4 v3, 0x3
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    const/4 v2, 0x0
    invoke-virtual {p0, v1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeObjectByReference(Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/lang/String;Z)V
    goto :goto_0
    const/4 v3, 0x0
    .line 758
    const/4 v3, 0x1
    :cond_0
    const/4 v3, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    if-eqz p1, :cond_1
    const/4 v3, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectCountChanged()V
    :cond_1
    const/4 v3, 0x0
    return-void
    const/4 v1, 0x3
.end method
.method public removeView(Landroid/view/View;)V
    .locals 1
    const/4 v0, 0x2
    .line 788
    const/4 v0, 0x3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    .line 789
    const/4 v0, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    if-eqz p1, :cond_0
    const/4 v0, 0x1
    .line 790
    const/4 v0, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectCountChanged()V
    :cond_0
    const/4 v0, 0x3
    return-void
    const/4 v0, 0x0
.end method
.method public removeView(Landroid/view/View;Z)V
    .locals 1
    const/4 v0, 0x1
    if-eqz p2, :cond_0
    const/4 v0, 0x2
    .line 783
    const/4 v0, 0x3
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeView(Landroid/view/View;)V
    goto :goto_0
    const/4 v0, 0x0
    .line 784
    const/4 v0, 0x1
    :cond_0
    const/4 v0, 0x2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :goto_0
    const/4 v0, 0x3
    return-void
    const/4 v0, 0x0
.end method
.method public resetAll()V
    .locals 2
    const/4 v1, 0x1
    .line 53
    const/4 v1, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeAllViews()V
    .line 54
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    .line 55
    const/4 v1, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    const/4 v0, -0x1
    .line 56
    const/4 v1, 0x1
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    .line 57
    const/4 v1, 0x2
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    .line 58
    const/4 v1, 0x3
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    .line 59
    const/4 v1, 0x0
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    return-void
    const/4 v1, 0x1
.end method
.method public rotateObjects(Ljava/util/ArrayList;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
    const/4 v11, 0x2
    .line 831
    const/4 v11, 0x3
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->computeObjectsCenter(Ljava/util/ArrayList;)Landroid/graphics/PointF;
    move-result-object v0
    .line 832
    const/4 v11, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_0
    const/4 v11, 0x1
    :goto_0
    const/4 v11, 0x2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_1
    const/4 v11, 0x3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Map$Entry;
    .line 833
    const/4 v11, 0x0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    .line 834
    const/4 v11, 0x1
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 835
    const/4 v11, 0x2
    iget-object v3, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :cond_0
    const/4 v11, 0x3
    .line 836
    const/4 v11, 0x0
    iget v3, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I
    add-int/2addr v3, p2
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateShape(I)V
    .line 837
    const/4 v11, 0x1
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getGlobalCenter(Landroid/view/View;)Landroid/graphics/PointF;
    move-result-object v3
    int-to-double v4, p2
    .line 838
    const/4 v11, 0x2
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
    move-result-wide v4
    iget v6, v3, Landroid/graphics/PointF;->y:F
    iget v7, v0, Landroid/graphics/PointF;->y:F
    sub-float/2addr v6, v7
    float-to-double v6, v6
    iget v8, v3, Landroid/graphics/PointF;->x:F
    iget v9, v0, Landroid/graphics/PointF;->x:F
    sub-float/2addr v8, v9
    float-to-double v8, v8
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D
    move-result-wide v6
    add-double/2addr v4, v6
    double-to-float v4, v4
    .line 839
    const/4 v11, 0x3
    invoke-static {v3, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    move-result v3
    .line 840
    const/4 v11, 0x0
    iget v5, v0, Landroid/graphics/PointF;->x:F
    float-to-double v5, v5
    float-to-double v7, v3
    float-to-double v3, v4
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D
    move-result-wide v9
    mul-double v9, v9, v7
    add-double/2addr v5, v9
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPivotX()F
    move-result v9
    float-to-double v9, v9
    sub-double/2addr v5, v9
    double-to-float v5, v5
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V
    .line 841
    const/4 v11, 0x1
    iget v5, v0, Landroid/graphics/PointF;->y:F
    float-to-double v5, v5
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D
    move-result-wide v3
    mul-double v7, v7, v3
    add-double/2addr v5, v7
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPivotY()F
    move-result v3
    float-to-double v3, v3
    sub-double/2addr v5, v3
    double-to-float v3, v5
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V
    goto/16 :goto_0
    const/4 v11, 0x2
    .line 844
    const/4 v11, 0x3
    :cond_1
    const/4 v11, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_2
    const/4 v11, 0x1
    :goto_1
    const/4 v11, 0x2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_3
    const/4 v11, 0x3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Map$Entry;
    .line 845
    const/4 v11, 0x0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    .line 846
    const/4 v11, 0x1
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .line 847
    const/4 v11, 0x2
    iget-object v3, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :cond_2
    const/4 v11, 0x3
    .line 848
    const/4 v11, 0x0
    iget v3, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I
    add-int/2addr v3, p2
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(I)V
    .line 849
    const/4 v11, 0x1
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getGlobalCenter(Landroid/view/View;)Landroid/graphics/PointF;
    move-result-object v3
    int-to-double v4, p2
    .line 850
    const/4 v11, 0x2
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D
    move-result-wide v4
    iget v6, v3, Landroid/graphics/PointF;->y:F
    iget v7, v0, Landroid/graphics/PointF;->y:F
    sub-float/2addr v6, v7
    float-to-double v6, v6
    iget v8, v3, Landroid/graphics/PointF;->x:F
    iget v9, v0, Landroid/graphics/PointF;->x:F
    sub-float/2addr v8, v9
    float-to-double v8, v8
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D
    move-result-wide v6
    add-double/2addr v4, v6
    double-to-float v4, v4
    .line 851
    const/4 v11, 0x3
    invoke-static {v3, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    move-result v3
    .line 852
    const/4 v11, 0x0
    iget v5, v0, Landroid/graphics/PointF;->x:F
    float-to-double v5, v5
    float-to-double v7, v3
    float-to-double v3, v4
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D
    move-result-wide v9
    mul-double v9, v9, v7
    add-double/2addr v5, v9
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getPivotX()F
    move-result v9
    float-to-double v9, v9
    sub-double/2addr v5, v9
    double-to-float v5, v5
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V
    .line 853
    const/4 v11, 0x1
    iget v5, v0, Landroid/graphics/PointF;->y:F
    float-to-double v5, v5
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D
    move-result-wide v3
    mul-double v7, v7, v3
    add-double/2addr v5, v7
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getPivotY()F
    move-result v3
    float-to-double v3, v3
    sub-double/2addr v5, v3
    double-to-float v3, v5
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V
    goto/16 :goto_1
    const/4 v11, 0x2
    :cond_3
    const/4 v11, 0x3
    return-void
    const/4 v1, 0x3
.end method
.method public scaleObjects(Ljava/util/ArrayList;F)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation
    const/4 v6, 0x1
    .line 900
    const/4 v6, 0x2
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->computeObjectsCenter(Ljava/util/ArrayList;)Landroid/graphics/PointF;
    move-result-object v0
    .line 901
    const/4 v6, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_0
    const/4 v6, 0x0
    :goto_0
    const/4 v6, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_1
    const/4 v6, 0x2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Map$Entry;
    .line 902
    const/4 v6, 0x3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    .line 903
    const/4 v6, 0x0
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 904
    const/4 v6, 0x1
    iget-object v3, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :cond_0
    const/4 v6, 0x2
    .line 905
    const/4 v6, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getGlobalCenter(Landroid/view/View;)Landroid/graphics/PointF;
    move-result-object v3
    .line 906
    const/4 v6, 0x0
    iget v4, v3, Landroid/graphics/PointF;->x:F
    iget v5, v0, Landroid/graphics/PointF;->x:F
    sub-float/2addr v4, v5
    mul-float v4, v4, p2
    .line 907
    const/4 v6, 0x1
    iget v3, v3, Landroid/graphics/PointF;->y:F
    iget v5, v0, Landroid/graphics/PointF;->y:F
    sub-float/2addr v3, v5
    mul-float v3, v3, p2
    .line 908
    const/4 v6, 0x2
    iget v5, v0, Landroid/graphics/PointF;->x:F
    add-float/2addr v5, v4
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPivotX()F
    move-result v4
    sub-float/2addr v5, v4
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V
    .line 909
    const/4 v6, 0x3
    iget v4, v0, Landroid/graphics/PointF;->y:F
    add-float/2addr v4, v3
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPivotY()F
    move-result v3
    sub-float/2addr v4, v3
    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V
    .line 910
    const/4 v6, 0x0
    invoke-virtual {v2, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->relativeScale(F)V
    goto :goto_0
    const/4 v6, 0x1
    .line 913
    const/4 v6, 0x2
    :cond_1
    const/4 v6, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_2
    const/4 v6, 0x0
    :goto_1
    const/4 v6, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_3
    const/4 v6, 0x2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Map$Entry;
    .line 914
    const/4 v6, 0x3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    .line 915
    const/4 v6, 0x0
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .line 916
    const/4 v6, 0x1
    iget-object v3, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :cond_2
    const/4 v6, 0x2
    .line 917
    const/4 v6, 0x3
    invoke-virtual {v2, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->relativeScale(F)V
    .line 918
    const/4 v6, 0x0
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getGlobalCenter(Landroid/view/View;)Landroid/graphics/PointF;
    move-result-object v3
    .line 919
    const/4 v6, 0x1
    iget v4, v3, Landroid/graphics/PointF;->x:F
    iget v5, v0, Landroid/graphics/PointF;->x:F
    sub-float/2addr v4, v5
    mul-float v4, v4, p2
    .line 920
    const/4 v6, 0x2
    iget v3, v3, Landroid/graphics/PointF;->y:F
    iget v5, v0, Landroid/graphics/PointF;->y:F
    sub-float/2addr v3, v5
    mul-float v3, v3, p2
    .line 921
    const/4 v6, 0x3
    iget v5, v0, Landroid/graphics/PointF;->x:F
    add-float/2addr v5, v4
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getPivotX()F
    move-result v4
    sub-float/2addr v5, v4
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V
    .line 922
    const/4 v6, 0x0
    iget v4, v0, Landroid/graphics/PointF;->y:F
    add-float/2addr v4, v3
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getPivotY()F
    move-result v3
    sub-float/2addr v4, v3
    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V
    goto :goto_1
    const/4 v6, 0x1
    :cond_3
    const/4 v6, 0x2
    return-void
    const/4 v0, 0x2
.end method
.method public selectByReference(Ljava/lang/String;)V
    .locals 7
    const/4 v6, 0x0
    .line 487
    const/4 v6, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_0
    const/4 v6, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    const/4 v2, -0x1
    if-eqz v1, :cond_1
    const/4 v6, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 488
    const/4 v6, 0x0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 489
    const/4 v6, 0x1
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :cond_0
    const/4 v6, 0x2
    .line 490
    const/4 v6, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I
    goto :goto_0
    const/4 v6, 0x0
    :cond_1
    const/4 v6, 0x1
    const/4 v0, -0x1
    .line 494
    const/4 v6, 0x2
    :goto_0
    const/4 v6, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_2
    const/4 v6, 0x0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :cond_3
    const/4 v6, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/util/Map$Entry;
    .line 495
    const/4 v6, 0x2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v3
    .line 496
    const/4 v6, 0x3
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_2
    const/4 v6, 0x0
    .line 497
    const/4 v6, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    iget v2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I
    .line 502
    const/4 v6, 0x2
    :cond_3
    const/4 v6, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    .line 503
    const/4 v6, 0x0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    return-void
    const/4 v0, 0x2
.end method
.method public selectShapeId(I)V
    .locals 8
    const/4 v7, 0x2
    const/4 v0, 0x1
    const/4 v1, 0x0
    const/4 v2, -0x1
    if-ne p1, v2, :cond_1
    const/4 v7, 0x3
    .line 570
    const/4 v7, 0x0
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v3
    :cond_0
    const/4 v7, 0x1
    :goto_0
    const/4 v7, 0x2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :cond_4
    const/4 v7, 0x3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/Map$Entry;
    .line 571
    const/4 v7, 0x0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    .line 572
    const/4 v7, 0x1
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected()Z
    move-result v5
    if-eqz v5, :cond_0
    const/4 v7, 0x2
    .line 573
    const/4 v7, 0x3
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v4, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->toggleSelect(Z)V
    goto :goto_0
    const/4 v7, 0x0
    .line 578
    const/4 v7, 0x1
    :cond_1
    const/4 v7, 0x2
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v3
    :cond_2
    const/4 v7, 0x3
    :goto_1
    const/4 v7, 0x0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :cond_4
    const/4 v7, 0x1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/Map$Entry;
    .line 579
    const/4 v7, 0x2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    if-eq v4, p1, :cond_3
    const/4 v7, 0x3
    .line 581
    const/4 v7, 0x0
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected()Z
    move-result v5
    if-eqz v5, :cond_2
    const/4 v7, 0x1
    .line 582
    const/4 v7, 0x2
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v4, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->toggleSelect(Z)V
    goto :goto_1
    const/4 v7, 0x3
    .line 586
    const/4 v7, 0x0
    :cond_3
    const/4 v7, 0x1
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected()Z
    move-result v5
    if-nez v5, :cond_2
    const/4 v7, 0x2
    .line 587
    const/4 v7, 0x3
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v4, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->toggleSelect(Z)V
    goto :goto_1
    const/4 v7, 0x0
    .line 595
    const/4 v7, 0x1
    :cond_4
    const/4 v7, 0x2
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :cond_5
    const/4 v7, 0x3
    .line 596
    const/4 v7, 0x0
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    goto :goto_2
    const/4 v7, 0x1
    .line 599
    const/4 v7, 0x2
    :cond_5
    const/4 v7, 0x3
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    .line 601
    const/4 v7, 0x0
    :goto_2
    const/4 v7, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz p1, :cond_8
    const/4 v7, 0x2
    .line 602
    const/4 v7, 0x3
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    if-ne p1, v2, :cond_6
    const/4 v7, 0x0
    const/4 p1, 0x0
    goto :goto_3
    const/4 v7, 0x1
    :cond_6
    const/4 v7, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I
    move-result p1
    .line 603
    const/4 v7, 0x3
    :goto_3
    const/4 v7, 0x0
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    if-eq v4, v2, :cond_7
    const/4 v7, 0x1
    goto :goto_4
    const/4 v7, 0x2
    :cond_7
    const/4 v7, 0x3
    const/4 v0, 0x0
    :goto_4
    const/4 v7, 0x0
    invoke-interface {v3, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onShapeSelectionChanged(ZI)V
    :cond_8
    const/4 v7, 0x1
    return-void
    const/4 v1, 0x3
.end method
.method public selectTextId(I)V
    .locals 8
    const/4 v7, 0x3
    const/4 v0, 0x1
    const/4 v1, 0x0
    const/4 v2, -0x1
    if-ne p1, v2, :cond_1
    const/4 v7, 0x0
    .line 522
    const/4 v7, 0x1
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v3
    :cond_0
    const/4 v7, 0x2
    :goto_0
    const/4 v7, 0x3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :cond_4
    const/4 v7, 0x0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/Map$Entry;
    .line 523
    const/4 v7, 0x1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    .line 524
    const/4 v7, 0x2
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected()Z
    move-result v5
    if-eqz v5, :cond_0
    const/4 v7, 0x3
    .line 525
    const/4 v7, 0x0
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v4, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->toggleSelect(Z)V
    goto :goto_0
    const/4 v7, 0x1
    .line 530
    const/4 v7, 0x2
    :cond_1
    const/4 v7, 0x3
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v3
    :cond_2
    const/4 v7, 0x0
    :goto_1
    const/4 v7, 0x1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :cond_4
    const/4 v7, 0x2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/Map$Entry;
    .line 531
    const/4 v7, 0x3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    move-result v4
    if-eq v4, p1, :cond_3
    const/4 v7, 0x0
    .line 533
    const/4 v7, 0x1
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected()Z
    move-result v5
    if-eqz v5, :cond_2
    const/4 v7, 0x2
    .line 534
    const/4 v7, 0x3
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v4, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->toggleSelect(Z)V
    goto :goto_1
    const/4 v7, 0x0
    .line 538
    const/4 v7, 0x1
    :cond_3
    const/4 v7, 0x2
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected()Z
    move-result v5
    if-nez v5, :cond_2
    const/4 v7, 0x3
    .line 539
    const/4 v7, 0x0
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v4, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->toggleSelect(Z)V
    goto :goto_1
    const/4 v7, 0x1
    .line 546
    const/4 v7, 0x2
    :cond_4
    const/4 v7, 0x3
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :cond_5
    const/4 v7, 0x0
    .line 547
    const/4 v7, 0x1
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    goto :goto_2
    const/4 v7, 0x2
    .line 550
    const/4 v7, 0x3
    :cond_5
    const/4 v7, 0x0
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    .line 552
    const/4 v7, 0x1
    :goto_2
    const/4 v7, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz p1, :cond_7
    const/4 v7, 0x3
    .line 553
    const/4 v7, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    if-eq v3, v2, :cond_6
    const/4 v7, 0x1
    goto :goto_3
    const/4 v7, 0x2
    :cond_6
    const/4 v7, 0x3
    const/4 v0, 0x0
    :goto_3
    const/4 v7, 0x0
    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextSelectionChanged(Z)V
    :cond_7
    const/4 v7, 0x1
    return-void
    const/4 v1, 0x3
.end method
.method public setLayersListener(Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;)V
    .locals 1
    const/4 v0, 0x3
    .line 746
    const/4 v0, 0x0
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    return-void
    const/4 v0, 0x0
.end method
.method public setObjectIdInLayout(Ljava/lang/String;Landroid/view/View;IZ)V
    .locals 2
    const/4 v1, 0x2
    if-ltz p3, :cond_3
    const/4 v1, 0x3
    .line 369
    const/4 v1, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getChildCount()I
    move-result v0
    if-lt p3, v0, :cond_0
    const/4 v1, 0x1
    goto :goto_0
    const/4 v1, 0x2
    :cond_0
    const/4 v1, 0x3
    if-eqz p4, :cond_1
    const/4 v1, 0x0
    .line 373
    const/4 v1, 0x1
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result p4
    .line 374
    const/4 v1, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    if-eqz v0, :cond_1
    const/4 v1, 0x3
    .line 375
    const/4 v1, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    invoke-interface {v0, p1, p4}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onObjectZChanged(Ljava/lang/String;I)V
    .line 378
    const/4 v1, 0x1
    :cond_1
    const/4 v1, 0x2
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->detachViewFromParent(Landroid/view/View;)V
    .line 379
    const/4 v1, 0x3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    invoke-virtual {p0, p2, p3, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .line 380
    const/4 v1, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->invalidate()V
    .line 381
    const/4 v1, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    if-eqz p1, :cond_2
    const/4 v1, 0x2
    .line 382
    const/4 v1, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;
    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectZChange()V
    :cond_2
    const/4 v1, 0x0
    return-void
    :cond_3
    const/4 v1, 0x1
    :goto_0
    const/4 v1, 0x2
    return-void
    const/4 v1, 0x1
.end method
.method public setRenderMode(ZF)V
    .locals 4
    const/4 v3, 0x0
    .line 63
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :goto_0
    const/4 v3, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_0
    const/4 v3, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 64
    const/4 v3, 0x0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 65
    const/4 v3, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v1, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setRenderMode(ZF)V
    goto :goto_0
    const/4 v3, 0x2
    .line 67
    const/4 v3, 0x3
    :cond_0
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :goto_1
    const/4 v3, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_1
    const/4 v3, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 68
    const/4 v3, 0x3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 69
    const/4 v3, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v1, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setRenderMode(ZF)V
    goto :goto_1
    const/4 v3, 0x1
    :cond_1
    const/4 v3, 0x2
    return-void
    const/4 v1, 0x3
.end method
.method public setSelectionListener(Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;)V
    .locals 1
    const/4 v0, 0x0
    .line 107
    const/4 v0, 0x1
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    return-void
    const/4 v0, 0x0
.end method
.method unHideAll()V
    .locals 3
    const/4 v2, 0x3
    const/4 v0, 0x0
    const/4 v1, 0x0
    .line 1034
    const/4 v2, 0x0
    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->hideAllBut(Ljava/util/ArrayList;Z)V
    return-void
    const/4 v0, 0x2
.end method
.method public undoCreateShape(Ljava/lang/String;)V
    .locals 5
    const/4 v4, 0x2
    .line 689
    const/4 v4, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_0
    const/4 v4, 0x0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_2
    const/4 v4, 0x1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 690
    const/4 v4, 0x2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 691
    const/4 v4, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :cond_0
    const/4 v4, 0x0
    .line 692
    const/4 v4, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeView(Landroid/view/View;)V
    .line 693
    const/4 v4, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    .line 694
    const/4 v4, 0x3
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    if-ne v1, p1, :cond_1
    const/4 v4, 0x0
    const/4 p1, -0x1
    .line 695
    const/4 v4, 0x1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    :cond_1
    const/4 v4, 0x2
    return-void
    :cond_2
    const/4 v4, 0x3
    return-void
    const/4 v0, 0x0
.end method
.method public undoCreateText(Ljava/lang/String;)V
    .locals 5
    const/4 v4, 0x1
    .line 668
    const/4 v4, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_0
    const/4 v4, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_2
    const/4 v4, 0x0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
    .line 669
    const/4 v4, 0x1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    move-result v1
    .line 670
    const/4 v4, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :cond_0
    const/4 v4, 0x3
    .line 671
    const/4 v4, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeView(Landroid/view/View;)V
    .line 672
    const/4 v4, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    .line 673
    const/4 v4, 0x2
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    if-ne v1, p1, :cond_1
    const/4 v4, 0x3
    const/4 p1, -0x1
    .line 674
    const/4 v4, 0x0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    :cond_1
    const/4 v4, 0x1
    return-void
    :cond_2
    const/4 v4, 0x2
    return-void
    const/4 v0, 0x0
.end method
.method public undoDeleteShape(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 4
    const/4 v3, 0x0
    .line 718
    const/4 v3, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    .line 719
    const/4 v3, 0x2
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v1
    const/4 v2, 0x0
    invoke-direct {v0, v1, p1, v2, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V
    .line 720
    const/4 v3, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .line 721
    const/4 v3, 0x0
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I
    .line 722
    const/4 v3, 0x1
    invoke-virtual {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setTouchEventListener(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;)V
    const/4 p1, -0x1
    .line 723
    const/4 v3, 0x2
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    .line 724
    const/4 v3, 0x3
    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    if-eq p2, p1, :cond_0
    const/4 v3, 0x0
    .line 726
    const/4 v3, 0x1
    invoke-virtual {p0, v0, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addView(Landroid/view/View;I)V
    goto :goto_0
    const/4 v3, 0x2
    .line 728
    const/4 v3, 0x3
    :cond_0
    const/4 v3, 0x0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addView(Landroid/view/View;)V
    :goto_0
    const/4 v3, 0x1
    return-void
    const/4 v1, 0x3
.end method
.method public undoDeleteText(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 4
    const/4 v3, 0x3
    .line 703
    const/4 v3, 0x0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    .line 704
    const/4 v3, 0x1
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getContext()Landroid/content/Context;
    move-result-object v1
    const/4 v2, 0x0
    invoke-direct {v0, v1, p1, v2, p3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V
    .line 705
    const/4 v3, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .line 706
    const/4 v3, 0x3
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I
    .line 707
    const/4 v3, 0x0
    invoke-virtual {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTouchEventListener(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;)V
    const/4 p1, -0x1
    .line 708
    const/4 v3, 0x1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    .line 709
    const/4 v3, 0x2
    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    if-eq p2, p1, :cond_0
    const/4 v3, 0x3
    .line 711
    const/4 v3, 0x0
    invoke-virtual {p0, v0, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addView(Landroid/view/View;I)V
    goto :goto_0
    const/4 v3, 0x1
    .line 713
    const/4 v3, 0x2
    :cond_0
    const/4 v3, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addView(Landroid/view/View;)V
    :goto_0
    const/4 v3, 0x0
    return-void
    const/4 v1, 0x3
.end method
.method public undoObjectZChange(Ljava/lang/String;I)V
    .locals 3
    const/4 v2, 0x2
    .line 682
    const/4 v2, 0x3
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getObjectByRef(Ljava/lang/String;)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :cond_0
    const/4 v2, 0x0
    const/4 v1, -0x1
    if-le p2, v1, :cond_0
    const/4 v2, 0x1
    const/4 v1, 0x0
    .line 684
    const/4 v2, 0x2
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setObjectIdInLayout(Ljava/lang/String;Landroid/view/View;IZ)V
    :cond_0
    const/4 v2, 0x3
    return-void
    const/4 v0, 0x2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->shouldInterceptPinch(Lcom/imaginstudio/imagetools/pixellab/textContainer;Landroid/view/MotionEvent;)Z
    move-result v0
    if-eqz v0, :plus_super_intercept
    const/4 v0, 0x1
    return v0
:plus_super_intercept
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    move-result v0
    return v0
.end method
