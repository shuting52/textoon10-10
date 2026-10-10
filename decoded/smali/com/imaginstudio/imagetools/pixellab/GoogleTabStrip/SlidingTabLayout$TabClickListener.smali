.class Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;-><init>(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 304
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v2, 0x0

    .line 305
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x2

    .line 306
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$500(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method
