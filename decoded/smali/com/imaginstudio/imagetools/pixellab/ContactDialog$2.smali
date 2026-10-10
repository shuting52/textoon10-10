.class Lcom/imaginstudio/imagetools/pixellab/ContactDialog$2;
.super Ljava/lang/Object;
.source "ContactDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ContactDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ContactDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ContactDialog;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 47
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->dismiss()V

    return-void

    const/4 v0, 0x0
.end method
