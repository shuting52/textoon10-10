.class public Lcom/imaginstudio/imagetools/pixellab/font/fontItem;
.super Ljava/lang/Object;
.source "fontItem.java"


# static fields
.field public static final ITEM:I = 0x0

.field public static final SECTION:I = 0x1


# instance fields
.field public final category_name:Ljava/lang/String;

.field public deletable:Z

.field public final font_name:Ljava/lang/String;

.field public final font_path:Ljava/lang/String;

.field public listPosition:I

.field public sectionPosition:I

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    .line 20
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->font_name:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->category_name:Ljava/lang/String;

    .line 23
    iput-boolean p5, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->deletable:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 28
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x2

    const-string v0, ":\""

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->font_name:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x1

    return-object v0

    const/4 v0, 0x2
.end method
