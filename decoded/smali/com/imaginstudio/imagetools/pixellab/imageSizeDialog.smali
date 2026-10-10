.class public Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;
.super Landroid/app/AlertDialog;
.source "imageSizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;
    }
.end annotation


# instance fields
.field aspectX:I

.field aspectY:I

.field currHeight:I

.field currWidth:I

.field dialogLayout:Landroid/view/View;

.field private final edit_image_height:Landroid/widget/EditText;

.field private final edit_image_width:Landroid/widget/EditText;

.field keepCropSwitch:Landroid/support/v7/widget/SwitchCompat;

.field listener:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field preset_spinner:Landroid/widget/Spinner;

.field private final text_aspect_info:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->listener:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;

    const/4 v1, 0x1

    .line 30
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    .line 31
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    .line 32
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectX:I

    .line 33
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectY:I

    .line 191
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$4;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 39
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a003c

    .line 40
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->setView(Landroid/view/View;)V

    .line 42
    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->listener:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;

    const p5, 0x104000a

    .line 43
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p5, v0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p5, 0x1040000

    .line 44
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p5}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 45
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    .line 46
    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    .line 51
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p5, 0x7f08004f

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->preset_spinner:Landroid/widget/Spinner;

    .line 52
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p5, 0x7f080111

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->text_aspect_info:Landroid/widget/TextView;

    .line 53
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p5, 0x7f080113

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    .line 54
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p5, 0x7f080112

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    .line 55
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectX:I

    .line 56
    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectY:I

    .line 57
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->updateAspect()V

    .line 58
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->updateTextFieldsVal()V

    .line 59
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->preset_spinner:Landroid/widget/Spinner;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$1;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 70
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$2;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$3;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f08011f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->keepCropSwitch:Landroid/support/v7/widget/SwitchCompat;

    .line 105
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f080120

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->applyPreset(I)V

    return-void

    const/4 v0, 0x0
.end method

.method private applyPreset(I)V
    .locals 4

    const/4 v3, 0x2

    .line 140
    const/4 v3, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    .line 141
    const/4 v3, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    const/16 v2, 0x400

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    const/4 v3, 0x1

    :pswitch_0
    const/16 v0, 0x5dc

    const/16 v1, 0x1f4

    goto :goto_0

    const/4 v3, 0x2

    :pswitch_1
    const/16 v0, 0x848

    const/16 v1, 0x4a8

    goto :goto_0

    const/4 v3, 0x3

    :pswitch_2
    const/16 v0, 0x3d5

    const/16 v1, 0x16b

    goto :goto_0

    const/4 v3, 0x0

    :pswitch_3
    const/16 v0, 0x500

    const/16 v1, 0x2d0

    goto :goto_0

    const/4 v3, 0x1

    :pswitch_4
    const/16 v0, 0xa00

    const/16 v1, 0x5a0

    goto :goto_0

    const/4 v3, 0x2

    :pswitch_5
    const/16 v0, 0x400

    const/16 v1, 0x400

    .line 169
    const/4 v3, 0x3

    :goto_0
    const/4 v3, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    if-ne v0, p1, :cond_0

    const/4 v3, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    if-eq v1, p1, :cond_1

    const/4 v3, 0x2

    .line 170
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->setSize(II)V

    :cond_1
    const/4 v3, 0x1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v1, 0x3
.end method

.method public static asFraction(JJ)[I
    .locals 4

    const/4 v3, 0x3

    .line 185
    const/4 v3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->gcm(JJ)J

    move-result-wide v0

    const/4 v2, 0x2

    .line 186
    const/4 v3, 0x1

    new-array v2, v2, [I

    .line 187
    const/4 v3, 0x2

    div-long/2addr p0, v0

    long-to-int p0, p0

    const/4 p1, 0x0

    aput p0, v2, p1

    .line 188
    const/4 v3, 0x3

    div-long/2addr p2, v0

    long-to-int p0, p2

    const/4 p1, 0x1

    aput p0, v2, p1

    return-object v2

    const/4 v1, 0x3
.end method

.method public static gcm(JJ)J
    .locals 4

    const/4 v3, 0x1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    const/4 v3, 0x3

    .line 181
    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->gcm(JJ)J

    move-result-wide p0

    :goto_0
    const/4 v3, 0x2

    return-wide p0

    const/4 v1, 0x3
.end method


# virtual methods
.method commitValue(Landroid/text/Editable;)I
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x64

    if-nez p1, :cond_0

    const/4 v1, 0x1

    return v0

    .line 116
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v1, 0x0

    :catch_0
    const/16 p1, 0x64

    :goto_0
    const/4 v1, 0x1

    const/4 v0, 0x1

    .line 120
    const/4 v1, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    const/4 v1, 0x1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    .line 208
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v2, 0x2

    :catch_0
    move-exception v0

    .line 211
    const/4 v2, 0x3

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 213
    const/4 v2, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void

    const/4 v0, 0x2
.end method

.method setSize(II)V
    .locals 2

    const/4 v1, 0x3

    .line 131
    const/4 v1, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    .line 132
    const/4 v1, 0x1

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    .line 133
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 136
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 137
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->updateAspect()V

    return-void

    const/4 v1, 0x1
.end method

.method updateAspect()V
    .locals 5

    const/4 v4, 0x0

    .line 174
    const/4 v4, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    int-to-long v0, v0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->asFraction(JJ)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 175
    const/4 v4, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectX:I

    const/4 v1, 0x1

    .line 176
    const/4 v4, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectY:I

    .line 177
    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->aspectY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->text_aspect_info:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v0, 0x0
.end method

.method updateTextFieldsVal()V
    .locals 3

    const/4 v2, 0x3

    .line 125
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_height:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 128
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->edit_image_width:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    const/4 v0, 0x2
.end method
