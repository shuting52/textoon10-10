.class Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;
.super Ljava/lang/Object;
.source "ThemesTab.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;

.field final synthetic val$aPreset:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

.field final synthetic val$preset:Ljava/lang/String;

.field final synthetic val$thumb:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->val$aPreset:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->val$thumb:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->val$preset:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 97
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->val$aPreset:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->val$thumb:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1$1;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->setContent(Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)V

    .line 103
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->val$holder:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->val$aPreset:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;->val$layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const/4 v1, 0x3
.end method
