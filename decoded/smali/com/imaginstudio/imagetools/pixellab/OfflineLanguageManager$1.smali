.class Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager$1;
.super Ljava/lang/Object;
.source "OfflineLanguageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->showPicker(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 150
    if-ltz p2, :cond_60

    # getter for: Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CODES:[Ljava/lang/String;
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt p2, v0, :cond_a

    goto :goto_60

    .line 151
    :cond_a
    # getter for: Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CODES:[Ljava/lang/String;
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->access$000()[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    .line 152
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 154
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager$1;->val$activity:Landroid/app/Activity;

    const-string v1, "pixellabplus_offline_language"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    const-string v1, "locale"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    # getter for: Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->WRAPPERS:Ljava/util/Map;
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->access$100()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_37
    # getter for: Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->WRAPPERS:Ljava/util/Map;
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->access$100()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager$1;->val$activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_59

    .line 157
    # getter for: Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CATALOGS:Ljava/util/Map;
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 159
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_58

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    .line 160
    :cond_58
    goto :goto_5f

    .line 156
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p1

    .line 161
    :cond_5c
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    :goto_5f
    return-void

    .line 150
    :cond_60
    :goto_60
    return-void
.end method
