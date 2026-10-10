.class public Lcom/imaginstudio/imagetools/pixellab/GridPanel;
.super Landroid/view/View;
.source "GridPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;,
        Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;,
        Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;
    }
.end annotation


# instance fields
.field HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

.field VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

.field controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

.field dX:F

.field dY:F

.field gridEnabled:Z

.field halfCircleRad:F

.field markerSelectionRad:F

.field pntMarker:Landroid/graphics/Paint;

.field pntMarkerSelected:Landroid/graphics/Paint;

.field pntMarkerSnap:Landroid/graphics/Paint;

.field pntMarkerStroke:Landroid/graphics/Paint;

.field prevX:F

.field prevY:F

.field remainderH:F

.field remainderV:F

.field selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

.field public selectionEnabled:Z

.field snapEnabled:Z

.field snapRad:F

.field snappedToHor:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

.field snappedToVer:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 106
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    .line 22
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;-><init>(Lcom/imaginstudio/imagetools/pixellab/GridPanel;Z)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    .line 23
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;-><init>(Lcom/imaginstudio/imagetools/pixellab/GridPanel;Z)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 25
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snappedToHor:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 26
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snappedToVer:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/16 v2, 0xf

    .line 27
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->markerSelectionRad:F

    const/16 v2, 0xa

    .line 28
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snapRad:F

    .line 29
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->halfCircleRad:F

    .line 30
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarker:Landroid/graphics/Paint;

    .line 31
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerStroke:Landroid/graphics/Paint;

    .line 32
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSelected:Landroid/graphics/Paint;

    .line 33
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSnap:Landroid/graphics/Paint;

    .line 34
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snapEnabled:Z

    .line 36
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    .line 99
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    .line 107
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    .line 108
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    .line 109
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->find(F)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectMarker(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    .line 110
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarker:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerStroke:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerStroke:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-static {v1, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSelected:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSelected:Landroid/graphics/Paint;

    const-string v0, "#C8ff9800"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSnap:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSnap:Landroid/graphics/Paint;

    const-string v0, "#C8f44336"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data

    :array_1
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/GridPanel;Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectMarker(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$300(Lcom/imaginstudio/imagetools/pixellab/GridPanel;)V
    .locals 1

    const/4 v0, 0x2

    .line 20
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->makeSureSomethingIsSelected()V

    return-void

    const/4 v0, 0x0
.end method

.method private makeSureSomethingIsSelected()V
    .locals 2

    const/4 v1, 0x1

    .line 223
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    return-void

    .line 224
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getLast()Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 225
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    return-void

    .line 226
    const/4 v1, 0x0

    :cond_1
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getLast()Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    return-void

    const/4 v1, 0x1
.end method

.method private selectMarker(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V
    .locals 1

    const/4 v0, 0x3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-void

    .line 182
    const/4 v0, 0x1

    :cond_0
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public actionUp()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 271
    const/4 v1, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    const/4 v0, 0x0

    .line 272
    const/4 v1, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snappedToVer:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snappedToHor:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 273
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public addHorizontal()V
    .locals 2

    const/4 v1, 0x1

    .line 219
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$100(Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;)V

    .line 220
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public addVertical()V
    .locals 2

    const/4 v1, 0x1

    .line 214
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$100(Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;)V

    .line 215
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method currentlySnappingTo(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;Z)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    move-object v0, p1

    goto :goto_0

    const/4 v1, 0x3

    .line 147
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snappedToHor:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :goto_0
    const/4 v1, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snappedToHor:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz p2, :cond_1

    const/4 v1, 0x3

    .line 148
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snappedToVer:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :cond_1
    const/4 v1, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snappedToVer:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 149
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method findAndSelectMarker(FF)Z
    .locals 5

    const/4 v4, 0x0

    .line 129
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 130
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->markerSelectionRad:F

    invoke-virtual {v1, p2, v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getAtPos(FF)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v1

    .line 131
    const/4 v4, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->markerSelectionRad:F

    invoke-virtual {v2, p1, v3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getAtPos(FF)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v2

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 133
    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v3

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 v4, 0x3

    move-object v1, v2

    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectMarker(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    goto :goto_0

    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    if-nez v2, :cond_2

    const/4 v4, 0x3

    .line 135
    const/4 v4, 0x0

    invoke-direct {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectMarker(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    goto :goto_0

    const/4 v4, 0x1

    .line 137
    const/4 v4, 0x2

    :cond_2
    const/4 v4, 0x3

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectMarker(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    .line 139
    const/4 v4, 0x0

    :goto_0
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eq v0, p1, :cond_3

    const/4 v4, 0x2

    const/4 p1, 0x1

    goto :goto_1

    const/4 v4, 0x3

    :cond_3
    const/4 v4, 0x0

    const/4 p1, 0x0

    :goto_1
    const/4 v4, 0x1

    return p1

    const/4 v0, 0x0
.end method

.method getContainer(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;
    .locals 1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 142
    const/4 v0, 0x1

    iget-boolean p1, p1, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->isHorizontal:Z

    if-nez p1, :cond_0

    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    goto :goto_0

    const/4 v0, 0x3

    :cond_0
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    :goto_0
    const/4 v0, 0x1

    return-object p1

    const/4 v0, 0x0
.end method

.method public getCurrentMarkerPosition()F
    .locals 2

    const/4 v1, 0x3

    .line 277
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    const/4 v0, 0x0

    return v0

    .line 278
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public isSnapEnabled()Z
    .locals 2

    const/4 v1, 0x1

    .line 197
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snapEnabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method offsetCurrentRemainder(ZF)V
    .locals 4

    const/4 v3, 0x0

    .line 263
    const/4 v3, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    move v2, p2

    goto :goto_0

    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    .line 264
    const/4 v3, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    if-eqz p1, :cond_1

    const/4 v3, 0x3

    const/4 p2, 0x0

    :cond_1
    const/4 v3, 0x0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    return-void

    const/4 v1, 0x3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->makeSureSomethingIsSelected()V

    .line 124
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarker:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerStroke:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSelected:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSnap:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 125
    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    iget-object v9, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarker:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerStroke:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSelected:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSnap:Landroid/graphics/Paint;

    iget-boolean v13, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    return-void

    const/4 v0, 0x2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x3

    .line 154
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->makeSureSomethingIsSelected()V

    .line 155
    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    if-nez v0, :cond_0

    const/4 v3, 0x2

    const/4 p1, 0x0

    return p1

    .line 156
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 157
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 158
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v3, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    const/4 v3, 0x1

    .line 165
    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->prevX:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->dX:F

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->prevY:F

    sub-float p1, v1, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->dY:F

    .line 166
    const/4 v3, 0x0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->prevX:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->prevY:F

    .line 167
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz p1, :cond_4

    const/4 v3, 0x2

    .line 168
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getContainer(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    move-result-object p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iget-boolean v1, v1, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->isHorizontal:Z

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->dY:F

    goto :goto_0

    const/4 v3, 0x1

    :cond_2
    const/4 v3, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->dX:F

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->moveBy(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;F)V

    .line 169
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->invalidate()V

    goto :goto_1

    const/4 v3, 0x1

    .line 160
    const/4 v3, 0x2

    :cond_3
    const/4 v3, 0x3

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->prevX:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->prevY:F

    const/4 p1, 0x0

    .line 161
    const/4 v3, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->dX:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->dY:F

    .line 162
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->findAndSelectMarker(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->invalidate()V

    :cond_4
    const/4 v3, 0x3

    :goto_1
    const/4 v3, 0x0

    const/4 p1, 0x1

    return p1

    const/4 v1, 0x3
.end method

.method public remMarker()V
    .locals 4

    const/4 v3, 0x2

    .line 201
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    return-void

    .line 202
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getContainer(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->remove(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;Z)Z

    .line 203
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-nez v0, :cond_1

    const/4 v3, 0x0

    .line 204
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->toggle()V

    .line 205
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    .line 206
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    const/4 v0, 0x0

    .line 207
    const/4 v3, 0x0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->toggle(Z)V

    goto :goto_0

    const/4 v3, 0x1

    .line 209
    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->invalidate()V

    :goto_0
    const/4 v3, 0x0

    return-void

    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data

    :array_1
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data

    const/4 v1, 0x3
.end method

.method resetCurrentRemainder(Z)V
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    const/4 v1, 0x0

    goto :goto_0

    const/4 v2, 0x0

    .line 267
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    :goto_0
    const/4 v2, 0x3

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 268
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    :cond_1
    const/4 v2, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    return-void

    const/4 v0, 0x2
.end method

.method public setControlsListener(Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrentMarkerPosition(F)V
    .locals 4

    const/4 v3, 0x3

    .line 281
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-nez v0, :cond_0

    const/4 v3, 0x1

    return-void

    .line 282
    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getContainer(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->move(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;FZ)V

    .line 283
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->invalidate()V

    return-void

    const/4 v1, 0x3
.end method

.method public setSnap(Z)V
    .locals 2

    const/4 v1, 0x2

    .line 192
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;->gridSnapToggled(Z)V

    .line 193
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snapEnabled:Z

    return-void

    const/4 v1, 0x1
.end method

.method public snapPos(FFZZ)F
    .locals 4

    const/4 v3, 0x0

    .line 241
    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snapEnabled:Z

    if-eqz v0, :cond_8

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    if-nez v0, :cond_0

    const/4 v3, 0x3

    goto :goto_5

    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    if-eqz p3, :cond_1

    const/4 v3, 0x2

    .line 242
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    goto :goto_0

    const/4 v3, 0x0

    :cond_1
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    :goto_0
    const/4 v3, 0x2

    add-float v1, p1, p2

    .line 243
    const/4 v3, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snapRad:F

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getAtPos(FF)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v1

    .line 244
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->currentlySnappingTo(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;Z)V

    if-nez p4, :cond_3

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    const/4 v3, 0x3

    .line 245
    const/4 v3, 0x0

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result p1

    sub-float/2addr p1, p2

    :goto_1
    const/4 v3, 0x2

    return p1

    :cond_3
    const/4 v3, 0x3

    if-nez v1, :cond_4

    const/4 v3, 0x0

    .line 247
    const/4 v3, 0x1

    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->resetCurrentRemainder(Z)V

    return p1

    .line 250
    const/4 v3, 0x2

    :cond_4
    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result p4

    if-eqz p3, :cond_5

    const/4 v3, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    goto :goto_2

    const/4 v3, 0x1

    :cond_5
    const/4 v3, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    :goto_2
    const/4 v3, 0x3

    add-float/2addr p4, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snapRad:F

    invoke-virtual {v0, p4, v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getAtPos(FF)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object p4

    if-eq p4, v1, :cond_7

    const/4 v3, 0x0

    .line 253
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result p1

    if-eqz p3, :cond_6

    const/4 v3, 0x2

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    goto :goto_3

    const/4 v3, 0x3

    :cond_6
    const/4 v3, 0x0

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    :goto_3
    const/4 v3, 0x1

    add-float/2addr p1, p4

    sub-float/2addr p1, p2

    .line 254
    const/4 v3, 0x2

    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->resetCurrentRemainder(Z)V

    goto :goto_4

    const/4 v3, 0x3

    .line 256
    const/4 v3, 0x0

    :cond_7
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result p4

    sub-float p2, p4, p2

    sub-float/2addr p1, p2

    .line 257
    const/4 v3, 0x2

    invoke-virtual {p0, p3, p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->offsetCurrentRemainder(ZF)V

    move p1, p2

    :goto_4
    const/4 v3, 0x3

    return p1

    :cond_8
    const/4 v3, 0x0

    :goto_5
    const/4 v3, 0x1

    return p1

    const/4 v1, 0x3
.end method

.method public startNewFromDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v0, 0x3

    .line 54
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v7, 0x1

    :catch_0
    const/4 p1, 0x3

    .line 59
    const/4 v7, 0x2

    :goto_0
    const/4 v7, 0x3

    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    const/4 v7, 0x0

    :catch_1
    const/4 p2, 0x3

    :goto_1
    const/4 v7, 0x1

    const/16 v0, 0x64

    .line 63
    const/4 v7, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 64
    const/4 v7, 0x3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    const/4 v7, 0x0

    if-nez p2, :cond_0

    const/4 v7, 0x1

    const/4 p1, 0x1

    const/4 p2, 0x1

    .line 69
    const/4 v7, 0x2

    :cond_0
    const/4 v7, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->clear()V

    .line 70
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->clear()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/4 v7, 0x1

    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 74
    const/4 v7, 0x2

    new-array v3, p1, [F

    const/4 v4, 0x1

    :goto_2
    const/4 v7, 0x3

    add-int/lit8 v5, v4, -0x1

    if-ge v5, p1, :cond_1

    const/4 v7, 0x0

    int-to-float v6, v4

    mul-float v6, v6, v2

    .line 76
    const/4 v7, 0x1

    aput v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    const/4 v7, 0x2

    .line 78
    const/4 v7, 0x3

    :cond_1
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-static {p1, v3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    :cond_2
    const/4 v7, 0x1

    if-eqz p2, :cond_4

    const/4 v7, 0x2

    add-int/lit8 p1, p2, 0x1

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 83
    const/4 v7, 0x3

    new-array p1, p2, [F

    :goto_3
    const/4 v7, 0x0

    add-int/lit8 v2, v0, -0x1

    if-ge v2, p2, :cond_3

    const/4 v7, 0x1

    int-to-float v3, v0

    mul-float v3, v3, v1

    .line 85
    const/4 v7, 0x2

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    const/4 v7, 0x3

    .line 87
    const/4 v7, 0x0

    :cond_3
    const/4 v7, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-static {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    .line 90
    const/4 v7, 0x2

    :cond_4
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->invalidate()V

    return-void

    const/4 v1, 0x3
.end method

.method public toggle()V
    .locals 2

    const/4 v1, 0x1

    .line 39
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->toggle(Z)V

    return-void

    const/4 v1, 0x1
.end method

.method public toggle(Z)V
    .locals 3

    const/4 v2, 0x0

    .line 42
    const/4 v2, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    .line 43
    const/4 v2, 0x2

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    const/4 p1, 0x0

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    const/16 p1, 0x8

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->setVisibility(I)V

    .line 44
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    invoke-interface {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;->gridToggled(Z)V

    .line 45
    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    if-nez p1, :cond_2

    const/4 v2, 0x3

    .line 46
    const/4 v2, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    .line 47
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;->gridSelectionToggled(Z)V

    :cond_2
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method public toggleSelection(Z)V
    .locals 2

    const/4 v1, 0x1

    .line 186
    const/4 v1, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    .line 187
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;->gridSelectionToggled(Z)V

    .line 188
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method
