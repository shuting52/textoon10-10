.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$56;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentAsPreset(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$chosenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 2761
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$56;->val$chosenName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2764
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$56;->val$chosenName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2400(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V

    return-void

    const/4 v0, 0x0
.end method
