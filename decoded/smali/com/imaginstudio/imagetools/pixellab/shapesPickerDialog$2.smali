.class Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$2;
.super Ljava/lang/Object;
.source "shapesPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 64
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dismiss()V

    return-void

    const/4 v0, 0x0
.end method
