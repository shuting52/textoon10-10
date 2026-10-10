.class public Lcom/imaginstudio/imagetools/pixellab/quotes_browser;
.super Landroid/support/v7/app/AppCompatActivity;
.source "quotes_browser.java"
# static fields
.field private static final LANG_ENG:Ljava/lang/String; = "en"
.field private static final LANG_FR:Ljava/lang/String; = "fr"
.field public static final QUOTE_EXPORTED:Ljava/lang/String; = "quoteExported"
# instance fields
.field currJob:Ljava/lang/String;
.field lpa:Landroid/widget/LinearLayout$LayoutParams;
.field quotesHolder:Landroid/widget/LinearLayout;
.field quotesHolderScroll:Landroid/widget/ScrollView;
.field quotesLang:Landroid/widget/Spinner;
.field quotesSection:Landroid/widget/Spinner;
.field sectionSpinnerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field
.field selectedLangDir:Ljava/lang/String;
.field selectedLangId:I
.field spinnerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field
# direct methods
.method public constructor <init>()V
    .locals 1
    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V
    const-string v0, "en"
    .line 51
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangDir:Ljava/lang/String;
    const/4 v0, 0x0
    .line 52
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangId:I
    const/4 v0, 0x0
    .line 53
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->spinnerArray:Ljava/util/ArrayList;
    .line 54
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->sectionSpinnerArray:Ljava/util/ArrayList;
    .line 55
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;
    return-void
.end method
.method private LoadLangs()V
    .locals 7
    const-string v6, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"
    .line 252
    const/4 v6, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v0
    .line 254
    const/4 v6, 0x1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;
    const-string v2, "quotes"
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->spinnerArray:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    const/4 v6, 0x2
    :catch_0
    move-exception v0
    .line 256
    const/4 v6, 0x3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    .line 258
    const/4 v6, 0x0
    :goto_0
    const/4 v6, 0x1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    .line 259
    const/4 v6, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->spinnerArray:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :goto_1
    const/4 v6, 0x3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_1
    const/4 v6, 0x0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    .line 260
    const/4 v6, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getPackageName()Ljava/lang/String;
    move-result-object v3
    .line 261
    const/4 v6, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getResources()Landroid/content/res/Resources;
    move-result-object v4
    const-string v5, "string"
    invoke-virtual {v4, v2, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v3
    if-eqz v3, :cond_0
    const/4 v6, 0x3
    .line 263
    const/4 v6, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :goto_1
    const/4 v6, 0x1
    .line 266
    const/4 v6, 0x2
    :cond_0
    const/4 v6, 0x3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :goto_1
    const/4 v6, 0x0
    .line 269
    const/4 v6, 0x1
    :cond_1
    const/4 v6, 0x2
    new-instance v1, Landroid/widget/ArrayAdapter;
    const v2, 0x1090008
    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
    const v0, 0x1090009
    .line 270
    const/4 v6, 0x3
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
    .line 271
    const/4 v6, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesLang:Landroid/widget/Spinner;
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    .line 272
    const/4 v6, 0x1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object v0
    const-string v1, "fr"
    .line 273
    const/4 v6, 0x2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_2
    const/4 v6, 0x3
    const-string v0, "fr"
    .line 274
    const/4 v6, 0x0
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangDir:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1
    const/4 v0, 0x0
    .line 276
    const/4 v6, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->spinnerArray:Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangDir:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    move-result v0
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangId:I
    .line 277
    const/4 v6, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesLang:Landroid/widget/Spinner;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangId:I
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V
    .line 278
    const/4 v6, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->LoadSections()V
    return-void
    const/4 v0, 0x2
.end method
.method private LoadQuotes()V
    .locals 5
    const/4 v4, 0x2
    .line 138
    const/4 v4, 0x3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "quotes/"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangDir:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "/"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->sectionSpinnerArray:Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesSection:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J
    move-result-wide v2
    long-to-int v2, v2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    .line 139
    const/4 v4, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :cond_0
    const/4 v4, 0x1
    .line 140
    const/4 v4, 0x2
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;
    .line 141
    const/4 v4, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesHolder:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V
    .line 143
    const/4 v4, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesHolderScroll:Landroid/widget/ScrollView;
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$4;
    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;)V
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z
    .line 150
    const/4 v4, 0x1
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;
    invoke-direct {v1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;Ljava/lang/String;)V
    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V
    :cond_0
    const/4 v4, 0x2
    return-void
    const/4 v0, 0x0
.end method
.method private LoadSections()V
    .locals 6
    const/4 v5, 0x0
    .line 232
    const/4 v5, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v0
    .line 234
    const/4 v5, 0x2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "quotes/"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangDir:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->sectionSpinnerArray:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    const/4 v5, 0x3
    :catch_0
    move-exception v0
    .line 236
    const/4 v5, 0x0
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    .line 239
    const/4 v5, 0x1
    :goto_0
    const/4 v5, 0x2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    .line 240
    const/4 v5, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->sectionSpinnerArray:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :goto_1
    const/4 v5, 0x0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_0
    const/4 v5, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    const-string v3, "."
    .line 241
    const/4 v5, 0x2
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v3
    add-int/lit8 v3, v3, 0x1
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    move-result v4
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :goto_1
    const/4 v5, 0x3
    .line 243
    const/4 v5, 0x0
    :cond_0
    const/4 v5, 0x1
    new-instance v1, Landroid/widget/ArrayAdapter;
    const v2, 0x1090008
    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
    const v0, 0x1090009
    .line 244
    const/4 v5, 0x2
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
    .line 245
    const/4 v5, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesSection:Landroid/widget/Spinner;
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    .line 246
    const/4 v5, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->LoadQuotes()V
    return-void
    const/4 v1, 0x1
.end method
.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;)V
    .locals 1
    const/4 v0, 0x2
    .line 43
    const/4 v0, 0x3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->LoadSections()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;)V
    .locals 1
    const/4 v0, 0x1
    .line 43
    const/4 v0, 0x2
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->LoadQuotes()V
    return-void
    const/4 v0, 0x0
.end method
.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;Ljava/lang/String;)V
    .locals 1
    const/4 v0, 0x0
    .line 43
    const/4 v0, 0x1
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->sendQuoteToMain(Ljava/lang/String;)V
    return-void
    const/4 v0, 0x0
.end method
.method private sendQuoteToMain(Ljava/lang/String;)V
    .locals 3
    const/4 v2, 0x3
    .line 127
    const/4 v2, 0x0
    new-instance v0, Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V
    const-string v1, "quoteExported"
    .line 128
    const/4 v2, 0x1
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    const/16 p1, 0xc
    .line 129
    const/4 v2, 0x2
    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->setResult(ILandroid/content/Intent;)V
    .line 130
    const/4 v2, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->finish()V
    return-void
    const/4 v0, 0x2
.end method
# virtual methods
.method dpToPixels(I)I
    .locals 3
    const/4 v2, 0x1
    .line 133
    const/4 v2, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    int-to-float p1, p1
    .line 134
    const/4 v2, 0x3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    const/4 v1, 0x1
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result p1
    float-to-int p1, p1
    return p1
    const/4 v0, 0x2
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
    .locals 3
    const/4 v2, 0x1
    const/4 v0, 0x1
    .line 60
    const/4 v2, 0x2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->supportRequestWindowFeature(I)Z
    .line 61
    const/4 v2, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getWindow()Landroid/view/Window;
    move-result-object v0
    const/16 v1, 0x400
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V
    .line 63
    const/4 v2, 0x0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    const p1, 0x7f0a001e
    .line 64
    const/4 v2, 0x1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->setContentView(I)V
    const p1, 0x7f080040
    .line 66
    const/4 v2, 0x2
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout;
    const/16 v0, 0x8
    .line 67
    const/4 v2, 0x3
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    .line 69
    const/4 v2, 0x0
    sget-boolean v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->isPremium:Z
    if-nez v0, :cond_0
    const/4 v2, 0x1
    const v0, 0x7f080041
    .line 70
    const/4 v2, 0x2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/google/android/gms/ads/AdView;
    .line 71
    const/4 v2, 0x3
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;
    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
    move-result-object v1
    .line 72
    const/4 v2, 0x0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .line 73
    const/4 v2, 0x1
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$1;
    invoke-direct {v1, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;Landroid/widget/LinearLayout;)V
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .line 82
    const/4 v2, 0x2
    :cond_0
    const/4 v2, 0x3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, -0x2
    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->lpa:Landroid/widget/LinearLayout$LayoutParams;
    .line 83
    const/4 v2, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->lpa:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0xa
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->dpToPixels(I)I
    move-result v1
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    .line 84
    const/4 v2, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->lpa:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->dpToPixels(I)I
    move-result v1
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    .line 85
    const/4 v2, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->lpa:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->dpToPixels(I)I
    move-result v1
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    .line 86
    const/4 v2, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->lpa:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->dpToPixels(I)I
    move-result v0
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    const p1, 0x7f080171
    .line 87
    const/4 v2, 0x0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout;
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesHolder:Landroid/widget/LinearLayout;
    const p1, 0x7f080172
    .line 88
    const/4 v2, 0x1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ScrollView;
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesHolderScroll:Landroid/widget/ScrollView;
    const p1, 0x7f08016f
    .line 89
    const/4 v2, 0x2
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/Spinner;
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesLang:Landroid/widget/Spinner;
    const p1, 0x7f080170
    .line 90
    const/4 v2, 0x3
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/Spinner;
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesSection:Landroid/widget/Spinner;
    .line 91
    const/4 v2, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->LoadLangs()V
    .line 92
    const/4 v2, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesLang:Landroid/widget/Spinner;
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$2;
    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;)V
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .line 105
    const/4 v2, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesSection:Landroid/widget/Spinner;
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$3;
    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;)V
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    return-void
    const/4 v0, 0x2
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    const/4 v0, 0x0
    const/4 p1, 0x0
    return p1
    const/4 v0, 0x0
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    const/4 v0, 0x2
    .line 292
    const/4 v0, 0x3
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
    const/4 v0, 0x0
.end method
.method protected onResume()V
    .locals 1
    const/4 v0, 0x1
    .line 122
    const/4 v0, 0x2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->onQuotesResume(Landroid/app/Activity;)V
    return-void
    const/4 v0, 0x0
.end method
