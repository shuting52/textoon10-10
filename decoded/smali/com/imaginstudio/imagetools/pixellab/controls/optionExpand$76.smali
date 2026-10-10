.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$message:I

.field final synthetic val$presetsHolder:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

.field final synthetic val$typeChoice:Linfo/hoang8f/android/segmented/SegmentedGroup;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Linfo/hoang8f/android/segmented/SegmentedGroup;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V
    .locals 0

    .line 1689
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$typeChoice:Linfo/hoang8f/android/segmented/SegmentedGroup;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$presetsHolder:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$message:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 p1, 0x1

    const v0, 0x7f0801c2

    const v1, 0x7f080156

    if-ne p2, v1, :cond_0

    const/4 v2, 0x2

    .line 1692
    const/4 v2, 0x3

    sget-boolean v1, Lcom/imaginstudio/imagetools/pixellab/appDefault;->isPremium:Z

    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 1693
    const/4 v2, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->unlockPremium()V

    .line 1694
    const/4 v2, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$typeChoice:Linfo/hoang8f/android/segmented/SegmentedGroup;

    invoke-virtual {p2, v0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v2, 0x3

    if-ne p2, v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    const p1, 0x7f0800b8

    if-ne p2, p1, :cond_2

    const/4 v2, 0x3

    const/4 p1, 0x2

    goto :goto_0

    const/4 v2, 0x0

    :cond_2
    const/4 v2, 0x1

    const/4 p1, 0x4

    .line 1698
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$presetsHolder:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$message:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->DoStickersJob(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;II)V

    return-void

    const/4 v0, 0x2
.end method
