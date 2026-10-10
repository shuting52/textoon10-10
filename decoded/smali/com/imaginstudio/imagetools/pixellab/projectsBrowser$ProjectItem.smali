.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;
.super Ljava/lang/Object;
.source "projectsBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProjectItem"
.end annotation


# instance fields
.field projectDir:Ljava/io/File;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;Ljava/io/File;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    return-void
.end method
