.class Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;
.super Ljava/lang/Object;
.source "export_image_dialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;-><init>(Landroid/content/Context;IIZIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

.field final synthetic val$aspectX:I

.field final synthetic val$aspectY:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;II)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectX:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/16 p1, 0x8

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    const/4 v0, 0x0

    .line 94
    const/4 v0, 0x1

    :pswitch_0
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    sget p3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_ULTRA:I

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectX:I

    iget p5, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectY:I

    invoke-static {p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;III)V

    .line 95
    const/4 v0, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x3

    .line 90
    const/4 v0, 0x0

    :pswitch_1
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    sget p3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_VERY_HIGH:I

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectX:I

    iget p5, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectY:I

    invoke-static {p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;III)V

    .line 91
    const/4 v0, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x2

    .line 86
    const/4 v0, 0x3

    :pswitch_2
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    sget p3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_HIGH:I

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectX:I

    iget p5, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectY:I

    invoke-static {p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;III)V

    .line 87
    const/4 v0, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x1

    .line 82
    const/4 v0, 0x2

    :pswitch_3
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    sget p3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_DEFAULT:I

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectX:I

    iget p5, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectY:I

    invoke-static {p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;III)V

    .line 83
    const/4 v0, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x0

    .line 78
    const/4 v0, 0x1

    :pswitch_4
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    sget p3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_LOW:I

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectX:I

    iget p5, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectY:I

    invoke-static {p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;III)V

    .line 79
    const/4 v0, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x3

    .line 75
    const/4 v0, 0x0

    :pswitch_5
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x1

    .line 71
    const/4 v0, 0x2

    :pswitch_6
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    sget p3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_DEFAULT:I

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectX:I

    iget p5, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->val$aspectY:I

    invoke-static {p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;III)V

    .line 72
    const/4 v0, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method
