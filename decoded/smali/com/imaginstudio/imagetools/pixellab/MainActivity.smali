.class public Lcom/imaginstudio/imagetools/pixellab/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"
# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;
.implements Lcom/imaginstudio/imagetools/pixellab/undo/History$OnHistoryListener;
.implements Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
.implements Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;
# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;
    }
.end annotation
# static fields
.field public static final BROWSE_QUOTES:I = 0xc
.field private static final EXITED_BY_USER:Ljava/lang/String; = "exitedByUser"
.field public static final GET_IMAGE_BG_GALLERY:I = 0xd
.field public static final GET_IMAGE_SHAPE_TEXTURE_GALLERY:I = 0x2d
.field public static final GET_IMAGE_TEXT_TEXTURE_GALLERY:I = 0x13
.field public static final GET_IMPORT_SHAPE_GALLERY:I = 0x14
.field public static final GET_IMPORT_SHAPE_GALLERY_EDIT:I = 0x15
.field static final REQUEST_IMAGE_CAPTURE:I = 0x10
.field private static final USER_IN_EU:Ljava/lang/String; = "1X1EQoF"
.field private static final USER_PREMIUM:Ljava/lang/String; = "Ax3Rf3"
.field public static helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
# instance fields
.field addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
.field public arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
.field private autoSaveHandler:Landroid/os/Handler;
.field private autoSaveInterval:J
.field autoSaveRunnable:Ljava/lang/Runnable;
.field public bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
.field public bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
.field billingClientConnected:Z
.field public colorPickerTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;
.field content:Landroid/widget/LinearLayout;
.field private currentAction:I
.field private currentProjectDir:Ljava/lang/String;
.field displayHeight:I
.field displayWidth:I
.field public drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
.field exitFScreen:Landroid/view/View;
.field private exitedByUser:Z
.field private fragmentTools:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
.field public gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
.field hiddenNonModal:Z
.field public history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
.field instanceState:Landroid/os/Bundle;
.field isFullscreen:Z
.field private layerHandleListener:Landroid/view/View$OnTouchListener;
.field layersHandle:Landroid/widget/ImageButton;
.field layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;
.field layersLayout:Landroid/widget/LinearLayout;
.field private layersLayoutWidth:F
.field loadedContent:Z
.field private mBillingClient:Lcom/android/billingclient/api/BillingClient;
.field mCurrentPhotoFile:Ljava/io/File;
.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field
.field mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
.field mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
.field private minimizedLayersForAction:Z
.field openedQuotes:Z
.field public perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;
.field previewContainer:Landroid/view/View;
.field previewPanel:Landroid/widget/RelativeLayout;
.field queryPurchasesRunnable:Ljava/lang/Runnable;
.field quickMultipleMenu:Landroid/widget/PopupWindow;
.field quickShapeMenu:Landroid/widget/PopupWindow;
.field quickTextMenu:Landroid/widget/PopupWindow;
.field public quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;
.field rsc:Landroid/content/res/Resources;
.field saveMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
.field public shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;
.field public stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;
.field public textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
.field textStylesMenu:Landroid/widget/PopupWindow;
.field tinydb:Lcom/imaginstudio/imagetools/pixellab/TinyDB;
.field toolsPanel:Landroid/view/View;
.field topBar:Landroid/view/View;
.field public usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
.field public vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
.field workingArea:Landroid/widget/FrameLayout;
.field public zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;
.field public zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
# direct methods
.method public constructor <init>()V
    .locals 4
    .line 243
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V
    .line 147
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;-><init>(Lcom/imaginstudio/imagetools/pixellab/undo/History$OnHistoryListener;)V
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    const/4 v0, 0x0
    .line 149
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;
    .line 150
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;
    .line 151
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;
    .line 174
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    const/4 v1, 0x0
    .line 182
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->displayWidth:I
    .line 183
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->displayHeight:I
    .line 200
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->billingClientConnected:Z
    .line 202
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mFragments:Ljava/util/List;
    .line 205
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;
    .line 206
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->loadedContent:Z
    .line 208
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;
    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layerHandleListener:Landroid/view/View$OnTouchListener;
    const/high16 v2, 0x41200000    # 10.0f
    .line 236
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F
    const/4 v2, 0x1
    .line 238
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitedByUser:Z
    .line 240
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->currentProjectDir:Ljava/lang/String;
    const/16 v2, 0x3e8
    .line 241
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->currentAction:I
    const-wide/16 v2, 0x61a8
    .line 339
    iput-wide v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveInterval:J
    .line 597
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$0;
    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$0;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->queryPurchasesRunnable:Ljava/lang/Runnable;
    .line 756
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;
    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveRunnable:Ljava/lang/Runnable;
    .line 1502
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->openedQuotes:Z
    .line 2956
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;
    .line 2957
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    .line 2958
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;
    .line 2959
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;
    .line 2960
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    .line 2961
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    .line 2962
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    .line 3166
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->isFullscreen:Z
    .line 3193
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->hiddenNonModal:Z
    return-void
.end method
.method private aboutDialog()V
    .locals 9
    const-string v8, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"
    .line 2237
    const/4 v8, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
    move-result-object v0
    const/4 v1, 0x0
    const v2, 0x7f0a001b
    .line 2239
    const/4 v8, 0x1
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v0
    .line 2240
    const/4 v8, 0x2
    new-instance v2, Landroid/app/AlertDialog$Builder;
    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    .line 2241
    const/4 v8, 0x3
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    const v3, 0x104000a
    .line 2242
    const/4 v8, 0x0
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080002
    .line 2243
    const/4 v8, 0x1
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    const/4 v1, 0x5
    .line 2245
    const/4 v8, 0x2
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I
    move-result v3
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I
    move-result v4
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I
    move-result v1
    const/4 v5, 0x0
    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V
    .line 2247
    const/4 v8, 0x3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    .line 2252
    const/4 v8, 0x0
    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v3
    const-string v4, "misc/credit"
    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object v3
    .line 2253
    const/4 v8, 0x1
    new-instance v4, Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/InputStreamReader;
    const-string v7, "UTF-8"
    invoke-direct {v6, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    .line 2256
    const/4 v8, 0x2
    :goto_0
    const/4 v8, 0x3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :cond_0
    const/4 v8, 0x0
    .line 2257
    const/4 v8, 0x1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :goto_0
    const/4 v8, 0x2
    .line 2259
    const/4 v8, 0x3
    :cond_0
    const/4 v8, 0x0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_1
    const/4 v8, 0x1
    :catch_0
    move-exception v3
    .line 2261
    const/4 v8, 0x2
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    .line 2263
    const/4 v8, 0x3
    :goto_1
    const/4 v8, 0x0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    .line 2264
    const/4 v8, 0x1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-nez v3, :cond_1
    const/4 v8, 0x2
    .line 2265
    const/4 v8, 0x3
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    .line 2266
    const/4 v8, 0x0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
    .line 2268
    const/4 v8, 0x1
    :cond_1
    const/4 v8, 0x2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)F
    .locals 1
    const/4 v0, 0x0
    .line 142
    const/4 v0, 0x1
    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F
    return p0
    const/4 v0, 0x0
.end method
.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Z
    .locals 1
    const/4 v0, 0x3
    .line 142
    const/4 v0, 0x0
    iget-boolean p0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->minimizedLayersForAction:Z
    return p0
    const/4 v0, 0x0
.end method
.method static synthetic access$1000(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x2
    .line 142
    const/4 v0, 0x3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->applyDefaultPreset()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$1100(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x1
    .line 142
    const/4 v0, 0x2
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doneLoadingContent()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$1200(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x0
    .line 142
    const/4 v0, 0x1
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSave()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$1300(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)J
    .locals 3
    const/4 v2, 0x3
    .line 142
    const/4 v2, 0x0
    iget-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveInterval:J
    return-wide v0
    const/4 v0, 0x2
.end method
.method static synthetic access$1400(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Landroid/os/Handler;
    .locals 1
    const/4 v0, 0x2
    .line 142
    const/4 v0, 0x3
    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveHandler:Landroid/os/Handler;
    return-object p0
    const/4 v0, 0x0
.end method
.method static synthetic access$1500(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x1
    .line 142
    const/4 v0, 0x2
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->removeObject()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$1600(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x0
    .line 142
    const/4 v0, 0x1
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->promptSaveProject()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$1700(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x3
    .line 142
    const/4 v0, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->takeCameraImage()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$1900(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 1
    const/4 v0, 0x2
    .line 142
    const/4 v0, 0x3
    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->setProgressMessage(Landroid/app/ProgressDialog;Ljava/lang/String;)V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$2000(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    .locals 1
    const/4 v0, 0x1
    .line 142
    const/4 v0, 0x2
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->dismissExportDialog(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$201(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x0
    .line 142
    const/4 v0, 0x1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$2200(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/app/ProgressDialog;)V
    .locals 1
    const/4 v0, 0x3
    .line 142
    const/4 v0, 0x0
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->dismissProgressDialog(Landroid/app/ProgressDialog;)V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$2300(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x2
    .line 142
    const/4 v0, 0x3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->clearHistory()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$2400(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .locals 1
    const/4 v0, 0x1
    .line 142
    const/4 v0, 0x2
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentAsPresetOverwrite(Ljava/lang/String;)V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$2500(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Ljava/lang/String;
    .locals 1
    const/4 v0, 0x0
    .line 142
    const/4 v0, 0x1
    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->currentProjectDir:Ljava/lang/String;
    return-object p0
    const/4 v0, 0x0
.end method
.method static synthetic access$2600(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Z
    .locals 1
    const/4 v0, 0x3
    .line 142
    const/4 v0, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->isNetworkAvailable()Z
    move-result p0
    return p0
    const/4 v0, 0x0
.end method
.method static synthetic access$2700(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x2
    .line 142
    const/4 v0, 0x3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->aboutDialog()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$301(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x1
    .line 142
    const/4 v0, 0x2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$400(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x0
    .line 142
    const/4 v0, 0x1
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->requestNewInterstitial()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$500(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x3
    .line 142
    const/4 v0, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toggleFullscreen()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$600(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x2
    .line 142
    const/4 v0, 0x3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteCurrObject()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$700(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    .locals 1
    const/4 v0, 0x1
    .line 142
    const/4 v0, 0x2
    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    return-object p0
    const/4 v0, 0x0
.end method
.method static synthetic access$800(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 1
    const/4 v0, 0x0
    .line 142
    const/4 v0, 0x1
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->applyBlankPreset()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$900(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    const/4 v0, 0x3
    .line 142
    const/4 v0, 0x0
    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->handleImageReceiveFromOtherApp(Landroid/content/Intent;Ljava/lang/String;)V
    return-void
    const/4 v0, 0x0
.end method
.method private applyBlankPreset()V
    .locals 2
    const/4 v1, 0x2
    const-string v0, "presets/z.blank"
    .line 832
    const/4 v1, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->loadPresetFromAsset(Ljava/lang/String;)V
    return-void
    const/4 v1, 0x1
.end method
.method private applyDefaultPreset()V
    .locals 6
    const/4 v5, 0x1
    const-string v0, "presets/1. \u0627\u0644\u0645\u0637\u0648\u0631 \u062d\u0633\u064a\u0646 \u0627\u0644\u0634\u063a\u0627\u0646\u0628\u064a"
    .line 836
    const/4 v5, 0x2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->loadPresetFromAsset(Ljava/lang/String;)V
    .line 838
    const/4 v5, 0x3
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitedByUser:Z
    if-nez v0, :cond_0
    const/4 v5, 0x0
    .line 839
    const/4 v5, 0x1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "/pixelLab/autosave"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    .line 840
    const/4 v5, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getAvailableAutosaves()[Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :cond_0
    const/4 v5, 0x3
    .line 841
    const/4 v5, 0x0
    array-length v2, v1
    if-lez v2, :cond_0
    const/4 v5, 0x1
    .line 842
    const/4 v5, 0x2
    new-instance v2, Landroid/app/AlertDialog$Builder;
    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v3, 0x7f0c0060
    .line 843
    const/4 v5, 0x3
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c013f
    .line 844
    const/4 v5, 0x0
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
    const v3, 0x1040009
    const/4 v4, 0x0
    .line 845
    const/4 v5, 0x1
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const v3, 0x1040013
    .line 846
    const/4 v5, 0x2
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity$18;
    invoke-direct {v4, p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$18;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;[Ljava/lang/String;)V
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 856
    const/4 v5, 0x3
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :cond_0
    const/4 v5, 0x0
    return-void
    const/4 v1, 0x1
.end method
.method private arrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    const/4 v4, 0x2
    .line 695
    const/4 v4, 0x3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const/4 v1, 0x0
    .line 696
    const/4 v4, 0x0
    :goto_0
    const/4 v4, 0x1
    array-length v2, p1
    if-ge v1, v2, :cond_1
    const/4 v4, 0x2
    .line 697
    const/4 v4, 0x3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    aget-object v3, p1, v1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v3, p1
    add-int/lit8 v3, v3, -0x1
    if-ge v1, v3, :cond_0
    const/4 v4, 0x0
    const-string v3, "-"
    goto :goto_1
    const/4 v4, 0x1
    :cond_0
    const/4 v4, 0x2
    const-string v3, ""
    :goto_1
    const/4 v4, 0x3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1
    goto :goto_0
    const/4 v4, 0x0
    .line 699
    const/4 v4, 0x1
    :cond_1
    const/4 v4, 0x2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
    const/4 v0, 0x0
.end method
.method private askPositionGrid()V
    .locals 11
    const/4 v10, 0x0
    .line 1906
    const/4 v10, 0x1
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const v1, 0x7f07018e
    .line 1907
    const/4 v10, 0x2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
    const/4 v1, 0x1
    .line 1908
    const/4 v10, 0x3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const v1, 0x800003
    .line 1909
    const/4 v10, 0x0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V
    .line 1910
    const/4 v10, 0x1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x2
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/4 v2, 0x5
    .line 1911
    const/4 v10, 0x2
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I
    move-result v2
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    const/16 v2, 0x10
    .line 1912
    const/4 v10, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I
    move-result v2
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    .line 1913
    const/4 v10, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getCurrentMarkerPosition()F
    move-result v2
    const/high16 v3, 0x42c80000    # 100.0f
    mul-float v2, v2, v3
    float-to-int v2, v2
    .line 1914
    const/4 v10, 0x1
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v4
    const v3, 0x7f0c0082
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v5
    const/4 v6, 0x1
    const/4 v8, 0x2
    move-object v3, v9
    move v7, v2
    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V
    .line 1915
    const/4 v10, 0x2
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v4
    const/4 v5, 0x0
    const/16 v6, 0x64
    invoke-direct {v3, v4, v5, v6, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V
    const/16 v2, 0xa
    .line 1916
    const/4 v10, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I
    move-result v2
    invoke-virtual {v9, v5, v2, v5, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setPadding(IIII)V
    .line 1917
    const/4 v10, 0x0
    invoke-virtual {v0, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .line 1918
    const/4 v10, 0x1
    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .line 1919
    const/4 v10, 0x2
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$44;
    invoke-direct {v1, p0, v9}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$44;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    invoke-virtual {v3, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V
    .line 1935
    const/4 v10, 0x3
    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$45;
    invoke-direct {v1, p0, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$45;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    const v2, 0x104000a
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    const/high16 v1, 0x1040000
    const/4 v2, 0x0
    .line 1940
    const/4 v10, 0x0
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    .line 1941
    const/4 v10, 0x1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    return-void
    const/4 v0, 0x2
.end method
.method private askResetGrid()V
    .locals 5
    const/4 v4, 0x3
    .line 1894
    const/4 v4, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
    const/4 v1, 0x0
    const v2, 0x7f0a003a
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/LinearLayout;
    .line 1896
    const/4 v4, 0x1
    new-instance v2, Landroid/app/AlertDialog$Builder;
    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    move-result-object v2
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity$43;
    invoke-direct {v3, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$43;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/widget/LinearLayout;)V
    const v0, 0x104000a
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    const/high16 v2, 0x1040000
    .line 1901
    const/4 v4, 0x2
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    .line 1902
    const/4 v4, 0x3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    return-void
    const/4 v0, 0x0
.end method
.method private autoSave()V
    .locals 10
    const/4 v9, 0x1
    .line 702
    const/4 v9, 0x2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    const-wide/16 v2, 0x3e8
    div-long/2addr v0, v2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v0
    .line 703
    const/4 v9, 0x3
    new-instance v1, Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v3
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v3, "/pixelLab/autosave"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 704
    const/4 v9, 0x0
    new-instance v2, Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v4
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v4, "/pixelLab/autosave/"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 706
    const/4 v9, 0x1
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity$15;
    invoke-direct {v3, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$15;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v1, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    move-result-object v3
    const/4 v4, 0x0
    if-eqz v3, :cond_0
    const/4 v9, 0x2
    .line 713
    const/4 v9, 0x3
    array-length v5, v3
    add-int/lit8 v5, v5, -0xa
    goto :goto_0
    const/4 v9, 0x0
    :cond_0
    const/4 v9, 0x1
    const/4 v5, 0x0
    :goto_0
    const/4 v9, 0x2
    if-lez v5, :cond_1
    const/4 v9, 0x3
    .line 715
    const/4 v9, 0x0
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
    const/4 v6, 0x0
    :goto_1
    const/4 v9, 0x1
    if-ge v6, v5, :cond_1
    const/4 v9, 0x2
    .line 717
    const/4 v9, 0x3
    new-instance v7, Ljava/io/File;
    aget-object v8, v3, v6
    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    .line 718
    const/4 v9, 0x0
    invoke-static {v7}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z
    add-int/lit8 v6, v6, 0x1
    goto :goto_1
    const/4 v9, 0x1
    .line 722
    const/4 v9, 0x2
    :cond_1
    const/4 v9, 0x3
    new-instance v1, Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v5
    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v5, "/pixelLab/autosave/"
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "/data.plab"
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 727
    const/4 v9, 0x0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    .line 728
    const/4 v9, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->putStateInBundle(Landroid/os/Bundle;)V
    .line 729
    const/4 v9, 0x2
    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->putUiStateInBundle(Landroid/os/Bundle;)V
    .line 733
    const/4 v9, 0x3
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    .line 734
    const/4 v9, 0x0
    new-instance v3, Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v6
    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v6, "/pixelLab/autosave"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->putNoMediaHere(Ljava/io/File;)V
    .line 736
    const/4 v9, 0x1
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;
    move-result-object v0
    if-eqz v0, :cond_2
    const/4 v9, 0x2
    .line 739
    const/4 v9, 0x3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v0
    .line 741
    const/4 v9, 0x0
    new-instance v3, Ljava/io/FileWriter;
    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    .line 742
    const/4 v9, 0x1
    new-instance v1, Ljava/io/BufferedWriter;
    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    .line 743
    const/4 v9, 0x2
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    .line 744
    const/4 v9, 0x3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :cond_2
    const/4 v9, 0x0
    const/4 v4, 0x1
    :catch_0
    if-nez v4, :cond_3
    const/4 v9, 0x1
    .line 751
    const/4 v9, 0x2
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z
    goto :goto_2
    const/4 v9, 0x3
    :cond_3
    const/4 v9, 0x0
    const-string v0, "valid"
    .line 753
    const/4 v9, 0x1
    invoke-static {v2, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->putEmptyFileHere(Ljava/io/File;Ljava/lang/String;)V
    :goto_2
    const/4 v9, 0x2
    return-void
    const/4 v1, 0x1
.end method
.method private capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    const/4 v2, 0x0
    if-eqz p1, :cond_2
    const/4 v2, 0x1
    .line 2920
    const/4 v2, 0x2
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    move-result v0
    if-nez v0, :cond_0
    const/4 v2, 0x3
    goto :goto_0
    const/4 v2, 0x0
    :cond_0
    const/4 v2, 0x1
    const/4 v0, 0x0
    .line 2923
    const/4 v2, 0x2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
    move-result v0
    .line 2924
    const/4 v2, 0x3
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z
    move-result v1
    if-eqz v1, :cond_1
    const/4 v2, 0x0
    return-object p1
    .line 2927
    const/4 v2, 0x1
    :cond_1
    const/4 v2, 0x2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C
    move-result v0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const/4 v0, 0x1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
    :cond_2
    const/4 v2, 0x3
    :goto_0
    const/4 v2, 0x0
    const-string p1, ""
    return-object p1
    const/4 v0, 0x2
.end method
.method private clearHistory()V
    .locals 3
    const/4 v2, 0x2
    .line 2557
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->clearHistory()I
    move-result v0
    const/16 v1, 0x14
    if-le v0, v1, :cond_0
    const/4 v2, 0x0
    .line 2558
    const/4 v2, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showInterstitial()V
    :cond_0
    const/4 v2, 0x2
    return-void
    const/4 v0, 0x2
.end method
.method private createImageFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
    const/4 v3, 0x0
    .line 1000
    const/4 v3, 0x1
    new-instance v0, Ljava/text/SimpleDateFormat;
    const-string v1, "yyyyMMdd_HHmmss"
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    new-instance v1, Ljava/util/Date;
    invoke-direct {v1}, Ljava/util/Date;-><init>()V
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
    .line 1001
    const/4 v3, 0x2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "CAMERA_"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ".jpg"
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    .line 1002
    const/4 v3, 0x3
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    move-result-object v1
    .line 1004
    const/4 v3, 0x0
    new-instance v2, Ljava/io/File;
    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    .line 1006
    const/4 v3, 0x1
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mCurrentPhotoFile:Ljava/io/File;
    return-object v2
    const/4 v1, 0x3
.end method
.method private deleteCurrObject()V
    .locals 4
    const/4 v3, 0x3
    .line 883
    const/4 v3, 0x0
    new-instance v0, Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v1, 0x7f0c0106
    .line 884
    const/4 v3, 0x1
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0065
    .line 885
    const/4 v3, 0x2
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .line 886
    const/4 v3, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    const v2, 0x1040013
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$20;
    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$20;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 892
    const/4 v3, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    const v2, 0x1040009
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 893
    const/4 v3, 0x1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    return-void
    const/4 v1, 0x3
.end method
.method public static deleteDir(Ljava/io/File;)Z
    .locals 6
    const/4 v5, 0x3
    const/4 v0, 0x0
    if-eqz p0, :cond_1
    const/4 v5, 0x0
    .line 2006
    const/4 v5, 0x1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :cond_1
    const/4 v5, 0x2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
    move-result v1
    if-eqz v1, :cond_1
    const/4 v5, 0x3
    .line 2007
    const/4 v5, 0x0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0x0
    .line 2008
    const/4 v5, 0x1
    :goto_0
    const/4 v5, 0x2
    array-length v3, v1
    if-ge v2, v3, :cond_1
    const/4 v5, 0x3
    .line 2009
    const/4 v5, 0x0
    new-instance v3, Ljava/io/File;
    aget-object v4, v1, v2
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z
    move-result v3
    if-nez v3, :cond_0
    const/4 v5, 0x1
    return v0
    :cond_0
    const/4 v5, 0x2
    add-int/lit8 v2, v2, 0x1
    goto :goto_0
    const/4 v5, 0x3
    :cond_1
    const/4 v5, 0x0
    if-eqz p0, :cond_2
    const/4 v5, 0x1
    .line 2017
    const/4 v5, 0x2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    move-result p0
    return p0
    :cond_2
    const/4 v5, 0x3
    return v0
    const/4 v1, 0x1
.end method
.method private dismissExportDialog(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    .locals 2
    const/4 v1, 0x1
    if-eqz p1, :cond_0
    const/4 v1, 0x2
    .line 2446
    const/4 v1, 0x3
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->isShowing()Z
    move-result v0
    if-eqz v0, :cond_0
    const/4 v1, 0x0
    .line 2448
    const/4 v1, 0x1
    :try_start_0
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    :cond_0
    const/4 v1, 0x2
    return-void
    const/4 v1, 0x1
.end method
.method private dismissProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 1
    const/4 v0, 0x0
    if-eqz p1, :cond_0
    const/4 v0, 0x1
    .line 2469
    const/4 v0, 0x2
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    :cond_0
    const/4 v0, 0x3
    return-void
    const/4 v0, 0x0
.end method
.method private doneLoadingContent()V
    .locals 4
    const/4 v3, 0x1
    const/4 v0, 0x0
    .line 663
    const/4 v3, 0x2
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;
    const/4 v0, 0x1
    .line 664
    const/4 v3, 0x3
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->loadedContent:Z
    .line 665
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->tinydb:Lcom/imaginstudio/imagetools/pixellab/TinyDB;
    const-string v1, "exitedByUser"
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putBoolean(Ljava/lang/String;Z)V
    return-void
    const/4 v1, 0x3
.end method
.method private doneSomething()Z
    .locals 2
    const/4 v1, 0x2
    .line 2679
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->hasHistory()Z
    move-result v0
    return v0
    const/4 v1, 0x1
.end method
.method private expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
    const/4 v6, 0x1
    .line 1513
    const/4 v6, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v0
    .line 1514
    const/4 v6, 0x3
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    move-result-object v1
    const v2, 0x7f01000a
    const v3, 0x7f01000b
    const v4, 0x7f01000c
    const v5, 0x7f01000d
    .line 1515
    const/4 v6, 0x0
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    const-string v2, "option_expand"
    .line 1516
    const/4 v6, 0x1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;
    if-eqz v2, :cond_0
    const/4 v6, 0x2
    .line 1519
    const/4 v6, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doneEditing()V
    :cond_0
    const/4 v6, 0x0
    const-string v2, "fragment_tools"
    .line 1522
    const/4 v6, 0x1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    if-eqz v0, :cond_1
    const/4 v6, 0x2
    .line 1525
    const/4 v6, 0x3
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .line 1527
    const/4 v6, 0x0
    :cond_1
    const/4 v6, 0x1
    invoke-static {p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->newInstance(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;
    move-result-object p1
    .line 1528
    const/4 v6, 0x2
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mFragments:Ljava/util/List;
    new-instance p3, Ljava/lang/ref/WeakReference;
    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const p2, 0x7f0801fc
    const-string p3, "option_expand"
    .line 1530
    const/4 v6, 0x3
    invoke-virtual {v1, p2, p1, p3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    const/4 p1, 0x0
    .line 1531
    const/4 v6, 0x0
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .line 1534
    const/4 v6, 0x1
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    const/4 v6, 0x2
    :catch_0
    move-exception p1
    .line 1536
    const/4 v6, 0x3
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    .line 1538
    const/4 v6, 0x0
    :goto_0
    const/4 v6, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->minimizeLayers()V
    return-void
    const/4 v0, 0x2
.end method
.method private getDate(J)Ljava/lang/String;
    .locals 2
    const/4 v1, 0x3
    .line 1963
    const/4 v1, 0x0
    new-instance v0, Ljava/util/Date;
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V
    .line 1964
    const/4 v1, 0x1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object p1
    const/4 p2, 0x2
    invoke-static {p2, p2, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    move-result-object p1
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object p1
    return-object p1
    const/4 v1, 0x1
.end method
.method private handleImageReceiveFromOtherApp(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 10
    const-string v0, "android.intent.action.EDIT"
    .line 800
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :cond_2
    const-string v0, "android.intent.action.VIEW"
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_0
    goto :goto_0
    :cond_0
    const-string v0, "android.intent.action.SEND"
    .line 802
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :cond_1
    const-string p2, "android.intent.extra.STREAM"
    .line 803
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p1
    check-cast p1, Landroid/net/Uri;
    goto :goto_1
    :cond_1
    const/4 p1, 0x0
    goto :goto_1
    .line 801
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object p1
    .line 806
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;
    move-result-object p1
    .line 807
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V
    .line 808
    invoke-virtual {v2, p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V
    .line 809
    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x1
    move-object v0, p2
    move-object v1, p0
    invoke-direct/range {v0 .. v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V
    .line 810
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z
    if-eqz v0, :cond_3
    .line 811
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I
    move-result v0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I
    move-result v1
    invoke-virtual {p2, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setAspectAndLock(II)V
    .line 813
    :cond_3
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$17;
    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$17;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    invoke-virtual {p2, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V
    .line 824
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_2
    :catch_0
    move-exception p1
    .line 826
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    .line 827
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object p1
    const p2, 0x7f0c00b4
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object p2
    const/4 v0, 0x0
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :goto_2
    return-void
    const/4 v0, 0x2
.end method
.method private initBilling()V
    .locals 3
    const/4 v2, 0x0
    .line 603
    const/4 v2, 0x1
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;
    move-result-object v0
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$13;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$13;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    move-result-object v0
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$2;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .line 608
    const/4 v2, 0x2
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    move-result-object v0
    .line 614
    const/4 v2, 0x3
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;
    move-result-object v0
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mBillingClient:Lcom/android/billingclient/api/BillingClient;
    .line 615
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->queryPurchasesRunnable:Ljava/lang/Runnable;
    const/4 v1, 0x0
    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startBillingConnection(Ljava/lang/Runnable;Z)V
    return-void
    const/4 v0, 0x2
.end method
.method private isNetworkAvailable()Z
    .locals 2
    const/4 v1, 0x2
    const-string v0, "connectivity"
    .line 2277
    const/4 v1, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/net/ConnectivityManager;
    .line 2278
    const/4 v1, 0x0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    move-result-object v0
    if-eqz v0, :cond_0
    const/4 v1, 0x1
    .line 2279
    const/4 v1, 0x2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    move-result v0
    if-eqz v0, :cond_0
    const/4 v1, 0x3
    const/4 v0, 0x1
    goto :goto_0
    const/4 v1, 0x0
    :cond_0
    const/4 v1, 0x1
    const/4 v0, 0x0
    :goto_0
    const/4 v1, 0x2
    return v0
    const/4 v1, 0x1
.end method
.method private print(Ljava/lang/String;)V
    .locals 3
    const/4 v2, 0x0
    .line 619
    const/4 v2, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    const/4 v1, 0x0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    return-void
    const/4 v0, 0x2
.end method
.method private promptSaveProject()V
    .locals 8
    const/4 v7, 0x3
    .line 1306
    const/4 v7, 0x0
    new-instance v0, Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    .line 1308
    const/4 v7, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
    move-result-object v1
    const/4 v2, 0x0
    const v3, 0x7f0a0051
    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v1
    const v3, 0x7f08013a
    .line 1310
    const/4 v7, 0x2
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v3
    check-cast v3, Landroid/widget/AutoCompleteTextView;
    .line 1311
    const/4 v7, 0x3
    new-instance v4, Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v6
    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v6, "/pixelLab/presets/"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 1312
    const/4 v7, 0x0
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity$29;
    invoke-direct {v5, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$29;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v4, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    move-result-object v4
    if-eqz v4, :cond_0
    const/4 v7, 0x1
    .line 1318
    const/4 v7, 0x2
    array-length v5, v4
    if-lez v5, :cond_0
    const/4 v7, 0x3
    .line 1319
    const/4 v7, 0x0
    new-instance v5, Landroid/widget/ArrayAdapter;
    const v6, 0x1090003
    invoke-direct {v5, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .line 1320
    const/4 v7, 0x1
    invoke-virtual {v3, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
    .line 1323
    const/4 v7, 0x2
    :cond_0
    const/4 v7, 0x3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    const v1, 0x104000a
    .line 1324
    const/4 v7, 0x0
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity$30;
    invoke-direct {v4, p0, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$30;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/widget/AutoCompleteTextView;)V
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const/high16 v1, 0x1040000
    .line 1335
    const/4 v7, 0x1
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 1337
    const/4 v7, 0x2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    return-void
    const/4 v1, 0x3
.end method
.method private putUiStateInBundle(Landroid/os/Bundle;)V
    .locals 7
    const/4 v6, 0x0
    const-string v0, "bgType"
    .line 952
    const/4 v6, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "bgWidth"
    .line 953
    const/4 v6, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "bgHeight"
    .line 954
    const/4 v6, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "bgColor"
    .line 955
    const/4 v6, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "bgActualWidth"
    .line 956
    const/4 v6, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualWidth()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "bgActualHeight"
    .line 957
    const/4 v6, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualHeight()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "bgPhotoForcedDim"
    .line 958
    const/4 v6, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    iget-boolean v1, v1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    const-string v0, "bgPhotoCrop"
    .line 959
    const/4 v6, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;
    move-result-object v1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I
    move-result v2
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isCircular()Z
    move-result v3
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipH()Z
    move-result v4
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipV()Z
    move-result v5
    invoke-static {v1, v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->makeBundle(Landroid/graphics/RectF;IZZZ)Landroid/os/Bundle;
    move-result-object v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    const-string v0, "bgPhotoSrc"
    .line 960
    const/4 v6, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    move-result-object v1
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->toBundle()Landroid/os/Bundle;
    move-result-object v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    const-string v0, "bgPhotoV2"
    const/4 v1, 0x1
    .line 961
    const/4 v6, 0x2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    const-string v0, "bgGradientV2"
    .line 962
    const/4 v6, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    move-result-object v2
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    const-string v0, "bgRotation"
    .line 964
    const/4 v6, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I
    move-result v2
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "effectVignetteEnabled"
    .line 966
    const/4 v6, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVisibility()I
    move-result v2
    const/4 v3, 0x0
    if-nez v2, :cond_0
    const/4 v6, 0x2
    const/4 v2, 0x1
    goto :goto_0
    const/4 v6, 0x3
    :cond_0
    const/4 v6, 0x0
    const/4 v2, 0x0
    :goto_0
    const/4 v6, 0x1
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    const-string v0, "effectVignetteColor"
    .line 967
    const/4 v6, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVignetteColor()I
    move-result v2
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "effectVignetteAlpha"
    .line 968
    const/4 v6, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVignetteColorAlpha()I
    move-result v2
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "effectNoiseEnabled"
    .line 970
    const/4 v6, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->getVisibility()I
    move-result v2
    if-nez v2, :cond_1
    const/4 v6, 0x1
    const/4 v2, 0x1
    goto :goto_1
    const/4 v6, 0x2
    :cond_1
    const/4 v6, 0x3
    const/4 v2, 0x0
    :goto_1
    const/4 v6, 0x0
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    const-string v0, "effectNoiseVal2"
    .line 971
    const/4 v6, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->getNumberToRepeat()I
    move-result v2
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "effectNoiseAlpha"
    .line 972
    const/4 v6, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->getEffectAlpha()I
    move-result v2
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "effectStripesEnabled"
    .line 974
    const/4 v6, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getVisibility()I
    move-result v2
    if-nez v2, :cond_2
    const/4 v6, 0x0
    goto :goto_2
    const/4 v6, 0x1
    :cond_2
    const/4 v6, 0x2
    const/4 v1, 0x0
    :goto_2
    const/4 v6, 0x3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    const-string v0, "effectStripesAlpha"
    .line 975
    const/4 v6, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getEffectAlpha()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "effectStripesVal2"
    .line 976
    const/4 v6, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getNumberToRepeat()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "effectBrightnessVal"
    .line 978
    const/4 v6, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getBrightness()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "effectContrastVal"
    .line 979
    const/4 v6, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getContrast()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "effectHueVal"
    .line 980
    const/4 v6, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getHue()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v0, "effectSaturationVal"
    .line 981
    const/4 v6, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getSaturation()I
    move-result v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    .line 984
    const/4 v6, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v0
    const-string v1, "fragment_tools"
    .line 985
    const/4 v6, 0x3
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    const-string v1, "currTab"
    if-eqz v0, :cond_3
    const/4 v6, 0x0
    .line 986
    const/4 v6, 0x1
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getTab()I
    move-result v3
    :cond_3
    const/4 v6, 0x2
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    return-void
    const/4 v0, 0x2
.end method
.method private recycleFragments()V
    .locals 4
    const/4 v3, 0x0
    .line 897
    const/4 v3, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    move-result-object v0
    .line 899
    const/4 v3, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mFragments:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_0
    const/4 v3, 0x3
    :goto_0
    const/4 v3, 0x0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_1
    const/4 v3, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/ref/WeakReference;
    .line 900
    const/4 v3, 0x2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0
    const/4 v3, 0x3
    .line 902
    const/4 v3, 0x0
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    goto :goto_0
    const/4 v3, 0x1
    .line 906
    const/4 v3, 0x2
    :cond_1
    const/4 v3, 0x3
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .line 910
    const/4 v3, 0x0
    :catch_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mFragments:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->clear()V
    return-void
    const/4 v1, 0x3
.end method
.method private removeObject()V
    .locals 2
    const/4 v1, 0x2
    .line 2272
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeCurrentObject()V
    return-void
    const/4 v1, 0x1
.end method
.method private requestNewInterstitial()V
    .locals 3
    const/4 v2, 0x1
    .line 790
    const/4 v2, 0x2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
    .line 791
    const/4 v2, 0x3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
    move-result-object v0
    .line 792
    const/4 v2, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    const/4 v2, 0x1
    :catch_0
    move-exception v0
    .line 794
    const/4 v2, 0x2
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    :goto_0
    const/4 v2, 0x3
    return-void
    const/4 v0, 0x2
.end method
.method private saveCurrentAsPresetOverwrite(Ljava/lang/String;)V
    .locals 8
    const/4 v7, 0x1
    .line 2683
    const/4 v7, 0x2
    new-instance v4, Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "/pixelLab/presets/"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 2684
    const/4 v7, 0x3
    new-instance v0, Ljava/io/File;
    const-string v1, "data.plab"
    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    .line 2685
    const/4 v7, 0x0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    .line 2686
    const/4 v7, 0x1
    new-instance v2, Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    .line 2687
    const/4 v7, 0x2
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->putStateInBundle(Landroid/os/Bundle;)V
    .line 2688
    const/4 v7, 0x3
    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->putUiStateInBundle(Landroid/os/Bundle;)V
    .line 2689
    const/4 v7, 0x0
    new-instance v5, Landroid/app/ProgressDialog;
    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
    const v0, 0x7f0c012e
    .line 2690
    const/4 v7, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    .line 2691
    const/4 v7, 0x2
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V
    .line 2692
    const/4 v7, 0x3
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;
    move-object v0, v6
    move-object v1, p0
    move-object v3, p1
    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/os/Bundle;Ljava/lang/String;Ljava/io/File;Landroid/app/ProgressDialog;)V
    invoke-static {v6}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V
    return-void
    const/4 v1, 0x3
.end method
.method private setProgressMessage(Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 1
    const/4 v0, 0x1
    if-eqz p1, :cond_0
    const/4 v0, 0x2
    .line 2459
    const/4 v0, 0x3
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    :cond_0
    const/4 v0, 0x0
    return-void
    const/4 v0, 0x0
.end method
.method private showCropForCurrentShape()V
    .locals 13
    .line 1724
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0
    .line 1726
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    .line 1727
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .line 1728
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    move-result-object v4
    const/4 v2, 0x1
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBitmapPortion(Z)Landroid/graphics/RectF;
    move-result-object v5
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBitmapInRotation()I
    move-result v6
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isBitmapCircularCrop()Z
    move-result v7
    const/4 v8, 0x1
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isFlipHor()Z
    move-result v9
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isFlipVer()Z
    move-result v10
    const/4 v11, 0x0
    move-object v2, v12
    move-object v3, p0
    invoke-direct/range {v2 .. v11}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V
    .line 1730
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$39;
    invoke-direct {v1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$39;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;I)V
    invoke-virtual {v12, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V
    .line 1740
    invoke-virtual {v12}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->show()V
    :cond_0
    return-void
    const/4 v1, 0x1
.end method
.method private startAutoSave()V
    .locals 5
    const/4 v4, 0x3
    .line 688
    const/4 v4, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stopAutoSave()V
    .line 689
    const/4 v4, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveHandler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveRunnable:Ljava/lang/Runnable;
    iget-wide v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveInterval:J
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
    const/4 v0, 0x0
.end method
.method private startBillingConnection(Ljava/lang/Runnable;Z)V
    .locals 3
    const/4 v2, 0x3
    .line 622
    const/4 v2, 0x0
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->billingClientConnected:Z
    if-eqz v0, :cond_1
    const/4 v2, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mBillingClient:Lcom/android/billingclient/api/BillingClient;
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z
    move-result v0
    if-eqz v0, :cond_1
    const/4 v2, 0x2
    if-eqz p1, :cond_0
    const/4 v2, 0x3
    .line 623
    const/4 v2, 0x0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :cond_0
    const/4 v2, 0x1
    return-void
    .line 626
    const/4 v2, 0x2
    :cond_1
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mBillingClient:Lcom/android/billingclient/api/BillingClient;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;
    invoke-direct {v1, p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;Z)V
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    return-void
    const/4 v0, 0x2
.end method
.method private stopAutoSave()V
    .locals 3
    const/4 v2, 0x1
    .line 692
    const/4 v2, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveHandler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveRunnable:Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    return-void
    const/4 v0, 0x2
.end method
.method private takeCameraImage()V
    .locals 4
    const/4 v3, 0x0
    .line 1282
    const/4 v3, 0x1
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.media.action.IMAGE_CAPTURE"
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    .line 1284
    const/4 v3, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    move-result-object v1
    if-eqz v1, :cond_1
    const/4 v3, 0x3
    const/4 v1, 0x0
    .line 1288
    const/4 v3, 0x0
    :try_start_0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->createImageFile()Ljava/io/File;
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    move-object v1, v2
    :catch_0
    if-eqz v1, :cond_0
    const/4 v3, 0x1
    const-string v2, "output"
    .line 1295
    const/4 v3, 0x2
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    move-result-object v1
    .line 1294
    const/4 v3, 0x3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    const/16 v1, 0x10
    .line 1296
    const/4 v3, 0x0
    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    goto :goto_0
    const/4 v3, 0x1
    :cond_0
    const/4 v3, 0x2
    const v0, 0x7f0c00b1
    .line 1298
    const/4 v3, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V
    goto :goto_0
    const/4 v3, 0x0
    :cond_1
    const/4 v3, 0x1
    const v0, 0x7f0c00b0
    .line 1301
    const/4 v3, 0x2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V
    :goto_0
    const/4 v3, 0x3
    return-void
    const/4 v1, 0x3
.end method
.method private toggleFullscreen()V
    .locals 9
    const/4 v8, 0x1
    .line 3169
    const/4 v8, 0x2
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->isFullscreen:Z
    const/high16 v1, 0x3f800000    # 1.0f
    const/16 v2, 0x8
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    if-eqz v0, :cond_0
    const/4 v8, 0x3
    .line 3171
    const/4 v8, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .line 3172
    const/4 v8, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    .line 3173
    const/4 v8, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
    invoke-virtual {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->resetZoom(Z)V
    .line 3174
    const/4 v8, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    .line 3175
    const/4 v8, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .line 3176
    const/4 v8, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    .line 3177
    const/4 v8, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    goto/16 :goto_0
    const/4 v8, 0x3
    .line 3180
    const/4 v8, 0x0
    :cond_0
    const/4 v8, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I
    move-result v6
    mul-int/lit8 v6, v6, -0x1
    int-to-float v6, v6
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const-wide/16 v6, 0x96
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .line 3181
    const/4 v8, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V
    .line 3182
    const/4 v8, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    .line 3183
    const/4 v8, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .line 3184
    const/4 v8, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    .line 3185
    const/4 v8, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    .line 3186
    const/4 v8, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->content:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I
    move-result v2
    int-to-float v2, v2
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I
    move-result v3
    int-to-float v3, v3
    div-float/2addr v2, v3
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->content:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I
    move-result v3
    int-to-float v3, v3
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I
    move-result v4
    int-to-float v4, v4
    div-float/2addr v3, v4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F
    move-result v2
    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setZoomLevel(F)V
    .line 3188
    const/4 v8, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .line 3190
    const/4 v8, 0x1
    :goto_0
    const/4 v8, 0x2
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->isFullscreen:Z
    xor-int/lit8 v0, v0, 0x1
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->isFullscreen:Z
    return-void
    const/4 v0, 0x0
.end method
.method private toggleQuickActions(Z)V
    .locals 12
    const/4 v11, 0x0
    const v0, 0x7f08016d
    .line 669
    const/4 v11, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    const v1, 0x7f08016c
    .line 670
    const/4 v11, 0x2
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v1
    const v2, 0x7f08016b
    .line 671
    const/4 v11, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    const v3, 0x7f08016a
    .line 672
    const/4 v11, 0x0
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v3
    const-wide/16 v4, 0x96
    const-wide/16 v6, 0xfa
    const/high16 v8, 0x3f000000    # 0.5f
    const/4 v9, 0x0
    const/high16 v10, 0x3f800000    # 1.0f
    if-eqz p1, :cond_0
    const/4 v11, 0x1
    if-eqz v0, :cond_0
    const/4 v11, 0x2
    if-eqz v1, :cond_0
    const/4 v11, 0x3
    if-eqz v2, :cond_0
    const/4 v11, 0x0
    if-eqz v3, :cond_0
    const/4 v11, 0x1
    .line 674
    const/4 v11, 0x2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V
    .line 675
    const/4 v11, 0x3
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V
    const/4 p1, 0x1
    .line 676
    const/4 v11, 0x0
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V
    .line 677
    const/4 v11, 0x1
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V
    goto :goto_0
    const/4 v11, 0x2
    :cond_0
    const/4 v11, 0x3
    if-eqz v0, :cond_1
    const/4 v11, 0x0
    if-eqz v1, :cond_1
    const/4 v11, 0x1
    if-eqz v2, :cond_1
    const/4 v11, 0x2
    if-eqz v3, :cond_1
    const/4 v11, 0x3
    .line 679
    const/4 v11, 0x0
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V
    .line 680
    const/4 v11, 0x1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V
    const/4 p1, 0x0
    .line 681
    const/4 v11, 0x2
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V
    .line 682
    const/4 v11, 0x3
    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V
    :cond_1
    const/4 v11, 0x0
    :goto_0
    const/4 v11, 0x1
    return-void
    const/4 v1, 0x3
.end method
.method public static trimCache()V
    .locals 14
    const/4 v13, 0x3
    .line 1828
    const/4 v13, 0x0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    .line 1829
    const/4 v13, 0x1
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "/pixelLab/presets"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    .line 1830
    const/4 v13, 0x2
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "/pixelLab/textstyles"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    .line 1831
    const/4 v13, 0x3
    new-instance v3, Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, "/pixelLab/.cache"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 1832
    const/4 v13, 0x0
    new-instance v4, Ljava/io/File;
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 1833
    const/4 v13, 0x1
    new-instance v5, Ljava/io/File;
    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 1834
    const/4 v13, 0x2
    new-instance v6, Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "/pixelLab/autosave"
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 1836
    const/4 v13, 0x3
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$41;
    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$41;-><init>(Ljava/lang/String;)V
    invoke-virtual {v4, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    move-result-object v0
    const/4 v4, 0x0
    if-eqz v0, :cond_0
    const/4 v13, 0x0
    .line 1843
    const/4 v13, 0x1
    array-length v7, v0
    const/4 v8, 0x0
    :goto_0
    const/4 v13, 0x2
    if-ge v8, v7, :cond_0
    const/4 v13, 0x3
    aget-object v9, v0, v8
    .line 1844
    const/4 v13, 0x0
    new-instance v10, Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 1845
    const/4 v13, 0x1
    invoke-static {v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z
    add-int/lit8 v8, v8, 0x1
    goto :goto_0
    const/4 v13, 0x2
    .line 1848
    const/4 v13, 0x3
    :cond_0
    const/4 v13, 0x0
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$42;
    invoke-direct {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$42;-><init>(Ljava/lang/String;)V
    invoke-virtual {v5, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :cond_1
    const/4 v13, 0x1
    .line 1855
    const/4 v13, 0x2
    array-length v1, v0
    :goto_1
    const/4 v13, 0x3
    if-ge v4, v1, :cond_1
    const/4 v13, 0x0
    aget-object v5, v0, v4
    .line 1856
    const/4 v13, 0x1
    new-instance v7, Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 1857
    const/4 v13, 0x2
    invoke-static {v7}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z
    add-int/lit8 v4, v4, 0x1
    goto :goto_1
    const/4 v13, 0x3
    .line 1860
    const/4 v13, 0x0
    :cond_1
    const/4 v13, 0x1
    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z
    .line 1861
    const/4 v13, 0x2
    invoke-static {v6}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_2
    const/4 v13, 0x3
    :catch_0
    move-exception v0
    .line 1863
    const/4 v13, 0x0
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :goto_2
    const/4 v13, 0x1
    return-void
    const/4 v1, 0x1
.end method
# virtual methods
.method public actionButtonClicked(Landroid/view/View;)V
    .locals 3
    const/4 v2, 0x3
    .line 3412
    const/4 v2, 0x0
    invoke-virtual {p1}, Landroid/view/View;->getId()I
    move-result v0
    sparse-switch v0, :sswitch_data_0
    goto :goto_2
    const/4 v2, 0x1
    .line 3420
    const/4 v2, 0x2
    :sswitch_0
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/UndoOperation;->undo(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    goto :goto_2
    const/4 v2, 0x3
    .line 3429
    const/4 v2, 0x0
    :sswitch_1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showExportDialog()V
    goto :goto_2
    const/4 v2, 0x1
    .line 3438
    const/4 v2, 0x2
    :sswitch_2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doneSomething()Z
    move-result v1
    if-eqz v1, :cond_1
    const/4 v2, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->currentProjectDir:Ljava/lang/String;
    if-nez v1, :cond_0
    const/4 v2, 0x0
    goto :goto_0
    const/4 v2, 0x1
    :cond_0
    const/4 v2, 0x2
    const/4 v1, 0x0
    goto :goto_1
    const/4 v2, 0x3
    :cond_1
    const/4 v2, 0x0
    :goto_0
    const/4 v2, 0x1
    const/4 v1, 0x1
    :goto_1
    const/4 v2, 0x2
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->hideFirstItem(Z)V
    .line 3439
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->showAsDropDown(Landroid/view/View;)V
    goto :goto_2
    const/4 v2, 0x0
    .line 3424
    const/4 v2, 0x1
    :sswitch_3
    new-instance p1, Landroid/content/Intent;
    const-class v0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const/16 v0, 0xc
    .line 3425
    const/4 v2, 0x2
    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    .line 3426
    const/4 v2, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteOpened()V
    goto :goto_2
    const/4 v2, 0x0
    .line 3432
    const/4 v2, 0x1
    :sswitch_4
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->showAsDropDown(Landroid/view/View;)V
    goto :goto_2
    const/4 v2, 0x2
    .line 3417
    const/4 v2, 0x3
    :sswitch_5
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toggleLayers()V
    goto :goto_2
    const/4 v2, 0x0
    .line 3414
    const/4 v2, 0x1
    :sswitch_6
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->toggle()V
    goto :goto_2
    const/4 v2, 0x2
    .line 3435
    const/4 v2, 0x3
    :sswitch_7
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->showAsDropDown(Landroid/view/View;)V
    :goto_2
    const/4 v2, 0x0
    return-void
    nop
    :sswitch_data_0
    .sparse-switch
        0x7f08000f -> :sswitch_7
        0x7f08001d -> :sswitch_6
        0x7f08001f -> :sswitch_5
        0x7f080020 -> :sswitch_4
        0x7f080035 -> :sswitch_3
        0x7f080037 -> :sswitch_2
        0x7f08003a -> :sswitch_1
        0x7f08003c -> :sswitch_0
    .end sparse-switch
    const/4 v0, 0x2
.end method
.method activityResultLogic(IILandroid/content/Intent;)V
    .locals 12
    const/4 v0, 0x1
    const/16 v1, 0xc
    if-eq p2, v1, :cond_0
    goto :goto_0
    .line 1564
    :cond_0
    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;
    invoke-direct {p2, p0, p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/Intent;)V
    .line 1589
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    const/4 v2, -0x1
    if-eq v1, v2, :cond_1
    .line 1590
    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v2, 0x7f0c0043
    .line 1591
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c013c
    .line 1592
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v2, 0x1040013
    .line 1593
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity$34;
    invoke-direct {v3, p0, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$34;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0096
    .line 1599
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v2
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity$35;
    invoke-direct {v3, p0, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$35;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 1606
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    goto :goto_0
    .line 1608
    :cond_1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V
    .line 1609
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :goto_0
    const/16 p2, 0xd
    if-eq p1, p2, :cond_6
    const/16 p2, 0x10
    if-eq p1, p2, :cond_4
    const/16 p2, 0x2d
    const/4 v1, 0x0
    if-eq p1, p2, :cond_2
    const/high16 p2, 0x3f400000    # 0.75f
    packed-switch p1, :pswitch_data_0
    goto/16 :goto_2
    .line 1659
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object p1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;
    move-result-object p1
    .line 1660
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    invoke-direct {v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V
    .line 1661
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object p3
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;
    move-result-object p3
    invoke-virtual {v4, p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V
    .line 1663
    :try_start_0
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I
    move-result-object p1
    .line 1664
    sget-object p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I
    move-result p3
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I
    move-result v2
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I
    move-result p3
    int-to-float p3, p3
    mul-float p3, p3, p2
    float-to-int p2, p3
    int-to-float p2, p2
    .line 1665
    aget p3, p1, v1
    int-to-float p3, p3
    div-float p3, p2, p3
    aget v2, p1, v0
    int-to-float v2, v2
    div-float/2addr p2, v2
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F
    move-result p2
    .line 1666
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    move-result-object p3
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .line 1667
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    sget v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I
    const/4 v5, 0x1
    aget p3, p1, v1
    int-to-float p3, p3
    mul-float p3, p3, p2
    float-to-int v6, p3
    aget p1, p1, v0
    int-to-float p1, p1
    mul-float p1, p1, p2
    float-to-int v7, p1
    invoke-virtual/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->editCurrShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZII)V
    .line 1668
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showCropForCurrentShape()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    goto/16 :goto_2
    :catch_0
    move-exception p1
    .line 1670
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    goto/16 :goto_2
    .line 1645
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object p1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;
    move-result-object p1
    .line 1646
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    invoke-direct {v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V
    .line 1647
    invoke-virtual {v4, p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V
    .line 1649
    :try_start_1
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I
    move-result-object p1
    .line 1650
    sget-object p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I
    move-result p3
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I
    move-result v2
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I
    move-result p3
    int-to-float p3, p3
    mul-float p3, p3, p2
    float-to-int p2, p3
    int-to-float p2, p2
    .line 1651
    aget p3, p1, v1
    int-to-float p3, p3
    div-float p3, p2, p3
    aget v2, p1, v0
    int-to-float v2, v2
    div-float/2addr p2, v2
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F
    move-result p2
    .line 1652
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    sget v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I
    const/4 v5, 0x1
    const/4 v6, 0x0
    const/4 v7, 0x0
    aget p3, p1, v1
    int-to-float p3, p3
    mul-float p3, p3, p2
    float-to-int p3, p3
    int-to-float v8, p3
    aget p1, p1, v0
    int-to-float p1, p1
    mul-float p1, p1, p2
    float-to-int p1, p1
    int-to-float v9, p1
    invoke-virtual/range {v2 .. v9}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;
    .line 1653
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showCropForCurrentShape()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    goto/16 :goto_2
    :catch_1
    move-exception p1
    .line 1655
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    goto/16 :goto_2
    :cond_2
    :pswitch_2
    const/16 p2, 0x13
    if-ne p1, p2, :cond_3
    goto :goto_1
    :cond_3
    const/4 v0, 0x0
    .line 1620
    :goto_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object p1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;
    move-result-object p1
    .line 1621
    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    invoke-direct {v4, p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V
    new-instance v5, Landroid/graphics/RectF;
    const/high16 p3, 0x42c80000    # 100.0f
    const/4 v2, 0x0
    invoke-direct {v5, v2, v2, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v8, 0x1
    const/4 v9, 0x0
    const/4 v10, 0x0
    const/4 v11, 0x0
    move-object v2, p2
    move-object v3, p0
    invoke-direct/range {v2 .. v11}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V
    .line 1622
    invoke-virtual {p2, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCircularSupported(Z)V
    .line 1623
    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;
    invoke-direct {p3, p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;ZLjava/lang/String;)V
    invoke-virtual {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V
    .line 1641
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->show()V
    goto/16 :goto_2
    .line 1698
    :cond_4
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mCurrentPhotoFile:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object p1
    .line 1699
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V
    .line 1700
    invoke-virtual {v2, p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V
    .line 1701
    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x1
    move-object v0, p2
    move-object v1, p0
    invoke-direct/range {v0 .. v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V
    .line 1702
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    iget-boolean p3, p3, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z
    if-eqz p3, :cond_5
    .line 1703
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I
    move-result p3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I
    move-result v0
    invoke-virtual {p2, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setAspectAndLock(II)V
    .line 1705
    :cond_5
    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity$38;
    invoke-direct {p3, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$38;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    invoke-virtual {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V
    .line 1717
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->show()V
    goto :goto_2
    .line 1674
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object p1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;
    move-result-object p1
    .line 1675
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V
    .line 1676
    invoke-virtual {v2, p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V
    .line 1677
    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/4 v6, 0x0
    const/4 v7, 0x0
    const/4 v8, 0x0
    const/4 v9, 0x1
    move-object v0, p2
    move-object v1, p0
    invoke-direct/range {v0 .. v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V
    .line 1678
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    iget-boolean p3, p3, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z
    if-eqz p3, :cond_7
    .line 1679
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I
    move-result p3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I
    move-result v0
    invoke-virtual {p2, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setAspectAndLock(II)V
    .line 1681
    :cond_7
    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;
    invoke-direct {p3, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    invoke-virtual {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V
    .line 1693
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->show()V
    :goto_2
    return-void
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    const/4 v0, 0x0
.end method
.method addClickListenersTo(Landroid/view/ViewGroup;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .locals 4
    const/4 v3, 0x3
    const/4 v0, 0x0
    .line 3218
    const/4 v3, 0x0
    :goto_0
    const/4 v3, 0x1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
    if-ge v0, v1, :cond_1
    const/4 v3, 0x2
    .line 3219
    const/4 v3, 0x3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v1
    .line 3220
    const/4 v3, 0x0
    instance-of v2, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;
    if-eqz v2, :cond_0
    const/4 v3, 0x1
    .line 3221
    const/4 v3, 0x2
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;
    .line 3222
    const/4 v3, 0x3
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;
    invoke-direct {v2, p0, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$78;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setActionEvent(Landroid/view/View$OnClickListener;)V
    :cond_0
    const/4 v3, 0x0
    add-int/lit8 v0, v0, 0x1
    goto :goto_0
    const/4 v3, 0x1
    :cond_1
    const/4 v3, 0x2
    return-void
    const/4 v1, 0x3
.end method
.method public applyStyle(Ljava/lang/String;Z)V
    .locals 3
    const/4 v2, 0x0
    .line 2628
    const/4 v2, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    move-result-object v0
    if-eqz v0, :cond_1
    const/4 v2, 0x2
    if-eqz p2, :cond_0
    const/4 v2, 0x3
    .line 2630
    const/4 v2, 0x0
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "/data.plab"
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->assetJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object p1
    goto :goto_0
    const/4 v2, 0x1
    :cond_0
    const/4 v2, 0x2
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "/data.plab"
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->fileJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object p2
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->fixAbsolute:Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;
    invoke-virtual {p0, p2, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;
    move-result-object p1
    :goto_0
    const/4 v2, 0x3
    if-eqz p1, :cond_1
    const/4 v2, 0x0
    .line 2633
    const/4 v2, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrTextState(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V
    const/4 p2, 0x0
    const/4 v1, 0x1
    .line 2634
    const/4 v2, 0x2
    invoke-virtual {v0, p1, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;ZZ)V
    :cond_1
    const/4 v2, 0x3
    return-void
    const/4 v0, 0x2
.end method
.method assetJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    const/4 v5, 0x1
    .line 2568
    const/4 v5, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v0
    const/4 v1, 0x0
    .line 2570
    const/4 v5, 0x3
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object p1
    .line 2571
    const/4 v5, 0x0
    new-instance v0, Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/InputStreamReader;
    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    .line 2572
    const/4 v5, 0x1
    new-instance p1, Ljava/lang/StringBuffer;
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V
    const/16 v2, 0x400
    .line 2573
    const/4 v5, 0x2
    new-array v2, v2, [C
    .line 2575
    const/4 v5, 0x3
    :goto_0
    const/4 v5, 0x0
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->read([C)I
    move-result v3
    if-lez v3, :cond_0
    const/4 v5, 0x1
    const/4 v4, 0x0
    .line 2576
    const/4 v5, 0x2
    invoke-virtual {p1, v2, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    goto :goto_0
    const/4 v5, 0x3
    .line 2579
    const/4 v5, 0x0
    :cond_0
    const/4 v5, 0x1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_2
    const/4 v5, 0x2
    :catch_0
    move-exception p1
    .line 2581
    const/4 v5, 0x3
    :try_start_2
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    goto :goto_1
    const/4 v5, 0x0
    :catch_1
    move-exception p1
    .line 2585
    const/4 v5, 0x1
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :goto_1
    const/4 v5, 0x2
    move-object v0, v1
    .line 2590
    const/4 v5, 0x3
    :goto_2
    const/4 v5, 0x0
    :try_start_3
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    goto :goto_3
    const/4 v5, 0x1
    :catch_2
    move-object p1, v1
    :goto_3
    const/4 v5, 0x2
    return-object p1
    const/4 v1, 0x1
.end method
.method checkPermissionsAndDo(Ljava/lang/Runnable;)V
    .locals 4
    const/4 v3, 0x0
    .line 319
    const/4 v3, 0x1
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$4;
    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V
    .line 333
    const/4 v3, 0x2
    new-instance p1, Lcom/gun0912/tedpermission/TedPermission;
    invoke-direct {p1, p0}, Lcom/gun0912/tedpermission/TedPermission;-><init>(Landroid/content/Context;)V
    .line 334
    const/4 v3, 0x3
    invoke-virtual {p1, v0}, Lcom/gun0912/tedpermission/TedPermission;->setPermissionListener(Lcom/gun0912/tedpermission/PermissionListener;)Lcom/gun0912/tedpermission/TedPermission;
    move-result-object p1
    const v0, 0x7f0c009c
    .line 335
    const/4 v3, 0x0
    invoke-virtual {p1, v0}, Lcom/gun0912/tedpermission/TedPermission;->setDeniedMessage(I)Lcom/gun0912/tedpermission/TedPermission;
    move-result-object p1
    const/4 v0, 0x1
    new-array v0, v0, [Ljava/lang/String;
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"
    const/4 v2, 0x0
    aput-object v1, v0, v2
    .line 336
    const/4 v3, 0x1
    invoke-virtual {p1, v0}, Lcom/gun0912/tedpermission/TedPermission;->setPermissions([Ljava/lang/String;)Lcom/gun0912/tedpermission/TedPermission;
    move-result-object p1
    .line 337
    const/4 v3, 0x2
    invoke-virtual {p1}, Lcom/gun0912/tedpermission/TedPermission;->check()V
    return-void
    const/4 v1, 0x3
.end method
.method public cleanMemory()V
    .locals 2
    const/4 v1, 0x0
    .line 2036
    const/4 v1, 0x1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V
    invoke-static {}, Ljava/lang/System;->gc()V
    return-void
    const/4 v1, 0x1
.end method
.method public clickedQuickEditLayers(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Landroid/graphics/Rect;)V
    .locals 6
    const/4 v5, 0x3
    .line 3269
    const/4 v5, 0x0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    const/4 v1, 0x1
    const/4 v2, 0x0
    if-ne p2, v0, :cond_0
    const/4 v5, 0x1
    .line 3270
    const/4 v5, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;
    if-eqz v0, :cond_0
    const/4 v5, 0x3
    .line 3271
    const/4 v5, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;
    invoke-virtual {p0, v0, p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getMenuOffsetForLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)[I
    move-result-object v0
    .line 3272
    const/4 v5, 0x1
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;
    aget v4, v0, v2
    aget v0, v0, v1
    invoke-virtual {v3, p1, v2, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    .line 3274
    const/4 v5, 0x2
    :cond_0
    const/4 v5, 0x3
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    if-ne p2, v0, :cond_1
    const/4 v5, 0x0
    .line 3275
    const/4 v5, 0x1
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    if-eqz p2, :cond_1
    const/4 v5, 0x2
    .line 3276
    const/4 v5, 0x3
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    invoke-virtual {p0, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getMenuOffsetForLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)[I
    move-result-object p2
    .line 3277
    const/4 v5, 0x0
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    aget v0, p2, v2
    aget p2, p2, v1
    invoke-virtual {p3, p1, v2, v0, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :cond_1
    const/4 v5, 0x1
    return-void
    const/4 v1, 0x1
.end method
.method public copyDirectory(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
    const/4 v5, 0x3
    .line 2845
    const/4 v5, 0x0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
    move-result v0
    const/4 v1, 0x0
    if-eqz v0, :cond_1
    const/4 v5, 0x1
    .line 2846
    const/4 v5, 0x2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z
    move-result v0
    if-nez v0, :cond_0
    const/4 v5, 0x3
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z
    move-result v0
    if-nez v0, :cond_0
    const/4 v5, 0x0
    .line 2847
    const/4 v5, 0x1
    new-instance p1, Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Cannot create dir "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
    .line 2850
    const/4 v5, 0x2
    :cond_0
    const/4 v5, 0x3
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;
    move-result-object v0
    .line 2851
    const/4 v5, 0x0
    :goto_0
    const/4 v5, 0x1
    array-length v2, v0
    if-ge v1, v2, :cond_4
    const/4 v5, 0x2
    .line 2852
    const/4 v5, 0x3
    new-instance v2, Ljava/io/File;
    aget-object v3, v0, v1
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    new-instance v3, Ljava/io/File;
    aget-object v4, v0, v1
    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {p0, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->copyDirectory(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    add-int/lit8 v1, v1, 0x1
    goto :goto_0
    const/4 v5, 0x0
    .line 2858
    const/4 v5, 0x1
    :cond_1
    const/4 v5, 0x2
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v0
    if-eqz v0, :cond_2
    const/4 v5, 0x3
    .line 2859
    const/4 v5, 0x0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v2
    if-nez v2, :cond_2
    const/4 v5, 0x1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    move-result v2
    if-nez v2, :cond_2
    const/4 v5, 0x2
    .line 2860
    const/4 v5, 0x3
    new-instance p1, Ljava/io/IOException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Cannot create dir "
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
    .line 2863
    const/4 v5, 0x0
    :cond_2
    const/4 v5, 0x1
    new-instance v0, Ljava/io/FileInputStream;
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    .line 2864
    const/4 v5, 0x2
    new-instance p1, Ljava/io/FileOutputStream;
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    const/16 v2, 0x400
    .line 2867
    const/4 v5, 0x3
    new-array v2, v2, [B
    .line 2869
    const/4 v5, 0x0
    :goto_1
    const/4 v5, 0x1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
    move-result v3
    if-lez v3, :cond_3
    const/4 v5, 0x2
    .line 2870
    const/4 v5, 0x3
    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    goto :goto_1
    const/4 v5, 0x0
    .line 2872
    const/4 v5, 0x1
    :cond_3
    const/4 v5, 0x2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    .line 2873
    const/4 v5, 0x3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :cond_4
    const/4 v5, 0x0
    return-object p2
    const/4 v1, 0x1
.end method
.method public countChange(I)V
    .locals 1
    const/4 v0, 0x2
    if-lez p1, :cond_0
    const/4 v0, 0x3
    const/4 p1, 0x1
    goto :goto_0
    const/4 v0, 0x0
    :cond_0
    const/4 v0, 0x1
    const/4 p1, 0x0
    .line 3457
    const/4 v0, 0x2
    :goto_0
    const/4 v0, 0x3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateUndoButtonEnabled(Ljava/lang/Boolean;)V
    return-void
    const/4 v0, 0x0
.end method
.method createAddNewMenu()V
    .locals 4
    const/4 v3, 0x1
    .line 3031
    const/4 v3, 0x2
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    .line 3032
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$61;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$61;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0026
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3038
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$62;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$62;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0027
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3046
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$63;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$63;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0025
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3052
    const/4 v3, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$64;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$64;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0167
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3058
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$65;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$65;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0024
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3064
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$66;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$66;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0023
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3070
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addNewMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->getLanguageMenuLabel(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v1
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/LanguageMenuAction;
    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/LanguageMenuAction;-><init>(Landroid/app/Activity;)V
    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addTextItem(Ljava/lang/String;Ljava/lang/Runnable;)V
    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->addMenuItems(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;)V
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->done()V
    return-void
    const/4 v1, 0x3
.end method
.method createMainMenu()V
    .locals 5
    const/4 v4, 0x3
    .line 3073
    const/4 v4, 0x0
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    .line 3074
    const/4 v4, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$67;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$67;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c003b
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3080
    const/4 v4, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$68;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$68;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c00d9
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3086
    const/4 v4, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$69;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$69;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c003a
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3092
    const/4 v4, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$70;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$70;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0030
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3098
    const/4 v4, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$71;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$71;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c00e6
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3105
    const/4 v4, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$72;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$72;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0031
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3116
    const/4 v4, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$73;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$73;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0040
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3126
    const/4 v4, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$4;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0033
    const/4 v3, 0x1
    invoke-virtual {v0, v2, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;Z)V
    .line 3128
    const/4 v4, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$74;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$74;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0101
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3134
    const/4 v4, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$75;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$75;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0104
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3140
    const/4 v4, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$76;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$76;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0021
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3146
    const/4 v4, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$77;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$77;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c002f
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3164
    const/4 v4, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->done()V
    return-void
    const/4 v0, 0x0
.end method
.method createSaveMenu()V
    .locals 4
    const/4 v3, 0x3
    .line 3006
    const/4 v3, 0x0
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    .line 3007
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$58;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$58;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0150
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3015
    const/4 v3, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$59;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$59;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0038
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3021
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$60;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$60;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const v2, 0x7f0c0151
    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->addItem(ILjava/lang/Runnable;)V
    .line 3027
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->done()V
    .line 3028
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->hideFirstItem(Z)V
    return-void
    const/4 v1, 0x3
.end method
.method public doActionFor(I)V
    .locals 2
    const/4 v1, 0x3
    .line 1010
    const/4 v1, 0x0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    return-void
    const/4 v1, 0x1
.end method
.method public doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .locals 2
    const/4 v1, 0x2
    const/4 v0, 0x0
    .line 1013
    const/4 v1, 0x3
    invoke-virtual {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    return-void
    const/4 v1, 0x1
.end method
.method public doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
    move-object/from16 v10, p0
    move/from16 v11, p1
    move-object/from16 v12, p2
    move-object/from16 v13, p3
    .line 1017
    iput v11, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->currentAction:I
    .line 1019
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->bg:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    if-ne v12, v0, :cond_0
    .line 1020
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrBgState()V
    :cond_0
    const/16 v0, 0x4d
    const/4 v14, 0x0
    if-ne v11, v0, :cond_1
    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->openAutoSaveDialog()V
    goto :goto_0
    :cond_1
    const/16 v0, 0x4b
    if-ne v11, v0, :cond_2
    .line 1026
    invoke-virtual {v10, v14}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showProjectBrowser(Z)V
    goto :goto_0
    :cond_2
    const/16 v0, 0x4c
    if-ne v11, v0, :cond_3
    .line 1028
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$21;
    invoke-direct {v0, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$21;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->checkPermissionsAndDo(Ljava/lang/Runnable;)V
    .line 1035
    :cond_3
    :goto_0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    const/4 v15, 0x1
    if-ne v12, v0, :cond_6
    const/16 v0, 0x47
    if-ne v11, v0, :cond_4
    .line 1037
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0, v13, v14}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->hideLockObjects(Ljava/util/ArrayList;Z)V
    goto :goto_1
    :cond_4
    const/16 v0, 0x48
    if-ne v11, v0, :cond_5
    .line 1039
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0, v13, v15}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->hideLockObjects(Ljava/util/ArrayList;Z)V
    goto :goto_1
    .line 1041
    :cond_5
    invoke-direct/range {p0 .. p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    :goto_1
    const v0, 0x7f08012a
    .line 1043
    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :cond_6
    const/16 v9, -0x3c
    const/16 v8, -0x54
    const/16 v7, -0x52
    const/16 v6, 0x14
    const/16 v5, 0x15
    const/16 v4, 0xc
    const/16 v3, 0xd
    if-ne v11, v15, :cond_7
    .line 1046
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v1, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getContrastColor()I
    move-result v1
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addNewText(I)Ljava/lang/String;
    :goto_2
    const/16 v0, 0x15
    const/16 v1, 0xc
    const/16 v2, 0x14
    const/16 v3, -0x52
    const/16 v4, -0x54
    const/16 v5, -0x3c
    const/16 v6, 0xd
    goto/16 :goto_b
    :cond_7
    const/16 v0, 0x28
    if-eq v11, v0, :cond_1a
    const/16 v0, 0x29
    if-eq v11, v0, :cond_1a
    const/16 v0, 0x2a
    if-eq v11, v0, :cond_1a
    const/16 v0, 0x35
    if-eq v11, v0, :cond_1a
    const/16 v0, 0x36
    if-eq v11, v0, :cond_1a
    const/16 v0, 0x37
    if-eq v11, v0, :cond_1a
    const/16 v0, 0x38
    if-ne v11, v0, :cond_8
    goto/16 :goto_a
    :cond_8
    const/16 v0, 0x27
    if-ne v11, v0, :cond_9
    .line 1057
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotate90()V
    .line 1058
    invoke-virtual {v10, v15}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V
    goto :goto_2
    :cond_9
    const/16 v0, 0x42
    if-ne v11, v0, :cond_b
    .line 1061
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    move-result-object v16
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0, v15}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion(Z)Landroid/graphics/RectF;
    move-result-object v17
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I
    move-result v18
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isCircular()Z
    move-result v19
    const/16 v20, 0x1
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipH()Z
    move-result v21
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipV()Z
    move-result v22
    const/16 v23, 0x0
    move-object v0, v2
    move-object v1, v10
    move-object v14, v2
    move-object/from16 v2, v16
    move-object/from16 v3, v17
    move/from16 v4, v18
    move/from16 v5, v19
    move/from16 v6, v20
    move/from16 v7, v21
    move/from16 v8, v22
    move/from16 v9, v23
    invoke-direct/range {v0 .. v9}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V
    .line 1062
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z
    if-eqz v0, :cond_a
    .line 1063
    invoke-virtual {v14, v15}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockAspect(Z)V
    .line 1065
    :cond_a
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$22;
    invoke-direct {v0, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$22;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v14, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setCropListener(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;)V
    .line 1075
    invoke-virtual {v14}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->show()V
    goto/16 :goto_2
    :cond_b
    const/16 v0, 0x21
    if-eq v11, v0, :cond_19
    const/16 v0, 0x2b
    if-ne v11, v0, :cond_c
    goto/16 :goto_9
    :cond_c
    const/16 v0, 0x3a
    if-ne v11, v0, :cond_d
    .line 1080
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAsColor(I)V
    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V
    goto/16 :goto_2
    :cond_d
    const/16 v0, 0x1f
    if-ne v11, v0, :cond_e
    const/16 v6, 0xd
    .line 1083
    invoke-virtual {v10, v6}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->pickGalleryImage(I)V
    :goto_3
    const/16 v0, 0x15
    const/16 v1, 0xc
    :goto_4
    const/16 v2, 0x14
    :goto_5
    const/16 v3, -0x52
    const/16 v4, -0x54
    const/16 v5, -0x3c
    goto/16 :goto_b
    :cond_e
    const/16 v6, 0xd
    const/16 v0, 0x41
    if-ne v11, v0, :cond_11
    .line 1085
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualWidth()I
    move-result v0
    .line 1086
    iget-object v1, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualHeight()I
    move-result v1
    .line 1087
    iget-object v2, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    iget-boolean v2, v2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z
    if-nez v2, :cond_f
    .line 1088
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I
    move-result v0
    .line 1089
    iget-object v1, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I
    move-result v1
    .line 1090
    sget v2, Lcom/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_DEFAULT:I
    mul-int v2, v2, v0
    int-to-float v2, v2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    move-result v3
    int-to-float v3, v3
    div-float/2addr v2, v3
    float-to-int v2, v2
    .line 1091
    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_DEFAULT:I
    mul-int v3, v3, v1
    int-to-float v3, v3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    move-result v0
    int-to-float v0, v0
    div-float/2addr v3, v0
    float-to-int v0, v3
    move v4, v0
    move v3, v2
    goto :goto_6
    :cond_f
    move v3, v0
    move v4, v1
    .line 1094
    :goto_6
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getUsedBitmapBg()Landroid/graphics/Bitmap;
    move-result-object v0
    if-eqz v0, :cond_10
    const/4 v2, 0x1
    goto :goto_7
    :cond_10
    const/4 v2, 0x0
    :goto_7
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity$23;
    invoke-direct {v5, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$23;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    move-object v0, v7
    move-object v1, v10
    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;)V
    .line 1101
    invoke-virtual {v7}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->show()V
    goto :goto_3
    :cond_11
    const/16 v0, 0x20
    if-ne v11, v0, :cond_12
    .line 1103
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$24;
    invoke-direct {v0, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$24;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->checkPermissionsAndDo(Ljava/lang/Runnable;)V
    goto :goto_3
    :cond_12
    const/4 v0, 0x2
    if-ne v11, v0, :cond_13
    .line 1111
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;
    invoke-direct {v0, v10, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const/16 v1, 0xc
    .line 1112
    invoke-virtual {v10, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteOpened()V
    const/16 v0, 0x15
    goto/16 :goto_4
    :cond_13
    const/16 v0, 0x15
    const/16 v1, 0xc
    if-ne v11, v0, :cond_14
    .line 1115
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V
    const-string v3, "misc/empty"
    .line 1116
    invoke-virtual {v2, v3, v15}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setAssetsPath(Ljava/lang/String;Z)V
    .line 1117
    iget-object v3, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    sget v17, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I
    const/16 v19, 0x1
    const/16 v20, 0x0
    const/16 v21, 0x0
    const/16 v4, 0x3c
    invoke-virtual {v10, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I
    move-result v5
    int-to-float v5, v5
    invoke-virtual {v10, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->dpToPixels(I)I
    move-result v4
    int-to-float v4, v4
    move-object/from16 v16, v3
    move-object/from16 v18, v2
    move/from16 v22, v5
    move/from16 v23, v4
    invoke-virtual/range {v16 .. v23}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;
    .line 1118
    invoke-direct/range {p0 .. p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    goto/16 :goto_4
    :cond_14
    const/16 v2, 0x1d
    if-ne v11, v2, :cond_15
    const/16 v2, 0x14
    .line 1122
    invoke-virtual {v10, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->pickGalleryImage(I)V
    goto/16 :goto_5
    :cond_15
    const/16 v2, 0x14
    const/16 v3, -0x1e
    if-eq v11, v3, :cond_16
    const/16 v3, -0x52
    if-eq v11, v3, :cond_17
    const/16 v4, -0x54
    if-eq v11, v4, :cond_18
    const/16 v5, -0x3c
    if-ne v11, v5, :cond_1b
    goto :goto_8
    :cond_16
    const/16 v3, -0x52
    :cond_17
    const/16 v4, -0x54
    :cond_18
    const/16 v5, -0x3c
    .line 1127
    :goto_8
    invoke-direct/range {p0 .. p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    goto :goto_b
    :cond_19
    :goto_9
    const/16 v0, 0x15
    const/16 v1, 0xc
    const/16 v2, 0x14
    const/16 v3, -0x52
    const/16 v4, -0x54
    const/16 v5, -0x3c
    const/16 v6, 0xd
    .line 1078
    invoke-direct/range {p0 .. p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    goto :goto_b
    :cond_1a
    :goto_a
    const/16 v0, 0x15
    const/16 v1, 0xc
    const/16 v2, 0x14
    const/16 v3, -0x52
    const/16 v4, -0x54
    const/16 v5, -0x3c
    const/16 v6, 0xd
    .line 1055
    invoke-direct/range {p0 .. p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    .line 1131
    :cond_1b
    :goto_b
    iget-object v7, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v7, v7, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    const/16 v8, 0x25
    const/16 v9, 0x24
    const/4 v14, -0x1
    if-eq v7, v14, :cond_28
    const/16 v7, 0x26
    if-eq v11, v7, :cond_27
    const/16 v7, 0x19
    if-eq v11, v7, :cond_27
    const/16 v7, 0x2e
    if-eq v11, v7, :cond_27
    const/16 v7, 0x3f
    if-eq v11, v7, :cond_27
    const/16 v7, 0x3d
    if-eq v11, v7, :cond_27
    const/16 v7, 0x1b
    if-eq v11, v7, :cond_27
    const/16 v7, 0x3e
    if-eq v11, v7, :cond_27
    const/16 v7, 0x23
    if-eq v11, v7, :cond_27
    const/16 v7, 0x34
    if-eq v11, v7, :cond_27
    const/16 v7, 0x55
    if-eq v11, v7, :cond_27
    if-eq v11, v9, :cond_27
    const/16 v7, 0x39
    if-eq v11, v7, :cond_27
    const/16 v7, 0x5b
    if-eq v11, v7, :cond_27
    const/16 v7, 0x3b
    if-eq v11, v7, :cond_27
    if-eq v11, v8, :cond_27
    const/16 v7, -0x53
    if-eq v11, v7, :cond_27
    const/16 v7, 0x16
    if-ne v11, v7, :cond_1c
    .line 1132
    iget-object v15, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v15, v15, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget-object v8, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v8, v8, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    .line 1149
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I
    move-result v8
    sget v15, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I
    if-ne v8, v15, :cond_1c
    goto/16 :goto_c
    :cond_1c
    const/16 v8, 0x33
    if-ne v11, v8, :cond_1d
    .line 1153
    invoke-direct/range {p0 .. p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    goto/16 :goto_d
    :cond_1d
    if-ne v11, v7, :cond_1e
    .line 1154
    iget-object v7, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v7, v7, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget-object v8, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v8, v8, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    .line 1155
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I
    move-result v7
    sget v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I
    if-ne v7, v8, :cond_1e
    .line 1156
    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->pickGalleryImage(I)V
    goto/16 :goto_d
    :cond_1e
    const/16 v0, -0x58
    if-ne v11, v0, :cond_1f
    .line 1158
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;
    iget-object v7, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v7, v7, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I
    move-result v0
    sget v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_BEZIER:I
    if-ne v0, v7, :cond_1f
    .line 1159
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
    iget-object v4, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    move-result-object v4
    invoke-virtual {v0, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prepareEdit(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .line 1160
    invoke-direct {v10, v3, v12, v13}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    goto/16 :goto_d
    :cond_1f
    const/16 v0, -0x5a
    if-ne v11, v0, :cond_20
    .line 1161
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    move-result-object v0
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I
    move-result v0
    sget v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_ARROW:I
    if-ne v0, v3, :cond_20
    .line 1162
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
    iget-object v3, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    move-result-object v3
    invoke-virtual {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->prepareEdit(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .line 1163
    invoke-direct {v10, v4, v12, v13}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    goto/16 :goto_d
    :cond_20
    const/16 v0, -0x59
    if-ne v11, v0, :cond_21
    .line 1165
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    move-result-object v0
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I
    move-result v0
    sget v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_SHAPE:I
    if-ne v0, v3, :cond_21
    .line 1166
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;
    iget-object v3, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    move-result-object v3
    invoke-virtual {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->prepareEdit(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .line 1167
    invoke-direct {v10, v5, v12, v13}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    goto :goto_d
    :cond_21
    const/16 v0, 0x43
    if-ne v11, v0, :cond_22
    .line 1169
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showCropForCurrentShape()V
    goto :goto_d
    :cond_22
    const/16 v0, 0x17
    if-ne v11, v0, :cond_23
    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->removeObject()V
    goto :goto_d
    :cond_23
    const/16 v0, 0x18
    if-ne v11, v0, :cond_24
    .line 1174
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->copyCurrentShape()V
    goto :goto_d
    :cond_24
    const/16 v0, 0x1c
    if-ne v11, v0, :cond_25
    .line 1176
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->moveCurrShapeToFront()V
    goto :goto_d
    :cond_25
    const/16 v0, 0x2d
    if-ne v11, v0, :cond_26
    .line 1178
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->moveCurrShapeToBack()V
    goto :goto_d
    :cond_26
    const/16 v0, 0x51
    if-ne v11, v0, :cond_28
    .line 1180
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;
    iget-object v3, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    move-result-object v3
    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBmpPathMasks()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;
    move-result-object v3
    iget-object v4, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    move-result-object v4
    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrBitmap()Landroid/graphics/Bitmap;
    move-result-object v4
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity$25;
    invoke-direct {v5, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$25;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-direct {v0, v10, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/Bitmap;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;)V
    .line 1189
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->show()V
    goto :goto_d
    .line 1150
    :cond_27
    :goto_c
    invoke-direct/range {p0 .. p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    .line 1193
    :cond_28
    :goto_d
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    if-eq v0, v14, :cond_33
    const/4 v0, 0x3
    if-ne v11, v0, :cond_29
    .line 1196
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget-object v1, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;
    move-result-object v0
    .line 1197
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$26;
    invoke-direct {v2, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$26;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-direct {v1, v10, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;)V
    .line 1205
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->show()V
    goto/16 :goto_f
    :cond_29
    if-nez v11, :cond_2a
    .line 1207
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->removeObject()V
    goto/16 :goto_f
    :cond_2a
    const/16 v0, 0x8
    if-ne v11, v0, :cond_2b
    .line 1209
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;
    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;-><init>()V
    .line 1210
    iget-object v1, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget-object v2, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;
    move-result-object v1
    iget-object v2, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;
    iget-object v3, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getFonts()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    move-result-object v2
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->copy()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    move-result-object v2
    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setInitParams(Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .line 1211
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$27;
    invoke-direct {v1, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$27;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->setInterface(Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;)V
    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v1
    const-string v2, "item_font_dialog"
    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    goto/16 :goto_f
    :cond_2b
    const/16 v0, 0xe
    if-ne v11, v0, :cond_2c
    .line 1224
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->copyCurrentText()V
    goto/16 :goto_f
    :cond_2c
    const/16 v0, 0x1a
    if-ne v11, v0, :cond_2d
    .line 1226
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->moveCurrTextToFront()V
    goto/16 :goto_f
    :cond_2d
    const/16 v0, 0x2c
    if-ne v11, v0, :cond_2e
    .line 1228
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->moveCurrTextToBack()V
    goto/16 :goto_f
    :cond_2e
    const/4 v0, 0x5
    if-eq v11, v0, :cond_32
    const/4 v0, 0x6
    if-eq v11, v0, :cond_32
    const/4 v0, 0x4
    if-eq v11, v0, :cond_32
    const/16 v0, 0x31
    if-eq v11, v0, :cond_32
    const/16 v0, 0x32
    if-eq v11, v0, :cond_32
    const/4 v0, 0x7
    if-eq v11, v0, :cond_32
    const/16 v0, 0x9
    if-eq v11, v0, :cond_32
    const/16 v0, 0xa
    if-eq v11, v0, :cond_32
    if-eq v11, v2, :cond_32
    const/16 v0, 0xb
    if-eq v11, v0, :cond_32
    if-eq v11, v1, :cond_32
    if-eq v11, v6, :cond_32
    const/16 v0, 0x2f
    if-eq v11, v0, :cond_32
    const/16 v0, 0x5c
    if-eq v11, v0, :cond_32
    const/16 v0, 0x30
    if-eq v11, v0, :cond_32
    const/16 v0, 0x40
    if-eq v11, v0, :cond_32
    const/16 v0, 0xf
    if-eq v11, v0, :cond_32
    const/16 v0, -0x10
    if-eq v11, v0, :cond_32
    const/16 v0, 0x11
    if-eq v11, v0, :cond_32
    const/16 v0, 0x12
    if-eq v11, v0, :cond_32
    const/16 v0, 0x13
    if-eq v11, v0, :cond_32
    const/16 v0, 0x56
    if-eq v11, v0, :cond_32
    if-eq v11, v9, :cond_32
    const/16 v0, 0x25
    if-ne v11, v0, :cond_2f
    goto :goto_e
    :cond_2f
    const/16 v0, 0x4e
    if-ne v11, v0, :cond_30
    .line 1255
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    if-eqz v0, :cond_33
    .line 1256
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getTextStylesButtonRegion()Landroid/graphics/Rect;
    move-result-object v1
    invoke-virtual {v10, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getMenuOffsetForLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)[I
    move-result-object v0
    .line 1257
    iget-object v1, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;
    iget-object v2, v10, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    const/4 v3, 0x0
    aget v4, v0, v3
    const/4 v5, 0x1
    aget v0, v0, v5
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    goto :goto_f
    :cond_30
    const/16 v0, 0x50
    if-ne v11, v0, :cond_31
    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentTextAsStyle()V
    goto :goto_f
    :cond_31
    const/16 v0, 0x4f
    if-ne v11, v0, :cond_33
    .line 1262
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$28;
    invoke-direct {v1, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$28;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-direct {v0, v10, v1}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;)V
    .line 1273
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->show()V
    goto :goto_f
    .line 1253
    :cond_32
    :goto_e
    invoke-direct/range {p0 .. p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->expandOptionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
    :cond_33
    :goto_f
    if-gez v11, :cond_34
    const/4 v0, 0x0
    .line 1277
    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toggleNonModalControls(Z)V
    :cond_34
    return-void
    const/4 v1, 0x1
.end method
.method doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;
    .locals 7
    const/4 v6, 0x2
    if-nez p1, :cond_0
    const/4 v6, 0x3
    const/4 p1, 0x0
    return-object p1
    :cond_0
    const/4 v6, 0x0
    const-string v0, "/autosave/"
    .line 2818
    const/4 v6, 0x1
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :cond_1
    const/4 v6, 0x2
    return-object p1
    .line 2819
    const/4 v6, 0x3
    :cond_1
    const/4 v6, 0x0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :cond_2
    const/4 v6, 0x1
    :goto_0
    const/4 v6, 0x2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_a
    const/4 v6, 0x3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    .line 2820
    const/4 v6, 0x0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v2
    instance-of v2, v2, Landroid/os/Bundle;
    if-eqz v2, :cond_3
    const/4 v6, 0x1
    .line 2821
    const/4 v6, 0x2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v1
    invoke-virtual {p0, v1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;
    goto :goto_0
    const/4 v6, 0x3
    :cond_3
    const/4 v6, 0x0
    const-string v2, "imgSrcPath"
    .line 2822
    const/4 v6, 0x1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :cond_4
    const/4 v6, 0x2
    const-string v2, "textsIntervalsFont"
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :cond_2
    const/4 v6, 0x3
    .line 2823
    const/4 v6, 0x0
    :cond_4
    const/4 v6, 0x1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :cond_2
    const/4 v6, 0x2
    .line 2824
    const/4 v6, 0x3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-nez v3, :cond_2
    const/4 v6, 0x0
    .line 2825
    const/4 v6, 0x1
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "res"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const-string v4, "imgSrcPath"
    .line 2826
    const/4 v6, 0x2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_6
    const/4 v6, 0x3
    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->persist:Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;
    if-ne p3, v4, :cond_5
    const/4 v6, 0x0
    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->name()Ljava/lang/String;
    move-result-object v4
    const-string v5, "imgSrcSourceType"
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :cond_8
    const/4 v6, 0x1
    :cond_5
    const/4 v6, 0x2
    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->fixAbsolute:Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;
    if-ne p3, v4, :cond_6
    const/4 v6, 0x3
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v4
    if-nez v4, :cond_8
    const/4 v6, 0x0
    :cond_6
    const/4 v6, 0x1
    const-string v4, "textsIntervalsFont"
    .line 2827
    const/4 v6, 0x2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_2
    const/4 v6, 0x3
    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->fixAbsolute:Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;
    if-ne p3, v4, :cond_7
    const/4 v6, 0x0
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v4
    if-nez v4, :cond_8
    const/4 v6, 0x1
    :cond_7
    const/4 v6, 0x2
    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->persist:Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;
    if-ne p3, v4, :cond_2
    const/4 v6, 0x3
    const-string v4, "fonts"
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :cond_2
    const/4 v6, 0x0
    .line 2828
    const/4 v6, 0x1
    :cond_8
    const/4 v6, 0x2
    new-instance v4, Ljava/io/File;
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 2830
    const/4 v6, 0x3
    :try_start_0
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->persist:Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;
    if-ne p3, v2, :cond_9
    const/4 v6, 0x0
    new-instance v2, Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const-string v5, ""
    .line 2831
    const/4 v6, 0x1
    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual {p0, v4, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->copyDirectory(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    move-result-object v2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2
    goto :goto_1
    const/4 v6, 0x2
    :cond_9
    const/4 v6, 0x3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .line 2832
    const/4 v6, 0x0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    .line 2830
    const/4 v6, 0x1
    :goto_1
    const/4 v6, 0x2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    goto/16 :goto_0
    const/4 v6, 0x3
    :catch_0
    move-exception v1
    .line 2834
    const/4 v6, 0x0
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    goto/16 :goto_0
    const/4 v6, 0x1
    :cond_a
    const/4 v6, 0x2
    return-object p1
    const/4 v0, 0x2
.end method
.method doPickGalleryImage(I)V
    .locals 3
    const/4 v2, 0x0
    .line 1547
    const/4 v2, 0x1
    new-instance v0, Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V
    const-string v1, "image/*"
    .line 1548
    const/4 v2, 0x2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"
    .line 1549
    const/4 v2, 0x3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    const-string v1, "Select Picture"
    .line 1550
    const/4 v2, 0x0
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    move-result-object v0
    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    return-void
    const/4 v0, 0x2
.end method
.method public doneEditing()V
    .locals 4
    const/4 v3, 0x2
    .line 1442
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getSelectedComponent()Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
    move-result-object v0
    if-eqz v0, :cond_0
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getSelectedComponent()Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
    move-result-object v0
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->clearListeners()V
    .line 1444
    const/4 v3, 0x1
    :cond_0
    const/4 v3, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setVisibility(I)V
    .line 1445
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->clearMe()V
    .line 1446
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->setVisibility(I)V
    .line 1447
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->clearMe()V
    .line 1448
    const/4 v3, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setVisibility(I)V
    .line 1449
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->clearMe()V
    .line 1450
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setVisibility(I)V
    .line 1451
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->clearMe()V
    .line 1452
    const/4 v3, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->disable()V
    .line 1453
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->disable()V
    .line 1457
    const/4 v3, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v0
    .line 1458
    const/4 v3, 0x1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    move-result-object v1
    .line 1461
    const/4 v3, 0x2
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    const/4 v3, 0x3
    :catch_0
    move-exception v2
    .line 1463
    const/4 v3, 0x0
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :goto_0
    const/4 v3, 0x1
    const-string v2, "fragment_tools"
    .line 1465
    const/4 v3, 0x2
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    if-eqz v2, :cond_1
    const/4 v3, 0x3
    .line 1467
    const/4 v3, 0x0
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    const/4 v3, 0x1
    const-string v2, "option_expand"
    .line 1469
    const/4 v3, 0x2
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;
    if-eqz v0, :cond_2
    const/4 v3, 0x3
    .line 1471
    const/4 v3, 0x0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .line 1474
    const/4 v3, 0x1
    :cond_2
    const/4 v3, 0x2
    :try_start_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_1
    const/4 v3, 0x3
    :catch_1
    move-exception v0
    .line 1476
    const/4 v3, 0x0
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    .line 1478
    const/4 v3, 0x1
    :goto_1
    const/4 v3, 0x2
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->recycleFragments()V
    .line 1480
    const/4 v3, 0x3
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->minimizedLayersForAction:Z
    if-eqz v0, :cond_3
    const/4 v3, 0x0
    .line 1481
    const/4 v3, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->maximizeLayers()V
    .line 1484
    const/4 v3, 0x2
    :cond_3
    const/4 v3, 0x3
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->hiddenNonModal:Z
    if-eqz v0, :cond_4
    const/4 v3, 0x0
    const/4 v0, 0x1
    .line 1485
    const/4 v3, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toggleNonModalControls(Z)V
    :cond_4
    const/4 v3, 0x2
    return-void
    const/4 v1, 0x3
.end method
.method donePressed()V
    .locals 1
    const/4 v0, 0x0
    return-void
    const/4 v0, 0x0
.end method
.method dpToPixels(I)I
    .locals 3
    const/4 v2, 0x2
    .line 2131
    const/4 v2, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    int-to-float p1, p1
    .line 2133
    const/4 v2, 0x0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    const/4 v1, 0x1
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result p1
    float-to-int p1, p1
    return p1
    const/4 v0, 0x2
.end method
.method enableLayers(Z)V
    .locals 3
    const/4 v2, 0x2
    const v0, 0x7f08001f
    .line 2213
    const/4 v2, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V
    const v0, 0x7f080126
    .line 2214
    const/4 v2, 0x0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const v0, 0x7f080127
    .line 2215
    const/4 v2, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const v0, 0x7f080129
    .line 2216
    const/4 v2, 0x2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const v0, 0x7f08012a
    .line 2217
    const/4 v2, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageButton;
    const v1, 0x7f070136
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    if-eqz p1, :cond_0
    const/4 v2, 0x0
    .line 2219
    const/4 v2, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    const/4 v0, 0x1
    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->hiddenLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)F
    move-result v1
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setX(F)V
    .line 2220
    const/4 v2, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    const/4 v0, 0x0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V
    .line 2221
    const/4 v2, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    const/4 v0, 0x0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    .line 2222
    const/4 v2, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->enable()V
    .line 2223
    const/4 v2, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->maximizeLayers()V
    goto :goto_0
    const/4 v2, 0x2
    .line 2225
    const/4 v2, 0x3
    :cond_0
    const/4 v2, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->hideLayers()V
    :goto_0
    const/4 v2, 0x1
    return-void
    const/4 v0, 0x2
.end method
.method public exportImage(IILandroid/graphics/Bitmap$CompressFormat;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;ZLjava/lang/String;)V
    .locals 13
    move-object v11, p0
    .line 2284
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I
    move-result v0
    .line 2285
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I
    move-result v1
    .line 2287
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    move v9, p1
    int-to-float v3, v9
    int-to-float v0, v0
    div-float/2addr v3, v0
    move v10, p2
    int-to-float v4, v10
    int-to-float v1, v1
    div-float/2addr v4, v1
    .line 2289
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F
    move-result v3
    const/high16 v4, 0x3f800000    # 1.0f
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F
    move-result v3
    .line 2291
    iget-object v5, v11, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    const/4 v6, 0x4
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V
    const/4 v5, 0x1
    .line 2292
    invoke-virtual {v11, v5, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->setRenderMode(ZF)V
    mul-float v0, v0, v3
    float-to-int v0, v0
    mul-float v1, v1, v3
    float-to-int v1, v1
    const/4 v5, 0x0
    .line 2296
    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    move-object v6, v0
    goto :goto_0
    :catch_0
    move-object v6, v5
    :goto_0
    const/4 v0, 0x0
    if-nez v6, :cond_0
    .line 2302
    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v2, 0x7f0c00bb
    .line 2303
    invoke-virtual {v11, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v1
    const v2, 0x104000a
    .line 2304
    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v1
    .line 2305
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    .line 2306
    invoke-virtual {v11, v0, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->setRenderMode(ZF)V
    .line 2307
    iget-object v1, v11, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
    .line 2308
    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V
    .line 2309
    iget-object v0, v11, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->redrawAll()V
    return-void
    .line 2313
    :cond_0
    new-instance v2, Landroid/graphics/Canvas;
    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    .line 2314
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V
    .line 2317
    new-instance v3, Landroid/app/ProgressDialog;
    invoke-direct {v3, v11}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
    const v1, 0x7f0c00e3
    .line 2318
    invoke-virtual {v11, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    .line 2319
    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V
    .line 2320
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V
    .line 2332
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;
    move-object v0, v12
    move-object v1, v11
    move-object v4, v6
    move-object/from16 v5, p4
    move-object/from16 v6, p3
    move/from16 v7, p5
    move-object/from16 v8, p6
    invoke-direct/range {v0 .. v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/graphics/Canvas;Landroid/app/ProgressDialog;Landroid/graphics/Bitmap;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;Landroid/graphics/Bitmap$CompressFormat;ZLjava/lang/String;II)V
    invoke-static {v12}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V
    return-void
    const/4 v1, 0x1
.end method
.method fileJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    const/4 v5, 0x0
    const/4 v0, 0x0
    .line 2600
    const/4 v5, 0x1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    .line 2602
    const/4 v5, 0x2
    new-instance p1, Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/InputStreamReader;
    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    .line 2603
    const/4 v5, 0x3
    new-instance v1, Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
    const/16 v2, 0x400
    .line 2604
    const/4 v5, 0x0
    new-array v2, v2, [C
    .line 2606
    const/4 v5, 0x1
    :goto_0
    const/4 v5, 0x2
    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->read([C)I
    move-result v3
    if-lez v3, :cond_0
    const/4 v5, 0x3
    const/4 v4, 0x0
    .line 2607
    const/4 v5, 0x0
    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    goto :goto_0
    const/4 v5, 0x1
    .line 2610
    const/4 v5, 0x2
    :cond_0
    const/4 v5, 0x3
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_2
    const/4 v5, 0x0
    :catch_0
    move-exception p1
    .line 2612
    const/4 v5, 0x1
    :try_start_2
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    goto :goto_1
    const/4 v5, 0x2
    :catch_1
    move-exception p1
    .line 2616
    const/4 v5, 0x3
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :goto_1
    const/4 v5, 0x0
    move-object p1, v0
    .line 2621
    const/4 v5, 0x1
    :goto_2
    const/4 v5, 0x2
    :try_start_3
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    goto :goto_3
    const/4 v5, 0x3
    :catch_2
    move-object p1, v0
    :goto_3
    const/4 v5, 0x0
    return-object p1
    const/4 v1, 0x1
.end method
.method fontApplied()V
    .locals 1
    const/4 v0, 0x2
    return-void
    const/4 v0, 0x0
.end method
.method getAvailableAutosaves()[Ljava/lang/String;
    .locals 4
    const/4 v3, 0x0
    .line 862
    const/4 v3, 0x1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "/pixelLab/autosave"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    .line 865
    const/4 v3, 0x2
    :try_start_0
    new-instance v1, Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 866
    const/4 v3, 0x3
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$19;
    invoke-direct {v2, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$19;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    const/4 v3, 0x0
    :catch_0
    const/4 v0, 0x0
    :goto_0
    const/4 v3, 0x1
    if-eqz v0, :cond_0
    const/4 v3, 0x2
    .line 876
    const/4 v3, 0x3
    array-length v1, v0
    if-lez v1, :cond_0
    const/4 v3, 0x0
    .line 877
    const/4 v3, 0x1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;
    move-result-object v1
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :cond_0
    const/4 v3, 0x2
    return-object v0
    const/4 v1, 0x3
.end method
.method public getDeviceName()Ljava/lang/String;
    .locals 4
    const/4 v3, 0x0
    .line 2913
    const/4 v3, 0x1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    .line 2914
    const/4 v3, 0x2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    .line 2915
    const/4 v3, 0x3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " | "
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " |  , Android "
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ", Screen : "
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, "x"
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
    const/4 v1, 0x3
.end method
.method getHeightFromMenu(Landroid/widget/PopupWindow;)I
    .locals 4
    const/4 v3, 0x1
    .line 3248
    const/4 v3, 0x2
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
    move-result-object v0
    const/4 v1, 0x0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v1
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V
    .line 3249
    const/4 v3, 0x3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
    move-result-object p1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
    move-result p1
    return p1
    const/4 v1, 0x3
.end method
.method getMenuOffsetForLocation(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)[I
    .locals 5
    const/4 v4, 0x1
    if-nez p2, :cond_0
    const/4 v4, 0x2
    .line 3253
    const/4 v4, 0x3
    new-instance p2, Landroid/graphics/Rect;
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V
    :cond_0
    const/4 v4, 0x0
    const/4 v0, 0x2
    .line 3255
    const/4 v4, 0x1
    new-array v0, v0, [I
    iget v1, p2, Landroid/graphics/Rect;->left:I
    const/4 v2, 0x0
    aput v1, v0, v2
    const/4 v1, 0x1
    aput v2, v0, v1
    .line 3256
    const/4 v4, 0x2
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getHeightFromMenu(Landroid/widget/PopupWindow;)I
    move-result p1
    .line 3257
    const/4 v4, 0x3
    new-instance v2, Landroid/util/DisplayMetrics;
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V
    .line 3258
    const/4 v4, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getWindowManager()Landroid/view/WindowManager;
    move-result-object v3
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v3
    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    .line 3259
    const/4 v4, 0x1
    iget v3, p2, Landroid/graphics/Rect;->bottom:I
    add-int/2addr v3, p1
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I
    if-gt v3, v2, :cond_1
    const/4 v4, 0x2
    .line 3260
    const/4 v4, 0x3
    iget p1, p2, Landroid/graphics/Rect;->bottom:I
    aput p1, v0, v1
    goto :goto_0
    const/4 v4, 0x0
    .line 3262
    const/4 v4, 0x1
    :cond_1
    const/4 v4, 0x2
    iget p2, p2, Landroid/graphics/Rect;->top:I
    sub-int/2addr p2, p1
    aput p2, v0, v1
    :goto_0
    const/4 v4, 0x3
    return-object v0
    const/4 v0, 0x0
.end method
.method getTextStylesButtonRegion()Landroid/graphics/Rect;
    .locals 3
    const/4 v2, 0x1
    .line 1431
    const/4 v2, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v0
    const-string v1, "fragment_tools"
    .line 1432
    const/4 v2, 0x3
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    if-eqz v0, :cond_0
    const/4 v2, 0x0
    .line 1434
    const/4 v2, 0x1
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getTextStylesButtonRegion()Landroid/graphics/Rect;
    move-result-object v0
    return-object v0
    :cond_0
    const/4 v2, 0x2
    const/4 v0, 0x0
    return-object v0
    const/4 v0, 0x2
.end method
.method public gridOptionsClick(Landroid/view/View;)V
    .locals 2
    const/4 v1, 0x0
    .line 1868
    const/4 v1, 0x1
    invoke-virtual {p1}, Landroid/view/View;->getId()I
    move-result p1
    packed-switch p1, :pswitch_data_0
    :pswitch_0
    goto :goto_0
    const/4 v1, 0x2
    .line 1873
    const/4 v1, 0x3
    :pswitch_1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snapEnabled:Z
    xor-int/lit8 v0, v0, 0x1
    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->setSnap(Z)V
    goto :goto_0
    const/4 v1, 0x0
    .line 1870
    const/4 v1, 0x1
    :pswitch_2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z
    xor-int/lit8 v0, v0, 0x1
    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->toggleSelection(Z)V
    goto :goto_0
    const/4 v1, 0x2
    .line 1888
    const/4 v1, 0x3
    :pswitch_3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->askResetGrid()V
    goto :goto_0
    const/4 v1, 0x0
    .line 1882
    const/4 v1, 0x1
    :pswitch_4
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remMarker()V
    goto :goto_0
    const/4 v1, 0x2
    .line 1885
    const/4 v1, 0x3
    :pswitch_5
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->askPositionGrid()V
    goto :goto_0
    const/4 v1, 0x0
    .line 1879
    const/4 v1, 0x1
    :pswitch_6
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->addVertical()V
    goto :goto_0
    const/4 v1, 0x2
    .line 1876
    const/4 v1, 0x3
    :pswitch_7
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->addHorizontal()V
    :goto_0
    const/4 v1, 0x0
    return-void
    nop
    :pswitch_data_0
    .packed-switch 0x7f0800f4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
    const/4 v1, 0x1
.end method
.method public gridSelectionToggled(Z)V
    .locals 3
    const/4 v2, 0x2
    const v0, 0x7f0800fa
    .line 1946
    const/4 v2, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz p1, :cond_0
    const/4 v2, 0x0
    const/4 v1, 0x0
    goto :goto_0
    const/4 v2, 0x1
    :cond_0
    const/4 v2, 0x2
    const/16 v1, 0x8
    :goto_0
    const/4 v2, 0x3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const v0, 0x7f0800fb
    .line 1947
    const/4 v2, 0x0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V
    return-void
    const/4 v0, 0x2
.end method
.method public gridSnapToggled(Z)V
    .locals 2
    const/4 v1, 0x2
    const v0, 0x7f0800fc
    .line 1952
    const/4 v1, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V
    return-void
    const/4 v1, 0x1
.end method
.method public gridToggled(Z)V
    .locals 2
    const/4 v1, 0x1
    const v0, 0x7f08001d
    .line 1957
    const/4 v1, 0x2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V
    const v0, 0x7f0800f6
    .line 1958
    const/4 v1, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz p1, :cond_0
    const/4 v1, 0x0
    const/4 p1, 0x0
    goto :goto_0
    const/4 v1, 0x1
    :cond_0
    const/4 v1, 0x2
    const/16 p1, 0x8
    :goto_0
    const/4 v1, 0x3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    return-void
    const/4 v1, 0x1
.end method
.method handlePurchases(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation
    const/4 v2, 0x1
    .line 587
    const/4 v2, 0x2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
    :cond_0
    const/4 v2, 0x3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_1
    const/4 v2, 0x0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/android/billingclient/api/Purchase;
    .line 588
    const/4 v2, 0x1
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;
    move-result-object v0
    const v1, 0x7f0c0139
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :cond_0
    const/4 v2, 0x2
    const/4 p1, 0x1
    .line 589
    const/4 v2, 0x3
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->makePremium(Z)V
    .line 590
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->tinydb:Lcom/imaginstudio/imagetools/pixellab/TinyDB;
    const-string v1, "Ax3Rf3"
    invoke-virtual {v0, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putBoolean(Ljava/lang/String;Z)V
    return-void
    :cond_1
    const/4 v2, 0x1
    const/4 p1, 0x1
    .line 594
    const/4 v2, 0x2
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->makePremium(Z)V
    .line 595
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->tinydb:Lcom/imaginstudio/imagetools/pixellab/TinyDB;
    const-string v1, "Ax3Rf3"
    invoke-virtual {v0, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putBoolean(Ljava/lang/String;Z)V
    return-void
    const/4 v0, 0x2
.end method
.method public hasBitmapBg()Z
    .locals 3
    const/4 v2, 0x1
    .line 3460
    const/4 v2, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I
    move-result v0
    const/4 v1, 0x4
    if-ne v0, v1, :cond_0
    const/4 v2, 0x3
    const/4 v0, 0x1
    goto :goto_0
    const/4 v2, 0x0
    :cond_0
    const/4 v2, 0x1
    const/4 v0, 0x0
    :goto_0
    const/4 v2, 0x2
    return v0
    const/4 v0, 0x2
.end method
.method hideLayers()V
    .locals 4
    const/4 v3, 0x0
    .line 2189
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const/4 v1, 0x0
    invoke-static {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->hiddenLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)F
    move-result v1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const-wide/16 v1, 0xc8
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$49;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$49;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    .line 2210
    const/4 v3, 0x2
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    return-void
    const/4 v1, 0x3
.end method
.method public isOptionExpandOpen()Z
    .locals 3
    const/4 v2, 0x0
    .line 257
    const/4 v2, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v0
    .line 258
    const/4 v2, 0x2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I
    move-result v1
    if-eqz v1, :cond_0
    const/4 v2, 0x3
    const-string v1, "option_expand"
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object v0
    if-eqz v0, :cond_0
    const/4 v2, 0x0
    const/4 v0, 0x1
    goto :goto_0
    const/4 v2, 0x1
    :cond_0
    const/4 v2, 0x2
    const/4 v0, 0x0
    :goto_0
    const/4 v2, 0x3
    return v0
    const/4 v0, 0x2
.end method
.method final synthetic lambda$initBilling$1$MainActivity(ILjava/util/List;)V
    .locals 1
    const/4 v0, 0x1
    if-nez p1, :cond_0
    const/4 v0, 0x2
    if-eqz p2, :cond_0
    const/4 v0, 0x3
    .line 611
    const/4 v0, 0x0
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->handlePurchases(Ljava/util/List;)V
    :cond_0
    const/4 v0, 0x1
    return-void
    const/4 v0, 0x0
.end method
.method final synthetic lambda$new$0$MainActivity()V
    .locals 3
    const/4 v2, 0x3
    .line 598
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mBillingClient:Lcom/android/billingclient/api/BillingClient;
    const-string v1, "inapp"
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    move-result-object v0
    .line 600
    const/4 v2, 0x1
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;
    move-result-object v0
    if-eqz v0, :cond_0
    const/4 v2, 0x2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->handlePurchases(Ljava/util/List;)V
    :cond_0
    const/4 v2, 0x3
    return-void
    const/4 v0, 0x2
.end method
.method final synthetic lambda$unlockPremium$2$MainActivity(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 3
    const/4 v2, 0x1
    .line 647
    const/4 v2, 0x2
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;
    move-result-object v0
    const v1, 0x7f0c0139
    .line 648
    const/4 v2, 0x3
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSku(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    move-result-object v0
    const-string v1, "inapp"
    .line 649
    const/4 v2, 0x0
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    move-result-object v0
    .line 650
    const/4 v2, 0x1
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;
    move-result-object v0
    .line 651
    const/4 v2, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mBillingClient:Lcom/android/billingclient/api/BillingClient;
    invoke-virtual {v1, p1, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)I
    return-void
    const/4 v0, 0x2
.end method
.method public layersSelectClick(Landroid/view/View;)V
    .locals 6
    const/4 v5, 0x0
    .line 3283
    const/4 v5, 0x1
    invoke-virtual {p1}, Landroid/view/View;->getId()I
    move-result v0
    const v1, 0x7f08012a
    const/4 v2, 0x0
    if-ne v0, v1, :cond_1
    const/4 v5, 0x2
    .line 3284
    const/4 v5, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->toggleSelectionMode()V
    .line 3285
    const/4 v5, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->isSelectionMode()Z
    move-result p1
    const v0, 0x7f080129
    const v3, 0x7f080127
    const v4, 0x7f080126
    if-eqz p1, :cond_0
    const/4 v5, 0x1
    .line 3286
    const/4 v5, 0x2
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object p1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    .line 3287
    const/4 v5, 0x3
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object p1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    .line 3288
    const/4 v5, 0x0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object p1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    .line 3289
    const/4 v5, 0x1
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageButton;
    const v0, 0x7f070133
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V
    goto/16 :goto_0
    const/4 v5, 0x2
    .line 3291
    const/4 v5, 0x3
    :cond_0
    const/4 v5, 0x0
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object p1
    const/16 v2, 0x8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    .line 3292
    const/4 v5, 0x1
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object p1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    .line 3293
    const/4 v5, 0x2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object p1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    .line 3294
    const/4 v5, 0x3
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageButton;
    const v0, 0x7f070136
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V
    goto/16 :goto_0
    const/4 v5, 0x0
    .line 3297
    const/4 v5, 0x1
    :cond_1
    const/4 v5, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getSelectedReferences()Ljava/util/ArrayList;
    move-result-object v0
    .line 3298
    const/4 v5, 0x3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v1
    if-lez v1, :cond_3
    const/4 v5, 0x0
    .line 3299
    const/4 v5, 0x1
    invoke-virtual {p1}, Landroid/view/View;->getId()I
    move-result v1
    const/4 v3, 0x1
    packed-switch v1, :pswitch_data_0
    :pswitch_0
    goto/16 :goto_0
    const/4 v5, 0x2
    .line 3311
    const/4 v5, 0x3
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result p1
    if-le p1, v3, :cond_2
    const/4 v5, 0x0
    .line 3312
    const/4 v5, 0x1
    new-instance p1, Landroid/app/AlertDialog$Builder;
    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v1, 0x7f0c0060
    .line 3313
    const/4 v5, 0x2
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c00f3
    .line 3314
    const/4 v5, 0x3
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const/high16 v1, 0x1040000
    const/4 v2, 0x0
    .line 3315
    const/4 v5, 0x0
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const v1, 0x1040013
    .line 3316
    const/4 v5, 0x1
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$79;
    invoke-direct {v2, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$79;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/util/ArrayList;)V
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 3324
    const/4 v5, 0x2
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    goto :goto_0
    const/4 v5, 0x3
    :cond_2
    const/4 v5, 0x0
    const p1, 0x7f0c00f4
    .line 3326
    const/4 v5, 0x1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V
    goto :goto_0
    const/4 v5, 0x2
    :pswitch_2
    const/4 v0, 0x2
    .line 3306
    const/4 v5, 0x3
    new-array v0, v0, [I
    fill-array-data v0, :array_0
    .line 3307
    const/4 v5, 0x0
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V
    .line 3308
    const/4 v5, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;
    aget v4, v0, v2
    aget v0, v0, v3
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getHeightFromMenu(Landroid/widget/PopupWindow;)I
    move-result v3
    sub-int/2addr v0, v3
    invoke-virtual {v1, p1, v2, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    goto :goto_0
    const/4 v5, 0x2
    .line 3301
    const/4 v5, 0x3
    :pswitch_3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->startGrouping()V
    .line 3302
    const/4 v5, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeObjectsByReferences(Ljava/util/ArrayList;)V
    .line 3303
    const/4 v5, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->endGrouping()V
    goto :goto_0
    const/4 v5, 0x2
    .line 3331
    const/4 v5, 0x3
    :cond_3
    const/4 v5, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object p1
    const v0, 0x7f0c00fe
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :goto_0
    const/4 v5, 0x1
    return-void
    :pswitch_data_0
    .packed-switch 0x7f080126
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
    const/4 v1, 0x1
.end method
.method public loadPresetFromAsset(Ljava/lang/String;)V
    .locals 4
    const/4 v3, 0x3
    .line 2487
    const/4 v3, 0x0
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;
    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$51;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .line 2537
    const/4 v3, 0x1
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doneSomething()Z
    move-result p1
    if-eqz p1, :cond_0
    const/4 v3, 0x2
    .line 2538
    const/4 v3, 0x3
    new-instance p1, Landroid/app/AlertDialog$Builder;
    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v1, 0x7f0c0106
    .line 2539
    const/4 v3, 0x0
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0064
    .line 2540
    const/4 v3, 0x1
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .line 2541
    const/4 v3, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    const v2, 0x1040013
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$52;
    invoke-direct {v2, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$52;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 2547
    const/4 v3, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    const v1, 0x1040009
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0x0
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 2548
    const/4 v3, 0x0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    goto :goto_0
    const/4 v3, 0x1
    .line 2550
    const/4 v3, 0x2
    :cond_0
    const/4 v3, 0x3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :goto_0
    const/4 v3, 0x0
    return-void
    const/4 v1, 0x3
.end method
.method public loadPresetFromFile(Ljava/lang/String;Z)V
    .locals 3
    const/4 v2, 0x2
    .line 2640
    const/4 v2, 0x3
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;
    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .line 2660
    const/4 v2, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doneSomething()Z
    move-result p1
    if-eqz p1, :cond_0
    const/4 v2, 0x1
    if-eqz p2, :cond_0
    const/4 v2, 0x2
    .line 2661
    const/4 v2, 0x3
    new-instance p1, Landroid/app/AlertDialog$Builder;
    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const p2, 0x7f0c0106
    .line 2662
    const/4 v2, 0x0
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object p2
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const p2, 0x7f0c0064
    .line 2663
    const/4 v2, 0x1
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object p2
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .line 2664
    const/4 v2, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object p2
    const v1, 0x1040013
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p2
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$54;
    invoke-direct {v1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$54;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 2671
    const/4 v2, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object p2
    const v0, 0x1040009
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p2
    const/4 v0, 0x0
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 2672
    const/4 v2, 0x0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    goto :goto_0
    const/4 v2, 0x1
    .line 2674
    const/4 v2, 0x2
    :cond_0
    const/4 v2, 0x3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :goto_0
    const/4 v2, 0x0
    return-void
    const/4 v0, 0x2
.end method
.method loadQuickMenus()V
    .locals 7
    const/4 v6, 0x2
    .line 2965
    const/4 v6, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->createMainMenu()V
    .line 2966
    const/4 v6, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->createAddNewMenu()V
    .line 2967
    const/4 v6, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->createSaveMenu()V
    .line 2969
    const/4 v6, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
    move-result-object v0
    const/4 v1, 0x0
    const v2, 0x7f0a0058
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    .line 2970
    const/4 v6, 0x3
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    invoke-virtual {p0, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addClickListenersTo(Landroid/view/ViewGroup;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .line 2972
    const/4 v6, 0x0
    new-instance v2, Landroid/widget/PopupWindow;
    invoke-direct {v2, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;
    .line 2973
    const/4 v6, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
    .line 2974
    const/4 v6, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;
    const/4 v2, -0x2
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V
    .line 2975
    const/4 v6, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V
    .line 2976
    const/4 v6, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v3
    const v4, 0x7f070166
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v3
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .line 2977
    const/4 v6, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;
    const/4 v3, 0x1
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V
    .line 2979
    const/4 v6, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
    move-result-object v0
    const v5, 0x7f0a0057
    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    .line 2980
    const/4 v6, 0x3
    sget-object v5, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    invoke-virtual {p0, v0, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addClickListenersTo(Landroid/view/ViewGroup;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .line 2981
    const/4 v6, 0x0
    new-instance v5, Landroid/widget/PopupWindow;
    invoke-direct {v5, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V
    iput-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    .line 2982
    const/4 v6, 0x1
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
    .line 2983
    const/4 v6, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V
    .line 2984
    const/4 v6, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V
    .line 2985
    const/4 v6, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v5
    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v5
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .line 2986
    const/4 v6, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V
    .line 2988
    const/4 v6, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
    move-result-object v0
    const v5, 0x7f0a0056
    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    .line 2989
    const/4 v6, 0x3
    sget-object v5, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    invoke-virtual {p0, v0, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addClickListenersTo(Landroid/view/ViewGroup;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .line 2990
    const/4 v6, 0x0
    new-instance v5, Landroid/widget/PopupWindow;
    invoke-direct {v5, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V
    iput-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;
    .line 2991
    const/4 v6, 0x1
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
    .line 2992
    const/4 v6, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V
    .line 2993
    const/4 v6, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v5
    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v5
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .line 2994
    const/4 v6, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V
    .line 2996
    const/4 v6, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
    move-result-object v0
    const v5, 0x7f0a0068
    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    .line 2997
    const/4 v6, 0x2
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->addClickListenersTo(Landroid/view/ViewGroup;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .line 2998
    const/4 v6, 0x3
    new-instance v1, Landroid/widget/PopupWindow;
    invoke-direct {v1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;
    .line 2999
    const/4 v6, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
    .line 3000
    const/4 v6, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V
    .line 3001
    const/4 v6, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V
    .line 3002
    const/4 v6, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .line 3003
    const/4 v6, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V
    return-void
    const/4 v0, 0x2
.end method
.method makePremium(Z)V
    .locals 2
    const/4 v1, 0x2
    .line 583
    const/4 v1, 0x3
    sput-boolean p1, Lcom/imaginstudio/imagetools/pixellab/appDefault;->isPremium:Z
    .line 584
    const/4 v1, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mainMenu:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;
    xor-int/lit8 p1, p1, 0x1
    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CustomTextMenu;->toggleProItems(Z)V
    return-void
    const/4 v1, 0x1
.end method
.method maximizeLayers()V
    .locals 4
    const/4 v3, 0x2
    const/4 v0, 0x0
    .line 2183
    const/4 v3, 0x3
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->minimizedLayersForAction:Z
    .line 2184
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I
    move-result v0
    if-nez v0, :cond_0
    const/4 v3, 0x1
    .line 2185
    const/4 v3, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->visibleLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)F
    move-result v1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const/high16 v1, 0x3f800000    # 1.0f
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const-wide/16 v1, 0xc8
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    :cond_0
    const/4 v3, 0x3
    return-void
    const/4 v1, 0x3
.end method
.method minimizeLayers()V
    .locals 5
    const/4 v4, 0x1
    .line 2177
    const/4 v4, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I
    move-result v0
    if-nez v0, :cond_0
    const/4 v4, 0x3
    .line 2178
    const/4 v4, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const/4 v1, 0x1
    invoke-static {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->hiddenLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)F
    move-result v2
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const-wide/16 v1, 0xc8
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const/high16 v1, 0x3f000000    # 0.5f
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    const/4 v0, 0x1
    .line 2179
    const/4 v4, 0x1
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->minimizedLayersForAction:Z
    :cond_0
    const/4 v4, 0x2
    return-void
    const/4 v0, 0x0
.end method
.method public msg(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    const/4 v2, 0x0
    .line 2166
    const/4 v2, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    const/4 v1, 0x0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    return-void
    const/4 v0, 0x2
.end method
.method public msg(Ljava/lang/String;)V
    .locals 3
    const/4 v2, 0x3
    .line 2163
    const/4 v2, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    const/4 v1, 0x0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    return-void
    const/4 v0, 0x2
.end method
.method public objectTouch()V
    .locals 1
    const/4 v0, 0x2
    return-void
    const/4 v0, 0x0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    const/4 v2, 0x0
    .line 1772
    const/4 v2, 0x1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V
    if-eqz p2, :cond_1
    const/4 v2, 0x2
    if-nez p3, :cond_0
    const/4 v2, 0x3
    .line 1774
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mCurrentPhotoFile:Ljava/io/File;
    if-eqz v0, :cond_1
    const/4 v2, 0x1
    const/16 v0, 0x10
    if-ne p1, v0, :cond_1
    const/4 v2, 0x2
    .line 1775
    const/4 v2, 0x3
    :cond_0
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;IILandroid/content/Intent;)V
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->post(Ljava/lang/Runnable;)Z
    :cond_1
    const/4 v2, 0x1
    return-void
    const/4 v0, 0x2
.end method
.method public onBackPressed()V
    .locals 6
    const/4 v5, 0x3
    .line 274
    const/4 v5, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I
    move-result v0
    const/4 v1, 0x0
    const v2, 0x1040009
    const v3, 0x1040013
    if-eqz v0, :cond_1
    const/4 v5, 0x1
    .line 275
    const/4 v5, 0x2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->currentAction:I
    if-gez v0, :cond_0
    const/4 v5, 0x3
    .line 276
    const/4 v5, 0x0
    new-instance v0, Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v4, 0x7f0c0106
    .line 277
    const/4 v5, 0x1
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0063
    .line 278
    const/4 v5, 0x2
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
    .line 279
    const/4 v5, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v4
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v3
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity$2;
    invoke-direct {v4, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 285
    const/4 v5, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v3
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 286
    const/4 v5, 0x1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    goto :goto_0
    const/4 v5, 0x2
    .line 288
    const/4 v5, 0x3
    :cond_0
    const/4 v5, 0x0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V
    goto :goto_0
    const/4 v5, 0x1
    .line 291
    const/4 v5, 0x2
    :cond_1
    const/4 v5, 0x3
    new-instance v0, Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v4, 0x7f0c00c0
    .line 292
    const/4 v5, 0x0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    const v4, 0x7f0c0060
    .line 293
    const/4 v5, 0x1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    .line 294
    const/4 v5, 0x2
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$3;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .line 295
    const/4 v5, 0x3
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v0
    .line 302
    const/4 v5, 0x0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :goto_0
    const/4 v5, 0x1
    return-void
    const/4 v1, 0x1
.end method
.method public getResources()Landroid/content/res/Resources;
    .locals 1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->wrap(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    move-result-object v0
    return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    const/4 v9, 0x3
    const/4 v0, 0x1
    .line 344
    const/4 v9, 0x0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->supportRequestWindowFeature(I)Z
    .line 345
    const/4 v9, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getWindow()Landroid/view/Window;
    move-result-object v1
    const/16 v2, 0x400
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .line 350
    const/4 v9, 0x2
    :catch_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    if-nez p1, :splash_skip_saved_state
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/StartupSplash;->show(Landroid/app/Activity;)V
:splash_skip_saved_state
    .line 352
    const/4 v9, 0x3
    new-array v1, v0, [Lio/fabric/sdk/android/Kit;
    new-instance v2, Lcom/crashlytics/android/Crashlytics;
    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics;-><init>()V
    const/4 v3, 0x0
    aput-object v2, v1, v3
    invoke-static {p0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;
    .line 354
    const/4 v9, 0x0
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/TinyDB;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v2
    invoke-direct {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->tinydb:Lcom/imaginstudio/imagetools/pixellab/TinyDB;
    .line 356
    const/4 v9, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->tinydb:Lcom/imaginstudio/imagetools/pixellab/TinyDB;
    const-string v2, "exitedByUser"
    invoke-virtual {v1, v2, v0}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getBoolean(Ljava/lang/String;Z)Z
    move-result v1
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitedByUser:Z
    if-eqz p1, :cond_1
    const/4 v9, 0x2
    const-string v1, "invalidBundle"
    .line 358
    const/4 v9, 0x3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :cond_0
    const/4 v9, 0x0
    goto :goto_0
    const/4 v9, 0x1
    .line 369
    const/4 v9, 0x2
    :cond_0
    const/4 v9, 0x3
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;
    goto :goto_1
    const/4 v9, 0x0
    .line 359
    const/4 v9, 0x1
    :cond_1
    const/4 v9, 0x2
    :goto_0
    const/4 v9, 0x3
    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitedByUser:Z
    if-eqz v1, :cond_2
    const/4 v9, 0x0
    .line 360
    const/4 v9, 0x1
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$5;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V
    .line 372
    const/4 v9, 0x2
    :cond_2
    const/4 v9, 0x3
    :goto_1
    const/4 v9, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->rsc:Landroid/content/res/Resources;
    const v1, 0x7f0a001d
    .line 373
    const/4 v9, 0x1
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->setContentView(I)V
    .line 375
    const/4 v9, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    const v2, 0x7f0c0045
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-static {v1, v2}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V
    .line 377
    const/4 v9, 0x3
    new-instance v1, Lcom/mopub/common/SdkConfiguration$Builder;
    const v2, 0x7f0c00f5
    .line 378
    const/4 v9, 0x0
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-direct {v1, v2}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;
    move-result-object v1
    .line 380
    const/4 v9, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v2
    const/4 v4, 0x0
    invoke-static {v2, v1, v4}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V
    .line 382
    const/4 v9, 0x2
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    .line 383
    const/4 v9, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    const v2, 0x7f0c015e
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V
    .line 384
    const/4 v9, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$6;
    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .line 391
    const/4 v9, 0x1
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->requestNewInterstitial()V
    const v1, 0x7f0801fc
    .line 393
    const/4 v9, 0x2
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toolsPanel:Landroid/view/View;
    const v2, 0x7f080134
    .line 394
    const/4 v9, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;
    const v2, 0x7f0800cb
    .line 395
    const/4 v9, 0x0
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;
    .line 396
    const/4 v9, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->exitFScreen:Landroid/view/View;
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity$7;
    invoke-direct {v4, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$7;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v2, 0x7f08016a
    .line 403
    const/4 v9, 0x2
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/ImageButton;
    const v4, 0x7f08016b
    .line 404
    const/4 v9, 0x3
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v4
    check-cast v4, Landroid/widget/ImageButton;
    .line 405
    const/4 v9, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v5
    const v6, 0x7f05001a
    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I
    move-result v5
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setColorFilter(I)V
    .line 406
    const/4 v9, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v5
    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I
    move-result v5
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setColorFilter(I)V
    .line 407
    const/4 v9, 0x2
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity$8;
    invoke-direct {v5, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$8;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    .line 413
    const/4 v9, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->loadQuickMenus()V
    .line 414
    const/4 v9, 0x0
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$9;
    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$9;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v2, 0x7f080093
    .line 428
    const/4 v9, 0x1
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/LinearLayout;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->content:Landroid/widget/LinearLayout;
    const v2, 0x7f08025f
    .line 429
    const/4 v9, 0x2
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/FrameLayout;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    const v2, 0x7f080161
    .line 430
    const/4 v9, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/RelativeLayout;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->previewPanel:Landroid/widget/RelativeLayout;
    const v2, 0x7f080160
    .line 431
    const/4 v9, 0x0
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->previewContainer:Landroid/view/View;
    const v2, 0x7f080072
    .line 432
    const/4 v9, 0x1
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    .line 433
    const/4 v9, 0x2
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    const/4 v4, -0x1
    invoke-direct {v2, v0, v0, v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;-><init>(III)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    .line 435
    const/4 v9, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setUsedImage(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;)V
    .line 437
    const/4 v9, 0x0
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v5
    invoke-direct {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/textContainer;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    const v2, 0x7f080262
    .line 439
    const/4 v9, 0x1
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
    .line 440
    const/4 v9, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
    if-eqz v2, :cond_3
    const/4 v9, 0x3
    .line 441
    const/4 v9, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setChild(Landroid/view/View;)V
    .line 443
    const/4 v9, 0x1
    :cond_3
    const/4 v9, 0x2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v2
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateUndoButtonEnabled(Ljava/lang/Boolean;)V
    const v2, 0x7f080261
    .line 444
    const/4 v9, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;
    .line 445
    const/4 v9, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setNotifyOnChange(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V
    .line 446
    const/4 v9, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity$10;
    invoke-direct {v5, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$10;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->setZoomListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;)V
    .line 457
    const/4 v9, 0x2
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
    invoke-direct {v2, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;-><init>(Landroid/widget/FrameLayout;Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;)V
    sput-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    .line 459
    const/4 v9, 0x3
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    const v5, 0x7f080124
    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v5
    check-cast v5, Landroid/widget/ScrollView;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->setLayerHolderScroll(Landroid/widget/ScrollView;)V
    .line 461
    const/4 v9, 0x0
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->setTextContain(Lcom/imaginstudio/imagetools/pixellab/textContainer;)V
    .line 463
    const/4 v9, 0x1
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->setBgLayout(Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;)V
    const v2, 0x7f080123
    .line 466
    const/4 v9, 0x2
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;
    .line 467
    const/4 v9, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;
    invoke-virtual {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->setButtonsListener(Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;)V
    .line 468
    const/4 v9, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setLayersListener(Lcom/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;)V
    const v2, 0x7f080125
    .line 469
    const/4 v9, 0x1
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/LinearLayout;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    const v2, 0x7f080128
    .line 470
    const/4 v9, 0x2
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/ImageButton;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHandle:Landroid/widget/ImageButton;
    .line 471
    const/4 v9, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHandle:Landroid/widget/ImageButton;
    if-eqz v2, :cond_4
    const/4 v9, 0x0
    .line 472
    const/4 v9, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHandle:Landroid/widget/ImageButton;
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layerHandleListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .line 474
    const/4 v9, 0x2
    :cond_4
    const/4 v9, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    const v5, 0x7f06006c
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F
    move-result v2
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayoutWidth:F
    .line 475
    const/4 v9, 0x0
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v5
    invoke-direct {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
    .line 476
    const/4 v9, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->addListener(Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;)V
    .line 477
    const/4 v9, 0x2
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v5
    invoke-direct {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
    .line 478
    const/4 v9, 0x3
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v5
    invoke-direct {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    .line 479
    const/4 v9, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    invoke-virtual {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->setControlsListener(Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;)V
    .line 480
    const/4 v9, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    const/16 v5, 0x8
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->setVisibility(I)V
    .line 481
    const/4 v9, 0x2
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    invoke-virtual {v2, v6}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->setGridPanel(Lcom/imaginstudio/imagetools/pixellab/GridPanel;)V
    .line 482
    const/4 v9, 0x3
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v6
    const/high16 v7, -0x1000000
    const/16 v8, 0xa
    invoke-direct {v2, v6, v7, v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;-><init>(Landroid/content/Context;II)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
    .line 483
    const/4 v9, 0x0
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v6
    invoke-direct {v2, v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;
    .line 484
    const/4 v9, 0x1
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v6
    invoke-direct {v2, v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;
    .line 485
    const/4 v9, 0x2
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v6
    invoke-direct {v2, v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;
    .line 486
    const/4 v9, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setVisibility(I)V
    .line 487
    const/4 v9, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->setVisibility(I)V
    .line 489
    const/4 v9, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setVisibility(I)V
    .line 490
    const/4 v9, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setVisibility(I)V
    .line 491
    const/4 v9, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->disable()V
    .line 492
    const/4 v9, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->disable()V
    .line 494
    const/4 v9, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v7, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v2, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .line 496
    const/4 v9, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    .line 497
    const/4 v9, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    .line 498
    const/4 v9, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    .line 499
    const/4 v9, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    .line 500
    const/4 v9, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    .line 501
    const/4 v9, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    .line 502
    const/4 v9, 0x0
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v6
    invoke-direct {v2, v6}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;-><init>(Landroid/content/Context;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
    .line 503
    const/4 v9, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->setVisibility(I)V
    const v2, 0x7f08013d
    .line 504
    const/4 v9, 0x2
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;
    const v2, 0x7f0801c3
    .line 505
    const/4 v9, 0x3
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;
    .line 506
    const/4 v9, 0x0
    new-instance v2, Landroid/os/Handler;
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveHandler:Landroid/os/Handler;
    .line 507
    const/4 v9, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .line 508
    const/4 v9, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->gridPanel:Lcom/imaginstudio/imagetools/pixellab/GridPanel;
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    .line 513
    const/4 v9, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v2
    .line 514
    const/4 v9, 0x0
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    move-result-object v4
    .line 515
    const/4 v9, 0x1
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    invoke-direct {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;-><init>()V
    iput-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    .line 516
    const/4 v9, 0x2
    new-instance v5, Landroid/os/Bundle;
    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(I)V
    if-eqz p1, :cond_5
    const/4 v9, 0x3
    const-string v6, "currTab"
    const-string v7, "currTab"
    .line 518
    const/4 v9, 0x0
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result p1
    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    .line 520
    const/4 v9, 0x1
    :cond_5
    const/4 v9, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    invoke-virtual {p1, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->setArguments(Landroid/os/Bundle;)V
    const-string p1, "fragment_tools"
    .line 522
    const/4 v9, 0x3
    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object p1
    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    const-string v5, "option_expand"
    .line 523
    const/4 v9, 0x0
    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;
    if-eqz p1, :cond_6
    const/4 v9, 0x1
    .line 525
    const/4 v9, 0x2
    invoke-virtual {v4, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :cond_6
    const/4 v9, 0x3
    if-eqz v2, :cond_7
    const/4 v9, 0x0
    .line 528
    const/4 v9, 0x1
    invoke-virtual {v4, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .line 531
    const/4 v9, 0x2
    :cond_7
    const/4 v9, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    const-string v2, "fragment_tools"
    invoke-virtual {v4, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .line 534
    const/4 v9, 0x0
    :try_start_1
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_2
    const/4 v9, 0x1
    :catch_1
    move-exception p1
    .line 536
    const/4 v9, 0x2
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    .line 539
    const/4 v9, 0x3
    :goto_2
    const/4 v9, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$11;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$11;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setChangeListener(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage$OnChangeListener;)V
    .line 545
    const/4 v9, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setSelectionListener(Lcom/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;)V
    .line 548
    const/4 v9, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->content:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z
    .line 578
    const/4 v9, 0x3
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$1;
    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->checkPermissionsAndDo(Ljava/lang/Runnable;)V
    .line 579
    const/4 v9, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->tinydb:Lcom/imaginstudio/imagetools/pixellab/TinyDB;
    const-string v1, "Ax3Rf3"
    invoke-virtual {p1, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getBoolean(Ljava/lang/String;Z)Z
    move-result p1
    if-eqz p1, :cond_8
    const/4 v9, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->makePremium(Z)V
    .line 580
    const/4 v9, 0x2
    :cond_8
    const/4 v9, 0x3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->initBilling()V
    return-void
    const/4 v1, 0x1
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    const/4 v2, 0x1
    .line 2172
    const/4 v2, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;
    move-result-object v0
    const v1, 0x7f0b0003
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    const/4 p1, 0x1
    return p1
    const/4 v0, 0x2
.end method
.method protected onDestroy()V
    .locals 1
    const/4 v0, 0x0
    .line 249
    const/4 v0, 0x1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V
    .line 251
    const/4 v0, 0x2
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stopAutoSave()V
    return-void
    const/4 v0, 0x0
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    const/4 v1, 0x0
    const/16 v0, 0x52
    if-eq p1, v0, :cond_0
    const/4 v1, 0x1
    .line 316
    const/4 v1, 0x2
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
    move-result p1
    return p1
    :cond_0
    const/4 v1, 0x3
    const p1, 0x7f080020
    .line 309
    const/4 v1, 0x0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object p1
    if-eqz p1, :cond_1
    const/4 v1, 0x1
    .line 310
    const/4 v1, 0x2
    iget-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->hiddenNonModal:Z
    if-nez p2, :cond_1
    const/4 v1, 0x3
    .line 311
    const/4 v1, 0x0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z
    :cond_1
    const/4 v1, 0x1
    const/4 p1, 0x1
    return p1
    const/4 v1, 0x1
.end method
.method public onObjectZChanged(Ljava/lang/String;I)V
    .locals 1
    const/4 v0, 0x3
    return-void
    const/4 v0, 0x0
.end method
.method protected onPause()V
    .locals 1
    const/4 v0, 0x1
    .line 940
    const/4 v0, 0x2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V
    .line 941
    const/4 v0, 0x3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stopAutoSave()V
    return-void
    const/4 v0, 0x0
.end method
.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    const/4 v1, 0x1
    .line 947
    const/4 v1, 0x2
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    const-string v0, "currPath"
    .line 948
    const/4 v1, 0x3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    move-result-object p1
    check-cast p1, Ljava/io/File;
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mCurrentPhotoFile:Ljava/io/File;
    return-void
    const/4 v1, 0x1
.end method
.method protected onResume()V
    .locals 3
    const/4 v2, 0x1
    .line 657
    const/4 v2, 0x2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->onMainResume(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .line 658
    const/4 v2, 0x3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startAutoSave()V
    .line 659
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->queryPurchasesRunnable:Ljava/lang/Runnable;
    const/4 v1, 0x0
    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startBillingConnection(Ljava/lang/Runnable;Z)V
    return-void
    const/4 v0, 0x2
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    const/4 v2, 0x2
    .line 918
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;
    if-eqz v0, :cond_0
    const/4 v2, 0x0
    .line 919
    const/4 v2, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    goto :goto_0
    const/4 v2, 0x2
    .line 922
    const/4 v2, 0x3
    :cond_0
    const/4 v2, 0x0
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->loadedContent:Z
    if-eqz v0, :cond_1
    const/4 v2, 0x1
    .line 923
    const/4 v2, 0x2
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->putStateInBundle(Landroid/os/Bundle;)V
    .line 924
    const/4 v2, 0x3
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->putUiStateInBundle(Landroid/os/Bundle;)V
    const-string v0, "currPath"
    .line 925
    const/4 v2, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mCurrentPhotoFile:Ljava/io/File;
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    const-string v0, "historyUndo"
    .line 926
    const/4 v2, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->saveToBundle()Landroid/os/Bundle;
    move-result-object v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    goto :goto_0
    const/4 v2, 0x2
    :cond_1
    const/4 v2, 0x3
    const-string v0, "invalidBundle"
    const/4 v1, 0x1
    .line 928
    const/4 v2, 0x0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    .line 932
    const/4 v2, 0x1
    :goto_0
    const/4 v2, 0x2
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
    return-void
    const/4 v0, 0x2
.end method
.method public onShapeCreate(Ljava/lang/String;)V
    .locals 3
    const/4 v2, 0x0
    .line 3489
    const/4 v2, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addObjectCreation(Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    return-void
    const/4 v0, 0x2
.end method
.method public onShapeDelete(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 3
    const/4 v2, 0x3
    .line 3494
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addObjectDeletion(Landroid/os/Bundle;ILjava/lang/String;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    return-void
    const/4 v0, 0x2
.end method
.method public onShapeGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    const/4 v2, 0x2
    .line 3519
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;
    invoke-virtual {v0, p1, v1, p2}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    return-void
    const/4 v0, 0x2
.end method
.method public onShapeSelectionChanged(ZI)V
    .locals 2
    const/4 v1, 0x1
    .line 3472
    const/4 v1, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->informShapeSelectionChanged(ZI)V
    .line 3473
    const/4 v1, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doneEditing()V
    .line 3474
    const/4 v1, 0x0
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toggleQuickActions(Z)V
    return-void
    const/4 v1, 0x1
.end method
.method public onStart()V
    .locals 1
    const/4 v0, 0x2
    .line 2934
    const/4 v0, 0x3
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V
    .line 2935
    const/4 v0, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startAutoSave()V
    return-void
    const/4 v0, 0x0
.end method
.method public onStop()V
    .locals 1
    const/4 v0, 0x2
    .line 2940
    const/4 v0, 0x3
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V
    .line 2941
    const/4 v0, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stopAutoSave()V
    return-void
    const/4 v0, 0x0
.end method
.method public onTextCreate(Ljava/lang/String;)V
    .locals 3
    const/4 v2, 0x2
    .line 3499
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addObjectCreation(Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    return-void
    const/4 v0, 0x2
.end method
.method public onTextDelete(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 3
    const/4 v2, 0x1
    .line 3509
    const/4 v2, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addObjectDeletion(Landroid/os/Bundle;ILjava/lang/String;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    return-void
    const/4 v0, 0x2
.end method
.method public onTextDoubleTap()V
    .locals 2
    const/4 v1, 0x0
    const/4 v0, 0x3
    .line 3514
    const/4 v1, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V
    return-void
    const/4 v1, 0x1
.end method
.method public onTextGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    const/4 v2, 0x3
    .line 3504
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;
    invoke-virtual {v0, p1, v1, p2}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    return-void
    const/4 v0, 0x2
.end method
.method public onTextSelectionChanged(Z)V
    .locals 2
    const/4 v1, 0x2
    .line 3465
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->fragmentTools:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->informTextSelectionChanged(Z)V
    .line 3466
    const/4 v1, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doneEditing()V
    .line 3467
    const/4 v1, 0x1
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toggleQuickActions(Z)V
    return-void
    const/4 v1, 0x1
.end method
.method openAutoSaveDialog()V
    .locals 9
    const/4 v8, 0x3
    .line 1967
    const/4 v8, 0x0
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "/pixelLab/autosave"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    .line 1968
    const/4 v8, 0x1
    new-instance v1, Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 1969
    const/4 v8, 0x2
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$46;
    invoke-direct {v2, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$46;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :cond_2
    const/4 v8, 0x3
    .line 1975
    const/4 v8, 0x0
    array-length v2, v1
    if-nez v2, :cond_0
    const/4 v8, 0x1
    goto :goto_1
    const/4 v8, 0x2
    .line 1979
    const/4 v8, 0x3
    :cond_0
    const/4 v8, 0x0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;
    move-result-object v2
    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .line 1981
    const/4 v8, 0x1
    array-length v2, v1
    new-array v2, v2, [Ljava/lang/String;
    const/4 v3, 0x0
    .line 1982
    const/4 v8, 0x2
    :goto_0
    const/4 v8, 0x3
    array-length v4, v1
    if-ge v3, v4, :cond_1
    const/4 v8, 0x0
    .line 1983
    const/4 v8, 0x1
    aget-object v4, v1, v3
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v4
    const-wide/16 v6, 0x3e8
    mul-long v4, v4, v6
    invoke-direct {p0, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getDate(J)Ljava/lang/String;
    move-result-object v4
    aput-object v4, v2, v3
    add-int/lit8 v3, v3, 0x1
    goto :goto_0
    const/4 v8, 0x2
    .line 1985
    const/4 v8, 0x3
    :cond_1
    const/4 v8, 0x0
    new-instance v3, Landroid/app/AlertDialog$Builder;
    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v4, 0x7f0c004c
    .line 1986
    const/4 v8, 0x1
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
    .line 1987
    const/4 v8, 0x2
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;
    invoke-direct {v4, p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;[Ljava/lang/String;)V
    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 2002
    const/4 v8, 0x3
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v0
    .line 2003
    const/4 v8, 0x0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    return-void
    :cond_2
    const/4 v8, 0x1
    :goto_1
    const/4 v8, 0x2
    const v0, 0x7f0c00fc
    .line 1976
    const/4 v8, 0x3
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V
    return-void
    const/4 v0, 0x0
.end method
.method public optionExpandCancelAction()V
    .locals 3
    const/4 v2, 0x1
    .line 261
    const/4 v2, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v0
    const-string v1, "option_expand"
    .line 262
    const/4 v2, 0x3
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;
    if-eqz v0, :cond_0
    const/4 v2, 0x0
    .line 264
    const/4 v2, 0x1
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->doCancelAction()V
    :cond_0
    const/4 v2, 0x2
    return-void
    const/4 v0, 0x2
.end method
.method pickGalleryImage(I)V
    .locals 2
    const/4 v1, 0x0
    .line 1553
    const/4 v1, 0x1
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$32;
    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$32;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;I)V
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->checkPermissionsAndDo(Ljava/lang/Runnable;)V
    return-void
    const/4 v1, 0x1
.end method
.method public pickNewTexture(Z)V
    .locals 1
    const/4 v0, 0x3
    if-eqz p1, :cond_0
    const/4 v0, 0x0
    const/16 p1, 0x2d
    goto :goto_0
    const/4 v0, 0x1
    :cond_0
    const/4 v0, 0x2
    const/16 p1, 0x13
    .line 2563
    const/4 v0, 0x3
    :goto_0
    const/4 v0, 0x0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->pickGalleryImage(I)V
    return-void
    const/4 v0, 0x0
.end method
.method public presetsChanged()V
    .locals 3
    const/4 v2, 0x2
    .line 2478
    const/4 v2, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v0
    const-string v1, "fragment_tools"
    .line 2479
    const/4 v2, 0x0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    move-result-object v0
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
    if-eqz v0, :cond_0
    const/4 v2, 0x1
    .line 2481
    const/4 v2, 0x2
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->informPresetsChanged()V
    :cond_0
    const/4 v2, 0x3
    return-void
    const/4 v0, 0x2
.end method
.method public putStateInBundle(Landroid/os/Bundle;)V
    .locals 3
    const/4 v2, 0x1
    .line 990
    const/4 v2, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->bundleObjects(Landroid/os/Bundle;)V
    const-string v0, "objectsSelectedReference"
    .line 995
    const/4 v2, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getSelectedReference()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    return-void
    const/4 v0, 0x2
.end method
.method quoteOpened()V
    .locals 2
    const/4 v1, 0x1
    .line 1504
    const/4 v1, 0x2
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->openedQuotes:Z
    if-eqz v0, :cond_0
    const/4 v1, 0x3
    .line 1505
    const/4 v1, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showInterstitial()V
    .line 1507
    const/4 v1, 0x1
    :cond_0
    const/4 v1, 0x2
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->openedQuotes:Z
    xor-int/lit8 v0, v0, 0x1
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->openedQuotes:Z
    return-void
    const/4 v1, 0x1
.end method
.method public recreatePreview(Landroid/os/Bundle;)V
    .locals 4
    const/4 v3, 0x0
    .line 2137
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    const-string v1, "objectsBundle"
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v1
    const-string v2, "objectsIds"
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    move-result-object v2
    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->recreateObjects(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    const-string v0, "objectsSelectedReference"
    .line 2138
    const/4 v3, 0x2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const/4 v1, -0x1
    if-eqz v0, :cond_1
    const/4 v3, 0x3
    const-string p1, "0"
    .line 2140
    const/4 v3, 0x0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-nez p1, :cond_0
    const/4 v3, 0x1
    .line 2141
    const/4 v3, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectByReference(Ljava/lang/String;)V
    goto :goto_0
    const/4 v3, 0x3
    .line 2143
    const/4 v3, 0x0
    :cond_0
    const/4 v3, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    .line 2144
    const/4 v3, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    goto :goto_0
    const/4 v3, 0x3
    :cond_1
    const/4 v3, 0x0
    const-string v0, "shapesSelectedId"
    .line 2148
    const/4 v3, 0x1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result v0
    const-string v2, "textsSelectedId"
    .line 2149
    const/4 v3, 0x2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result p1
    if-nez v0, :cond_2
    const/4 v3, 0x3
    if-nez p1, :cond_2
    const/4 v3, 0x0
    .line 2152
    const/4 v3, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    .line 2153
    const/4 v3, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    goto :goto_0
    const/4 v3, 0x3
    .line 2155
    const/4 v3, 0x0
    :cond_2
    const/4 v3, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v2, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V
    .line 2156
    const/4 v3, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V
    .line 2159
    const/4 v3, 0x3
    :goto_0
    const/4 v3, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I
    if-ne p1, v1, :cond_4
    const/4 v3, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I
    if-eq p1, v1, :cond_3
    const/4 v3, 0x2
    goto :goto_1
    const/4 v3, 0x3
    :cond_3
    const/4 v3, 0x0
    const/4 p1, 0x0
    goto :goto_2
    const/4 v3, 0x1
    :cond_4
    const/4 v3, 0x2
    :goto_1
    const/4 v3, 0x3
    const/4 p1, 0x1
    :goto_2
    const/4 v3, 0x0
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toggleQuickActions(Z)V
    return-void
    const/4 v1, 0x3
.end method
.method public recreatePreviewBg(Landroid/os/Bundle;)V
    .locals 19
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    if-eqz v1, :cond_5
    const-string v2, "bgType"
    const/4 v3, 0x1
    .line 2049
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v8
    const-string v2, "bgWidth"
    .line 2050
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v9
    const-string v2, "bgHeight"
    .line 2051
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v10
    const-string v2, "bgColor"
    const/4 v4, -0x1
    .line 2052
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v6
    const-string v2, "bgGradientV2"
    .line 2053
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-nez v2, :cond_0
    .line 2056
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    const-string v4, "bgGradientType"
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v3
    const-string v4, "bgGradientStart"
    const v5, -0x333334
    .line 2057
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v4
    const-string v5, "bgGradientEnd"
    const v7, -0xbbbbbc
    .line 2058
    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v5
    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V
    move-object v7, v2
    goto :goto_0
    .line 2061
    :cond_0
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    invoke-direct {v3, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V
    move-object v7, v3
    :goto_0
    const-string v2, "bgRotation"
    const/4 v3, 0x0
    .line 2063
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v14
    const-string v2, "bgPhotoV2"
    .line 2065
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    move-result v2
    if-nez v2, :cond_1
    .line 2067
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    const-string v2, "bgPhotoPath"
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    move v11, v14
    invoke-virtual/range {v4 .. v11}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setOptions(Ljava/lang/String;ILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IIII)V
    goto :goto_1
    .line 2069
    :cond_1
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    const-string v2, "bgPhotoSrc"
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v2
    invoke-direct {v5, v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Landroid/os/Bundle;)V
    .line 2070
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;
    const-string v4, "bgPhotoCrop"
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v4
    invoke-direct {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;-><init>(Landroid/os/Bundle;)V
    const-string v4, "bgPhotoForcedDim"
    .line 2071
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    move-result v13
    const-string v4, "bgActualWidth"
    .line 2072
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result v11
    const-string v4, "bgActualHeight"
    .line 2073
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result v12
    .line 2074
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->getPortion()Landroid/graphics/RectF;
    move-result-object v15
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->isCircular()Z
    move-result v16
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipH()Z
    move-result v17
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipV()Z
    move-result v18
    invoke-virtual/range {v4 .. v18}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setOptions(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IIIIIZILandroid/graphics/RectF;ZZZ)V
    .line 2077
    :goto_1
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
    const-string v4, "effectVignetteColor"
    const/high16 v5, -0x1000000
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v4
    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->setVignetteColor(I)V
    .line 2078
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
    const-string v4, "effectVignetteAlpha"
    const/16 v5, 0xaa
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v4
    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->setVignetteAlpha(I)V
    .line 2080
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;
    const-string v4, "effectNoiseVal2"
    const/4 v5, 0x7
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v4
    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->setNumberToRepeat(I)V
    .line 2081
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;
    const-string v4, "effectNoiseAlpha"
    const/16 v5, 0x32
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v4
    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->setEffectAlpha(I)V
    .line 2083
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;
    const-string v4, "effectStripesAlpha"
    const/16 v5, 0x5a
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v4
    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->setEffectAlpha(I)V
    .line 2084
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;
    const-string v4, "effectStripesVal2"
    const/16 v5, 0xa
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v4
    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->setNumberToRepeat(I)V
    const-string v2, "effectVignetteEnabled"
    .line 2086
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    move-result v2
    const-string v4, "effectNoiseEnabled"
    .line 2087
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    move-result v4
    const-string v5, "effectStripesEnabled"
    .line 2088
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    move-result v5
    .line 2089
    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
    const/16 v7, 0x8
    if-eqz v2, :cond_2
    const/4 v2, 0x0
    goto :goto_2
    :cond_2
    const/16 v2, 0x8
    :goto_2
    invoke-virtual {v6, v2}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->setVisibility(I)V
    .line 2090
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;
    if-eqz v4, :cond_3
    const/4 v4, 0x0
    goto :goto_3
    :cond_3
    const/16 v4, 0x8
    :goto_3
    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->setVisibility(I)V
    .line 2091
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;
    if-eqz v5, :cond_4
    const/4 v7, 0x0
    :cond_4
    invoke-virtual {v2, v7}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->setVisibility(I)V
    const-string v2, "effectBrightnessVal"
    .line 2093
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v2
    const-string v4, "effectContrastVal"
    .line 2094
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v4
    const-string v5, "effectHueVal"
    .line 2095
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v5
    const-string v6, "effectSaturationVal"
    .line 2096
    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v1
    .line 2097
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v3, v2, v4, v1, v5}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setEffectsNoUpdate(IIII)V
    :cond_5
    return-void
    const/4 v1, 0x3
.end method
.method public removePreset(Ljava/lang/String;)V
    .locals 2
    const/4 v1, 0x3
    .line 2909
    const/4 v1, 0x0
    new-instance v0, Ljava/io/File;
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    const-string p1, "deleted"
    .line 2910
    const/4 v1, 0x1
    invoke-static {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->putEmptyFileHere(Ljava/io/File;Ljava/lang/String;)V
    return-void
    const/4 v1, 0x1
.end method
.method public saveAPreview()Landroid/graphics/Bitmap;
    .locals 6
    const/4 v5, 0x3
    .line 2879
    const/4 v5, 0x0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->safetyCheck()Z
    move-result v0
    const/4 v1, 0x1
    if-nez v0, :cond_0
    const/4 v5, 0x1
    .line 2880
    const/4 v5, 0x2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
    .line 2882
    const/4 v5, 0x3
    :cond_0
    const/4 v5, 0x0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I
    move-result v0
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I
    move-result v2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v0
    .line 2883
    const/4 v5, 0x1
    new-instance v2, Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V
    .line 2884
    const/4 v5, 0x2
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    .line 2885
    const/4 v5, 0x3
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    const/high16 v2, 0x43800000    # 256.0f
    .line 2887
    const/4 v5, 0x0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
    int-to-float v3, v3
    div-float v3, v2, v3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
    int-to-float v4, v4
    div-float/2addr v2, v4
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F
    move-result v2
    .line 2888
    const/4 v5, 0x1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v3
    int-to-float v3, v3
    mul-float v3, v3, v2
    float-to-int v3, v3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v4
    int-to-float v4, v4
    mul-float v2, v2, v4
    float-to-int v2, v2
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
    const/4 v1, 0x1
.end method
.method public saveCurrBgState()V
    .locals 5
    const/4 v4, 0x3
    .line 1754
    const/4 v4, 0x0
    new-instance v0, Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    .line 1755
    const/4 v4, 0x1
    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->putUiStateInBundle(Landroid/os/Bundle;)V
    .line 1756
    const/4 v4, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->bg_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;
    const-string v3, ""
    invoke-virtual {v1, v0, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    return-void
    const/4 v0, 0x0
.end method
.method public saveCurrShapeState(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .locals 4
    const/4 v3, 0x0
    if-eqz p1, :cond_0
    const/4 v3, 0x1
    .line 1745
    const/4 v3, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;
    move-result-object v1
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;
    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {v0, v1, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    :cond_0
    const/4 v3, 0x3
    return-void
    const/4 v1, 0x3
.end method
.method saveCurrTextState(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V
    .locals 4
    const/4 v3, 0x1
    if-eqz p1, :cond_0
    const/4 v3, 0x2
    .line 1750
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;
    move-result-object v1
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;
    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {v0, v1, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    :cond_0
    const/4 v3, 0x0
    return-void
    const/4 v1, 0x3
.end method
.method public saveCurrentAsPreset(Ljava/lang/String;)V
    .locals 4
    const/4 v3, 0x2
    .line 2755
    const/4 v3, 0x3
    new-instance v0, Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v2
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, "/pixelLab/presets/"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 2756
    const/4 v3, 0x0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :cond_0
    const/4 v3, 0x1
    .line 2757
    const/4 v3, 0x2
    new-instance v0, Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v1, 0x7f0c0060
    .line 2758
    const/4 v3, 0x3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0137
    .line 2759
    const/4 v3, 0x0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
    const/high16 v1, 0x1040000
    const/4 v2, 0x0
    .line 2760
    const/4 v3, 0x1
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const v1, 0x104000a
    .line 2761
    const/4 v3, 0x2
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$56;
    invoke-direct {v2, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$56;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 2767
    const/4 v3, 0x3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    goto :goto_0
    const/4 v3, 0x0
    .line 2769
    const/4 v3, 0x1
    :cond_0
    const/4 v3, 0x2
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentAsPresetOverwrite(Ljava/lang/String;)V
    :goto_0
    const/4 v3, 0x3
    return-void
    const/4 v1, 0x3
.end method
.method saveCurrentTextAsStyle()V
    .locals 5
    const/4 v4, 0x1
    .line 1341
    const/4 v4, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    move-result-object v0
    if-eqz v0, :cond_0
    const/4 v4, 0x3
    .line 1343
    const/4 v4, 0x0
    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v2, 0x7f0c0060
    .line 1344
    const/4 v4, 0x1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0152
    .line 1345
    const/4 v4, 0x2
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
    const/high16 v2, 0x1040000
    const/4 v3, 0x0
    .line 1346
    const/4 v4, 0x3
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const v2, 0x1040013
    .line 1347
    const/4 v4, 0x0
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;
    invoke-direct {v3, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .line 1425
    const/4 v4, 0x1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :cond_0
    const/4 v4, 0x2
    return-void
    const/4 v0, 0x0
.end method
.method public saveJson(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
    const/4 v5, 0x0
    .line 2775
    const/4 v5, 0x1
    new-instance v0, Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v2
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, "/pixelLab/presets/"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 2776
    const/4 v5, 0x2
    new-instance v1, Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v3
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v3, "/pixelLab/presets/"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "/data.plab"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 2777
    const/4 v5, 0x3
    new-instance v2, Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v4
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v4, "/pixelLab/presets/"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, "/res"
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    .line 2780
    const/4 v5, 0x0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    .line 2781
    const/4 v5, 0x1
    new-instance p2, Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v3
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v3, "/pixelLab/presets"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->putNoMediaHere(Ljava/io/File;)V
    .line 2783
    const/4 v5, 0x2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p2
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->persist:Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;
    invoke-virtual {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;
    move-result-object p1
    .line 2786
    const/4 v5, 0x3
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;
    move-result-object p1
    if-eqz p1, :cond_0
    const/4 v5, 0x0
    .line 2790
    const/4 v5, 0x1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object p1
    .line 2793
    const/4 v5, 0x2
    :try_start_0
    new-instance p2, Ljava/io/FileWriter;
    invoke-direct {p2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    .line 2794
    const/4 v5, 0x3
    new-instance v0, Ljava/io/BufferedWriter;
    invoke-direct {v0, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    .line 2795
    const/4 v5, 0x0
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    .line 2796
    const/4 v5, 0x1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    const/4 v5, 0x2
    :catch_0
    move-exception p1
    .line 2798
    const/4 v5, 0x3
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :cond_0
    const/4 v5, 0x0
    :goto_0
    const/4 v5, 0x1
    return-void
    const/4 v1, 0x1
.end method
.method public saveStatesForReferences(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
    const/4 v4, 0x3
    .line 1759
    const/4 v4, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->startGrouping()V
    .line 1760
    const/4 v4, 0x1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object p1
    :cond_0
    const/4 v4, 0x2
    :goto_0
    const/4 v4, 0x3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_2
    const/4 v4, 0x0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    .line 1761
    const/4 v4, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getObjectByRef(Ljava/lang/String;)Landroid/view/View;
    move-result-object v0
    .line 1762
    const/4 v4, 0x2
    instance-of v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    if-eqz v1, :cond_1
    const/4 v4, 0x3
    .line 1763
    const/4 v4, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;
    move-result-object v2
    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;
    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;
    invoke-virtual {v1, v2, v3, v0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    goto :goto_0
    const/4 v4, 0x1
    .line 1764
    const/4 v4, 0x2
    :cond_1
    const/4 v4, 0x3
    instance-of v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    if-eqz v1, :cond_0
    const/4 v4, 0x0
    .line 1765
    const/4 v4, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;
    move-result-object v2
    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;
    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;
    invoke-virtual {v1, v2, v3, v0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    goto :goto_0
    const/4 v4, 0x2
    .line 1768
    const/4 v4, 0x3
    :cond_2
    const/4 v4, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->endGrouping()V
    return-void
    const/4 v0, 0x0
.end method
.method saveUriToFile(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    const/4 v7, 0x2
    .line 1786
    const/4 v7, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    const-string v1, "imported"
    .line 1787
    const/4 v7, 0x0
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v1
    const/4 v2, 0x0
    .line 1792
    const/4 v7, 0x1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    if-eqz p1, :cond_0
    const/4 v7, 0x2
    .line 1794
    const/4 v7, 0x3
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;
    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    goto :goto_0
    const/4 v7, 0x0
    :catchall_0
    move-exception v0
    move-object v1, v0
    move-object v0, v2
    goto/16 :goto_8
    const/4 v7, 0x1
    :catch_0
    move-exception v0
    move-object v1, v0
    move-object v0, v2
    goto :goto_2
    const/4 v7, 0x2
    :cond_0
    const/4 v7, 0x3
    move-object v0, v2
    .line 1797
    const/4 v7, 0x0
    :goto_0
    const/4 v7, 0x1
    :try_start_2
    new-instance v3, Ljava/io/BufferedOutputStream;
    new-instance v4, Ljava/io/FileOutputStream;
    const/4 v5, 0x0
    invoke-direct {v4, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    const/16 v4, 0x400
    .line 1798
    const/4 v7, 0x2
    :try_start_3
    new-array v4, v4, [B
    if-eqz v0, :cond_2
    const/4 v7, 0x3
    .line 1800
    const/4 v7, 0x0
    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->read([B)I
    .line 1802
    const/4 v7, 0x1
    :cond_1
    const/4 v7, 0x2
    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write([B)V
    .line 1803
    const/4 v7, 0x3
    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->read([B)I
    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    const/4 v6, -0x1
    if-ne v5, v6, :cond_1
    const/4 v7, 0x0
    goto :goto_1
    const/4 v7, 0x1
    :cond_2
    const/4 v7, 0x2
    move-object v1, v2
    :goto_1
    const/4 v7, 0x3
    if-eqz v0, :cond_3
    const/4 v7, 0x0
    .line 1814
    const/4 v7, 0x1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :cond_3
    const/4 v7, 0x2
    if-eqz v3, :cond_4
    const/4 v7, 0x3
    .line 1815
    const/4 v7, 0x0
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :cond_4
    const/4 v7, 0x1
    if-eqz p1, :cond_8
    const/4 v7, 0x2
    .line 1816
    const/4 v7, 0x3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    goto :goto_7
    const/4 v7, 0x0
    :catch_1
    move-exception v1
    goto :goto_3
    const/4 v7, 0x1
    :catchall_1
    move-exception v1
    goto :goto_8
    const/4 v7, 0x2
    :catch_2
    move-exception v1
    move-object v3, v2
    goto :goto_3
    const/4 v7, 0x3
    :catchall_2
    move-exception v0
    move-object v1, v0
    move-object p1, v2
    move-object v0, p1
    goto :goto_8
    const/4 v7, 0x0
    :catch_3
    move-exception v0
    move-object v1, v0
    move-object p1, v2
    move-object v0, p1
    :goto_2
    const/4 v7, 0x1
    move-object v3, v0
    .line 1809
    const/4 v7, 0x2
    :goto_3
    const/4 v7, 0x3
    :try_start_5
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    .line 1811
    const/4 v7, 0x0
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    if-eqz v0, :cond_5
    const/4 v7, 0x1
    .line 1814
    const/4 v7, 0x2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    goto :goto_4
    const/4 v7, 0x3
    :catch_4
    move-exception p1
    goto :goto_5
    const/4 v7, 0x0
    :cond_5
    const/4 v7, 0x1
    :goto_4
    const/4 v7, 0x2
    if-eqz v3, :cond_6
    const/4 v7, 0x3
    .line 1815
    const/4 v7, 0x0
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :cond_6
    const/4 v7, 0x1
    if-eqz p1, :cond_7
    const/4 v7, 0x2
    .line 1816
    const/4 v7, 0x3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    goto :goto_6
    const/4 v7, 0x0
    .line 1819
    const/4 v7, 0x1
    :goto_5
    const/4 v7, 0x2
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :cond_7
    const/4 v7, 0x3
    :goto_6
    const/4 v7, 0x0
    move-object v1, v2
    :cond_8
    const/4 v7, 0x1
    :goto_7
    const/4 v7, 0x2
    if-eqz v1, :cond_9
    const/4 v7, 0x3
    .line 1822
    const/4 v7, 0x0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
    move-result-object v2
    :cond_9
    const/4 v7, 0x1
    return-object v2
    :catchall_3
    move-exception v1
    move-object v2, v3
    :goto_8
    const/4 v7, 0x2
    if-eqz v0, :cond_a
    const/4 v7, 0x3
    .line 1814
    const/4 v7, 0x0
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    goto :goto_9
    const/4 v7, 0x1
    :catch_5
    move-exception p1
    goto :goto_a
    const/4 v7, 0x2
    :cond_a
    const/4 v7, 0x3
    :goto_9
    const/4 v7, 0x0
    if-eqz v2, :cond_b
    const/4 v7, 0x1
    .line 1815
    const/4 v7, 0x2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :cond_b
    const/4 v7, 0x3
    if-eqz p1, :cond_c
    const/4 v7, 0x0
    .line 1816
    const/4 v7, 0x1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    goto :goto_b
    const/4 v7, 0x2
    .line 1819
    const/4 v7, 0x3
    :goto_a
    const/4 v7, 0x0
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    .line 1820
    const/4 v7, 0x1
    :cond_c
    const/4 v7, 0x2
    :goto_b
    const/4 v7, 0x3
    throw v1
    const/4 v1, 0x3
.end method
.method public setBgFillOptions(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2
    const/4 v1, 0x1
    .line 2946
    const/4 v1, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setFillOptionsNoUpdate(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .line 2947
    const/4 v1, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V
    return-void
    const/4 v1, 0x1
.end method
.method public setRenderMode(ZF)V
    .locals 2
    const/4 v1, 0x1
    .line 2030
    const/4 v1, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setRenderMode(ZF)V
    .line 2031
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->setRenderMode(ZF)V
    .line 2032
    const/4 v1, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->cleanMemory()V
    return-void
    const/4 v1, 0x1
.end method
.method public setScreenContent(Landroid/os/Bundle;)V
    .locals 4
    const/4 v3, 0x2
    if-nez p1, :cond_0
    const/4 v3, 0x3
    const/4 v0, 0x0
    goto :goto_0
    const/4 v3, 0x0
    :cond_0
    const/4 v3, 0x1
    const-string v0, "projectDir"
    .line 2102
    const/4 v3, 0x2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    :goto_0
    const/4 v3, 0x3
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->currentProjectDir:Ljava/lang/String;
    .line 2104
    const/4 v3, 0x0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->recreatePreviewBg(Landroid/os/Bundle;)V
    .line 2106
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->previewPanel:Landroid/widget/RelativeLayout;
    const/high16 v1, 0x3f800000    # 1.0f
    if-eqz v0, :cond_1
    const/4 v3, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->previewPanel:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I
    move-result v0
    int-to-float v0, v0
    goto :goto_1
    const/4 v3, 0x3
    :cond_1
    const/4 v3, 0x0
    const/high16 v0, 0x3f800000    # 1.0f
    .line 2107
    const/4 v3, 0x1
    :goto_1
    const/4 v3, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->previewPanel:Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_2
    const/4 v3, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->previewPanel:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I
    move-result v1
    int-to-float v1, v1
    .line 2108
    const/4 v3, 0x0
    :cond_2
    const/4 v3, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I
    move-result v2
    int-to-float v2, v2
    div-float/2addr v1, v2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I
    move-result v2
    int-to-float v2, v2
    div-float/2addr v0, v2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F
    move-result v0
    .line 2110
    const/4 v3, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I
    move-result v1
    int-to-float v1, v1
    mul-float v1, v1, v0
    .line 2111
    const/4 v3, 0x3
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I
    move-result v2
    int-to-float v2, v2
    mul-float v0, v0, v2
    .line 2113
    const/4 v3, 0x0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    float-to-int v1, v1
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
    .line 2114
    const/4 v3, 0x1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    float-to-int v0, v0
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
    .line 2115
    const/4 v3, 0x2
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->displayHeight:I
    .line 2116
    const/4 v3, 0x3
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->displayWidth:I
    .line 2118
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V
    .line 2120
    const/4 v3, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$48;
    invoke-direct {v1, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$48;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/os/Bundle;)V
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    return-void
    const/4 v1, 0x3
.end method
.method public setUsedImage(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;)V
    .locals 2
    const/4 v1, 0x3
    const/4 v0, 0x1
    .line 2951
    const/4 v1, 0x0
    iput-boolean v0, p1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z
    .line 2952
    const/4 v1, 0x1
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    .line 2953
    const/4 v1, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setUsedImage(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;)V
    return-void
    const/4 v1, 0x1
.end method
.method showExportDialog()V
    .locals 10
    const/4 v9, 0x0
    .line 3337
    const/4 v9, 0x1
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getWidth()I
    move-result v2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getHeight()I
    move-result v3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    iget-boolean v4, v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualWidth()I
    move-result v5
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getActualHeight()I
    move-result v6
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hasTransparency()Z
    move-result v7
    move-object v0, v8
    move-object v1, p0
    invoke-direct/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;-><init>(Landroid/content/Context;IIZIIZ)V
    .line 3339
    const/4 v9, 0x2
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$80;
    invoke-direct {v0, p0, v8}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$80;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    invoke-virtual {v8, v0}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->setOnGalleryButtonClicked(Landroid/view/View$OnClickListener;)V
    .line 3347
    const/4 v9, 0x3
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$81;
    invoke-direct {v0, p0, v8}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$81;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    invoke-virtual {v8, v0}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->setOnShareButtonClicked(Landroid/view/View$OnClickListener;)V
    .line 3355
    const/4 v9, 0x0
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;
    invoke-direct {v0, p0, v8}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    invoke-virtual {v8, v0}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->setOnSocialMediaShare(Landroid/view/View$OnClickListener;)V
    .line 3409
    const/4 v9, 0x1
    invoke-virtual {v8}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->show()V
    return-void
    const/4 v1, 0x1
.end method
.method showInterstitial()V
    .locals 2
    const/4 v1, 0x3
    .line 1490
    const/4 v1, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z
    move-result v0
    if-eqz v0, :cond_0
    const/4 v1, 0x1
    sget-boolean v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->isPremium:Z
    if-nez v0, :cond_0
    const/4 v1, 0x2
    .line 1491
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V
    :cond_0
    const/4 v1, 0x0
    return-void
    const/4 v1, 0x1
.end method
.method showProjectBrowser(Z)V
    .locals 4
    const/4 v3, 0x2
    .line 2891
    const/4 v3, 0x3
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    move-result-object v1
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$57;
    invoke-direct {v2, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$57;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)V
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;-><init>(Landroid/content/Context;ZLandroid/support/v4/app/FragmentManager;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;)V
    .line 2906
    const/4 v3, 0x0
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->show()V
    return-void
    const/4 v1, 0x3
.end method
.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    const/4 v1, 0x2
    const-string v0, "requestCode"
    .line 1543
    const/4 v1, 0x3
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .line 1544
    const/4 v1, 0x0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V
    return-void
    const/4 v1, 0x1
.end method
.method toggleLayers()V
    .locals 2
    const/4 v1, 0x2
    .line 2229
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I
    move-result v0
    if-eqz v0, :cond_0
    const/4 v1, 0x0
    const/4 v0, 0x1
    .line 2230
    const/4 v1, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->enableLayers(Z)V
    goto :goto_0
    const/4 v1, 0x2
    :cond_0
    const/4 v1, 0x3
    const/4 v0, 0x0
    .line 2232
    const/4 v1, 0x0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->enableLayers(Z)V
    :goto_0
    const/4 v1, 0x1
    return-void
    const/4 v1, 0x1
.end method
.method toggleNonModalControls(Z)V
    .locals 2
    const/4 v1, 0x3
    .line 3196
    const/4 v1, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->topBar:Landroid/view/View;
    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toggleNonModalControls_r(ZLandroid/view/View;)V
    xor-int/lit8 p1, p1, 0x1
    .line 3197
    const/4 v1, 0x1
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->hiddenNonModal:Z
    return-void
    const/4 v1, 0x1
.end method
.method toggleNonModalControls_r(ZLandroid/view/View;)V
    .locals 5
    const/4 v4, 0x3
    if-nez p2, :cond_0
    const/4 v4, 0x0
    return-void
    .line 3202
    const/4 v4, 0x1
    :cond_0
    const/4 v4, 0x2
    instance-of v0, p2, Landroid/view/ViewGroup;
    const/16 v1, 0x8
    const/4 v2, 0x0
    if-eqz v0, :cond_3
    const/4 v4, 0x3
    .line 3203
    const/4 v4, 0x0
    invoke-virtual {p2}, Landroid/view/View;->getId()I
    move-result v0
    const v3, 0x7f080200
    if-ne v0, v3, :cond_2
    const/4 v4, 0x1
    if-eqz p1, :cond_1
    const/4 v4, 0x2
    const/4 v1, 0x0
    .line 3204
    const/4 v4, 0x3
    :cond_1
    const/4 v4, 0x0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V
    goto :goto_1
    const/4 v4, 0x1
    .line 3205
    const/4 v4, 0x2
    :cond_2
    const/4 v4, 0x3
    invoke-virtual {p2}, Landroid/view/View;->getId()I
    move-result v0
    const v1, 0x7f080261
    if-eq v0, v1, :cond_5
    const/4 v4, 0x0
    .line 3206
    const/4 v4, 0x1
    check-cast p2, Landroid/view/ViewGroup;
    .line 3207
    const/4 v4, 0x2
    :goto_0
    const/4 v4, 0x3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    if-ge v2, v0, :cond_5
    const/4 v4, 0x0
    .line 3208
    const/4 v4, 0x1
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->toggleNonModalControls_r(ZLandroid/view/View;)V
    add-int/lit8 v2, v2, 0x1
    goto :goto_0
    const/4 v4, 0x2
    .line 3211
    const/4 v4, 0x3
    :cond_3
    const/4 v4, 0x0
    invoke-virtual {p2}, Landroid/view/View;->getId()I
    move-result v0
    const v3, 0x7f08001d
    if-eq v0, v3, :cond_5
    const/4 v4, 0x1
    if-eqz p1, :cond_4
    const/4 v4, 0x2
    const/4 v1, 0x0
    .line 3212
    const/4 v4, 0x3
    :cond_4
    const/4 v4, 0x0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V
    :cond_5
    const/4 v4, 0x1
    :goto_1
    const/4 v4, 0x2
    return-void
    const/4 v0, 0x0
.end method
.method public undoAddLastHistory()V
    .locals 2
    const/4 v1, 0x0
    .line 269
    const/4 v1, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->undoAddLastStep()V
    return-void
    const/4 v1, 0x1
.end method
.method public unlockPremium()V
    .locals 3
    const/4 v2, 0x3
    .line 645
    const/4 v2, 0x0
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$3;
    invoke-direct {v0, p0, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    const/4 v1, 0x1
    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startBillingConnection(Ljava/lang/Runnable;Z)V
    return-void
    const/4 v0, 0x2
.end method
.method public updateBackground()V
    .locals 3
    const/4 v2, 0x2
    .line 2025
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->invalidate()V
    .line 2026
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->previewContainer:Landroid/view/View;
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrastColorIsDark()Z
    move-result v1
    if-eqz v1, :cond_0
    const/4 v2, 0x1
    const-string v1, "#212121"
    :goto_0
    const/4 v2, 0x2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v1
    goto :goto_1
    const/4 v2, 0x3
    :cond_0
    const/4 v2, 0x0
    const-string v1, "#fafafa"
    goto :goto_0
    const/4 v2, 0x1
    :goto_1
    const/4 v2, 0x2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    return-void
    const/4 v0, 0x2
.end method
.method public updateBackground(Z)V
    .locals 2
    const/4 v1, 0x0
    if-eqz p1, :cond_0
    const/4 v1, 0x1
    .line 2041
    const/4 v1, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    const/4 v0, 0x1
    iput-boolean v0, p1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->willResize:Z
    const/4 p1, 0x0
    .line 2042
    const/4 v1, 0x3
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->setScreenContent(Landroid/os/Bundle;)V
    .line 2044
    const/4 v1, 0x0
    :cond_0
    const/4 v1, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V
    return-void
    const/4 v1, 0x1
.end method
.method updateUndoButtonEnabled(Ljava/lang/Boolean;)V
    .locals 5
    const/4 v4, 0x3
    const v0, 0x7f08003c
    .line 3445
    const/4 v4, 0x0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    .line 3446
    const/4 v4, 0x1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    const/4 v1, 0x0
    const-wide/16 v2, 0x64
    if-eqz p1, :cond_0
    const/4 v4, 0x2
    const/4 p1, 0x1
    .line 3447
    const/4 v4, 0x3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V
    .line 3448
    const/4 v4, 0x0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    const/high16 v0, 0x3f800000    # 1.0f
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V
    goto :goto_0
    const/4 v4, 0x1
    :cond_0
    const/4 v4, 0x2
    const/4 p1, 0x0
    .line 3450
    const/4 v4, 0x3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V
    .line 3451
    const/4 v4, 0x0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    const/high16 v0, 0x3f000000    # 0.5f
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V
    :goto_0
    const/4 v4, 0x1
    return-void
    const/4 v0, 0x0
.end method
