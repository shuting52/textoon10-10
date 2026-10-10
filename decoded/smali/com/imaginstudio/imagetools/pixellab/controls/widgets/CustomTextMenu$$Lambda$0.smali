.class final synthetic Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$$Lambda$0;->arg$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu$$Lambda$0;->arg$1:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->lambda$createItem$0$CustomTextMenu(Landroid/widget/TextView;Landroid/view/View;)V

    return-void

    const/4 v1, 0x1
.end method
