.class final Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$DeleteTextAction;
.super Ljava/lang/Object;
.source "PlusEnhancements.java"

# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeleteTextAction"
.end annotation

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;

# instance fields
.field private final container:Lcom/imaginstudio/imagetools/pixellab/textContainer;
.field private final target:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/textContainer;Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V
    .registers 3
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$DeleteTextAction;->container:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$DeleteTextAction;->target:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    const/4 v0, -0x1
    if-ne p2, v0, :delete_text_done
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$DeleteTextAction;->container:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$DeleteTextAction;->target:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->indexOfChild(Landroid/view/View;)I
    move-result v2
    if-ltz v2, :delete_text_done
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getSelectedComponent()Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
    move-result-object v2
    if-ne v2, v1, :delete_text_done
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeCurrentObject()V
    :delete_text_done
    return-void
.end method
