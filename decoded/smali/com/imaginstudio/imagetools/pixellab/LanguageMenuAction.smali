.class public final Lcom/imaginstudio/imagetools/pixellab/LanguageMenuAction;
.super Ljava/lang/Object;
.source "LanguageMenuAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/LanguageMenuAction;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/LanguageMenuAction;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->showPicker(Landroid/app/Activity;)V

    return-void
.end method
