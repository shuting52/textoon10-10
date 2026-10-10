.class public Lcom/imaginstudio/imagetools/pixellab/undo/UndoOperation;
.super Ljava/lang/Object;
.source "UndoOperation.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static forgetDuplicateHistory(Lcom/imaginstudio/imagetools/pixellab/undo/History;)V
    .locals 7

    const-string v6, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 100
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v6, 0x2

    return-void

    :cond_0
    const/4 v6, 0x3

    const/4 v0, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_1
    const/4 v6, 0x1

    if-nez v1, :cond_4

    const/4 v6, 0x2

    .line 104
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    const/4 v6, 0x0

    .line 106
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->getLast()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "histType"

    .line 107
    const/4 v6, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eqz v3, :cond_2

    const/4 v6, 0x3

    .line 108
    const/4 v6, 0x0

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eq v3, v4, :cond_1

    const/4 v6, 0x1

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v4, :cond_2

    const/4 v6, 0x2

    :cond_1
    const/4 v6, 0x3

    const/4 v4, 0x1

    goto :goto_2

    const/4 v6, 0x0

    :cond_2
    const/4 v6, 0x1

    const/4 v4, 0x0

    :goto_2
    const/4 v6, 0x2

    if-eqz v4, :cond_3

    const/4 v6, 0x3

    .line 110
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->getBeforeLast()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "histType"

    .line 111
    const/4 v6, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v5, v3, :cond_3

    const/4 v6, 0x2

    .line 113
    const/4 v6, 0x3

    invoke-static {v1, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->equalBundles(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v6, 0x0

    .line 114
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->undoneLast()V

    goto :goto_0

    const/4 v6, 0x2

    :cond_3
    const/4 v6, 0x3

    const/4 v1, 0x1

    goto :goto_1

    const/4 v6, 0x0

    :cond_4
    const/4 v6, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method private static forgetUnnecessaryHistory(Lcom/imaginstudio/imagetools/pixellab/undo/History;)V
    .locals 9

    const/4 v8, 0x3

    .line 123
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v8, 0x1

    return-void

    :cond_0
    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v8, 0x3

    if-nez v1, :cond_3

    const/4 v8, 0x0

    const/16 v1, 0xa

    if-gt v2, v1, :cond_3

    const/4 v8, 0x1

    .line 128
    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    const/4 v8, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 131
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->getLast()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "histRef"

    .line 132
    const/4 v8, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "histType"

    .line 133
    const/4 v8, 0x2

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eqz v4, :cond_2

    const/4 v8, 0x3

    if-eqz v5, :cond_2

    const/4 v8, 0x0

    const-string v6, "histGeo"

    .line 135
    const/4 v8, 0x1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v8, 0x2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eq v5, v1, :cond_1

    const/4 v8, 0x3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v5, v1, :cond_2

    const/4 v8, 0x0

    .line 137
    const/4 v8, 0x1

    :cond_1
    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->getBeforeLast()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "histGeo"

    .line 138
    const/4 v8, 0x3

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v8, 0x0

    const-string v6, "histRef"

    .line 139
    const/4 v8, 0x1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "histType"

    .line 140
    const/4 v8, 0x2

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    .line 141
    const/4 v8, 0x3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v5, v1}, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v8, 0x1

    .line 142
    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->undoneLast()V

    const/4 v1, 0x0

    goto :goto_0

    const/4 v8, 0x3

    :cond_2
    const/4 v8, 0x0

    const/4 v1, 0x1

    goto :goto_0

    const/4 v8, 0x1

    :cond_3
    const/4 v8, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method private static getComponentType(Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;)Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    .locals 3

    const/4 v2, 0x0

    .line 151
    const/4 v2, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    .line 152
    const/4 v2, 0x2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/UndoOperation$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$undo$HistoryType:[I

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    const/4 v2, 0x3

    .line 164
    const/4 v2, 0x0

    :pswitch_0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->bg:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    goto :goto_0

    const/4 v2, 0x1

    .line 161
    const/4 v2, 0x2

    :pswitch_1
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    goto :goto_0

    const/4 v2, 0x3

    .line 156
    const/4 v2, 0x0

    :pswitch_2
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    :goto_0
    const/4 v2, 0x1

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x2
.end method

.method public static undo(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 9

    const/4 v8, 0x3

    .line 24
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->hasHistory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v8, 0x1

    .line 25
    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "No undo left"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 29
    const/4 v8, 0x3

    :cond_0
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->getLast()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "histKeepGoing"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 32
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->isOptionExpandOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v8, 0x2

    .line 33
    const/4 v8, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x0

    .line 34
    const/4 v8, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->undo()V

    goto :goto_0

    const/4 v8, 0x2

    .line 36
    const/4 v8, 0x3

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->optionExpandCancelAction()V

    :goto_0
    const/4 v8, 0x1

    return-void

    :cond_2
    const/4 v8, 0x2

    if-nez v0, :cond_3

    const/4 v8, 0x3

    .line 41
    const/4 v8, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/undo/UndoOperation;->forgetUnnecessaryHistory(Lcom/imaginstudio/imagetools/pixellab/undo/History;)V

    .line 42
    const/4 v8, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/undo/UndoOperation;->forgetDuplicateHistory(Lcom/imaginstudio/imagetools/pixellab/undo/History;)V

    .line 45
    const/4 v8, 0x2

    :cond_3
    const/4 v8, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->getLast()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v8, 0x0

    const-string v3, "histType"

    .line 47
    const/4 v8, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eqz v3, :cond_a

    const/4 v8, 0x2

    const-string v4, "histRef"

    .line 48
    const/4 v8, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "histData"

    .line 49
    const/4 v8, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 50
    const/4 v8, 0x1

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/undo/UndoOperation;->getComponentType(Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;)Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    move-result-object v6

    sget-object v7, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->bg:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v6, v7, :cond_4

    const/4 v8, 0x2

    .line 51
    const/4 v8, 0x3

    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->recreatePreviewBg(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 52
    const/4 v8, 0x0

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    goto/16 :goto_1

    const/4 v8, 0x1

    .line 53
    const/4 v8, 0x2

    :cond_4
    const/4 v8, 0x3

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/undo/UndoOperation;->getComponentType(Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;)Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    move-result-object v6

    sget-object v7, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v6, v7, :cond_7

    const/4 v8, 0x0

    .line 54
    const/4 v8, 0x1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v6, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getTextByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v6

    .line 55
    const/4 v8, 0x2

    sget-object v7, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_create:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_5

    const/4 v8, 0x3

    if-eqz v6, :cond_a

    const/4 v8, 0x0

    .line 57
    const/4 v8, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v1, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->undoCreateText(Ljava/lang/String;)V

    goto/16 :goto_1

    const/4 v8, 0x2

    .line 59
    const/4 v8, 0x3

    :cond_5
    const/4 v8, 0x0

    sget-object v7, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_delete:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_6

    const/4 v8, 0x1

    if-eqz v5, :cond_a

    const/4 v8, 0x2

    const-string v1, "histLayId"

    .line 61
    const/4 v8, 0x3

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 62
    const/4 v8, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v2, v5, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->undoDeleteText(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_1

    const/4 v8, 0x1

    .line 64
    const/4 v8, 0x2

    :cond_6
    const/4 v8, 0x3

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v2, :cond_a

    const/4 v8, 0x0

    if-eqz v5, :cond_a

    const/4 v8, 0x1

    if-eqz v6, :cond_a

    const/4 v8, 0x2

    .line 66
    const/4 v8, 0x3

    invoke-virtual {v6, v5, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;Z)V

    goto :goto_1

    const/4 v8, 0x0

    .line 70
    const/4 v8, 0x1

    :cond_7
    const/4 v8, 0x2

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/undo/UndoOperation;->getComponentType(Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;)Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    move-result-object v6

    sget-object v7, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v6, v7, :cond_a

    const/4 v8, 0x3

    .line 71
    const/4 v8, 0x0

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v6, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getShapeByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v6

    .line 72
    const/4 v8, 0x1

    sget-object v7, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_create:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_8

    const/4 v8, 0x2

    if-eqz v6, :cond_a

    const/4 v8, 0x3

    .line 74
    const/4 v8, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v1, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->undoCreateShape(Ljava/lang/String;)V

    goto :goto_1

    const/4 v8, 0x1

    .line 77
    const/4 v8, 0x2

    :cond_8
    const/4 v8, 0x3

    sget-object v7, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_delete:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v7, :cond_9

    const/4 v8, 0x0

    if-eqz v5, :cond_a

    const/4 v8, 0x1

    const-string v1, "histLayId"

    .line 79
    const/4 v8, 0x2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    const/4 v8, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v2, v5, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->undoDeleteShape(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_1

    const/4 v8, 0x0

    .line 83
    const/4 v8, 0x1

    :cond_9
    const/4 v8, 0x2

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v3, v2, :cond_a

    const/4 v8, 0x3

    if-eqz v6, :cond_a

    const/4 v8, 0x0

    if-eqz v5, :cond_a

    const/4 v8, 0x1

    .line 85
    const/4 v8, 0x2

    invoke-virtual {v6, v5, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyBundle(Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v8, 0x3

    :catch_0
    move-exception v1

    .line 91
    const/4 v8, 0x0

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 93
    const/4 v8, 0x1

    :cond_a
    const/4 v8, 0x2

    :goto_1
    const/4 v8, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->undoneLast()V

    if-eqz v0, :cond_b

    const/4 v8, 0x0

    .line 95
    const/4 v8, 0x1

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/undo/UndoOperation;->undo(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    :cond_b
    const/4 v8, 0x2

    return-void

    const/4 v0, 0x0
.end method
