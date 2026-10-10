.class public Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;
.super Ljava/lang/Object;
.source "customTypeface.java"


# instance fields
.field path:Ljava/lang/String;

.field typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;->typeface:Landroid/graphics/Typeface;

    .line 14
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;->path:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;->typeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 19
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;->path:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    const/4 v1, 0x1

    .line 23
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;->typeface:Landroid/graphics/Typeface;

    return-object v0

    const/4 v1, 0x1
.end method
