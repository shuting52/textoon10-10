.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;
.super Landroid/widget/LinearLayout;
.source "option_toggle.java"


# instance fields
.field handle:Landroid/support/v7/widget/SwitchCompat;

.field toggleLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0a004e

    invoke-static {p1, v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0801fb

    .line 20
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->handle:Landroid/support/v7/widget/SwitchCompat;

    const p1, 0x7f0801fa

    .line 21
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->toggleLabel:Landroid/widget/TextView;

    .line 22
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->handle:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    if-eqz p3, :cond_0

    .line 24
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->handle:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getState()Z
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 35
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->handle:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public setOnCheckedChange(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2

    const/4 v1, 0x2

    .line 28
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->handle:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setToggleLabel(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    .line 38
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->toggleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v1, 0x1
.end method

.method public toggle(Z)V
    .locals 2

    const/4 v1, 0x0

    .line 32
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->handle:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void

    const/4 v1, 0x1
.end method
