.class Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;
.super Ljava/lang/Object;
.source "quotes_browser.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->LoadQuotes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

.field final synthetic val$job:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 7

    const-string v6, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 153
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    .line 156
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const v1, 0x7f0c00ba

    const/4 v2, 0x0

    .line 159
    const/4 v6, 0x3

    :try_start_0
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v6, 0x1

    .line 161
    const/4 v6, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 162
    const/4 v6, 0x3

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 163
    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x400

    .line 164
    const/4 v6, 0x1

    new-array v4, v4, [C

    .line 166
    const/4 v6, 0x2

    :goto_0
    const/4 v6, 0x3

    invoke-virtual {v3, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v6, 0x0

    .line 167
    const/4 v6, 0x1

    invoke-virtual {v0, v4, v2, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    const/4 v6, 0x2

    .line 170
    const/4 v6, 0x3

    :cond_0
    const/4 v6, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    .line 172
    const/4 v6, 0x3

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "quotes"

    .line 173
    const/4 v6, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 174
    const/4 v6, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v6, 0x3

    .line 176
    const/4 v6, 0x0

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->shuffleJsonArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    const/4 v3, 0x0

    .line 177
    const/4 v6, 0x1

    :goto_1
    const/4 v6, 0x2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v6, 0x3

    .line 178
    const/4 v6, 0x0

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v6, 0x2

    .line 180
    const/4 v6, 0x3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    const/4 v6, 0x0

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;

    invoke-direct {v5, p0, v4}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    const/4 v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    const/4 v6, 0x2

    :catch_0
    move-exception v0

    .line 212
    const/4 v6, 0x3

    :try_start_2
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 213
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v3, v1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    const/4 v6, 0x1

    :catch_1
    move-exception v0

    .line 219
    const/4 v6, 0x2

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 220
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v3, v1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const/4 v6, 0x1

    return-void

    const/4 v0, 0x2
.end method
