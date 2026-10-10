.class abstract Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
.super Ljava/lang/Object;
.source "CustomPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PathAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract addToArrayList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract copy()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
.end method
