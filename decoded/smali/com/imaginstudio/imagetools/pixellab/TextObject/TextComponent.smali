.class public Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
.super Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;
.source "TextComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;,
        Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;
    }
.end annotation


# static fields
.field public static final FILL_TYPE_COLOR:I = 0x1

.field public static final FILL_TYPE_GRADIENT:I = 0x2

.field public static final threeD_TYPE_OBLIQUE:I = 0x3

.field public static final threeD_TYPE_PERSPECTIVE:I = 0x1


# instance fields
.field DRAG_ID_MAX_WIDTHER:I

.field DRAG_ID_RESIZER:I

.field DRAG_ID_ROTATE:I

.field DRAG_ID_WHOLE:I

.field private EmbossAmbient:I

.field private EmbossBevel:I

.field private EmbossEnabled:Z

.field private EmbossHardness:I

.field private EmbossIncludeStroke:Z

.field private EmbossIntensity:I

.field private EmbossLightAngle:I

.field SelectListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

.field public angle:I

.field public assigned_id:I

.field private background_addHorizontalL:F

.field private background_addHorizontalR:F

.field private background_addVerticalB:F

.field private background_addVerticalT:F

.field private background_border_radius:I

.field private background_color:I

.field private background_fill_type:I

.field background_usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field public bezierMaskBundle:Landroid/os/Bundle;

.field public bezierMaskEnabled:Z

.field public bezierMaskIn:Z

.field private bezierMaskPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private bezierMaskRect:Landroid/graphics/RectF;

.field bigBallRadius:F

.field private bitmap_3d_cache:Landroid/graphics/Bitmap;

.field private bitmap_cache:Landroid/graphics/Bitmap;

.field private bitmap_cache_reflection:Landroid/graphics/Bitmap;

.field private bitmap_shadow_3d:Landroid/graphics/Bitmap;

.field private bitmap_shadow_outer:Landroid/graphics/Bitmap;

.field private bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

.field bottom_padding:I

.field final clickTolerance:F

.field dX:F

.field dY:F

.field final doubleClickDuration:J

.field downX:F

.field downY:F

.field private dragID:I

.field fill_type:I

.field private final floatPrecision:F

.field private frozen:Z

.field hasInnerShadow:Z

.field private hidden:Z

.field private isBackgroundEnabled:Z

.field isCurved:Z

.field private isSelected:Z

.field lastClick:J

.field private layersListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;

.field left_padding:I

.field private locked:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field maxWidther:Landroid/graphics/PointF;

.field private need_redraw:Z

.field private neverEdited:Z

.field oldAngle:I

.field oldMaxW:F

.field oldPosX:F

.field oldPosY:F

.field oldTextSize:F

.field private outer_glow_enabled:Z

.field private outer_shadow_color:I

.field private outer_shadow_dx:I

.field private outer_shadow_dy:I

.field private outer_shadow_enabled:Ljava/lang/Boolean;

.field private outer_shadow_padding:I

.field private outer_shadow_radius:F

.field paint:Landroid/graphics/Paint;

.field paintHandleRotate:Landroid/graphics/Paint;

.field paintHandleRotateBorder:Landroid/graphics/Paint;

.field paintHandles:Landroid/graphics/Paint;

.field paintHandlesBorder:Landroid/graphics/Paint;

.field paintHandlesHighlight:Landroid/graphics/Paint;

.field paintSelected:Landroid/graphics/Paint;

.field paintSelectedBg:Landroid/graphics/Paint;

.field paintSelectedBorder:Landroid/graphics/Paint;

.field private perspectiveEnabled:Z

.field public perspectivePoint1:Landroid/graphics/PointF;

.field public perspectivePoint2:Landroid/graphics/PointF;

.field public perspectivePoint3:Landroid/graphics/PointF;

.field public perspectivePoint4:Landroid/graphics/PointF;

.field previousX:F

.field previousY:F

.field public reference:Ljava/lang/String;

.field public reflectionEnabled:Z

.field public reflection_dy:I

.field renderMode:Z

.field renderScaleF:F

.field resizer:Landroid/graphics/PointF;

.field right_padding:I

.field rotator:Landroid/graphics/PointF;

.field private shadow_3d_color:I

.field private shadow_3d_enabled:Z

.field private shadow_3d_expand:I

.field private shadow_3d_radius:I

.field private shadow_3d_transparency:I

.field private tempDisable3DRots:Z

.field private tempDisablePerspective:Z

.field private tempDisableRot:Z

.field textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

.field public textHeight:I

.field private textOpacity:I

.field private textOpacityShadowInclude:Z

.field private textRotationX:I

.field private textRotationY:I

.field public textWidth:I

.field private textureBmb:Landroid/graphics/Bitmap;

.field textureFlipH:Z

.field textureFlipV:Z

.field textureInRot:I

.field private textureMaintainAspect:Z

.field texturePortion:Landroid/graphics/RectF;

.field private textureScale:I

.field private textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

.field threeDDepth:I

.field threeDDepthColorAutomatic:Z

.field threeDDepthColorFill:I

.field threeDDepthDarken:I

.field threeDDepthFillType:I

.field threeDDepthGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field threeDEnabled:Z

.field threeDLightingEnabled:Z

.field threeDLightingIntensity:I

.field threeDLightingShadow:I

.field threeDLightingSpecularHardness:I

.field threeDObliqueAngle:I

.field threeDQuality:I

.field threeDStokeInclude:Z

.field threeDViewType:I

.field tmpCanvas:Landroid/graphics/Canvas;

.field private tmpHidden:Z

.field tmpPointPost:[F

.field tmpPointPre:[F

.field top_padding:I

.field usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field viewCenter:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 492
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    .line 67
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    .line 69
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    .line 70
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 72
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 73
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderScaleF:F

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 77
    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->floatPrecision:F

    .line 86
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->neverEdited:Z

    .line 87
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    .line 91
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    .line 93
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->top_padding:I

    .line 94
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    .line 95
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    .line 96
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->right_padding:I

    .line 98
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 100
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    .line 101
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    .line 103
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    .line 104
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    const/16 v4, 0xa

    .line 109
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v5

    iput v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bigBallRadius:F

    .line 111
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    iput-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    .line 113
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_glow_enabled:Z

    const/high16 v5, 0x41200000    # 10.0f

    .line 115
    iput v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    .line 116
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    .line 117
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    const/high16 v5, -0x1000000

    .line 118
    iput v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    .line 119
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    .line 121
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 122
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_3d:Landroid/graphics/Bitmap;

    .line 123
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 125
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

    .line 126
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache_reflection:Landroid/graphics/Bitmap;

    .line 128
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    .line 130
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    .line 131
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    .line 132
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_MAX_WIDTHER:I

    const/4 v6, 0x3

    .line 133
    iput v6, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_ROTATE:I

    const/4 v6, 0x4

    .line 134
    iput v6, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    const/4 v6, 0x2

    .line 135
    iput v6, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_WHOLE:I

    .line 138
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    .line 139
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    .line 140
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    .line 141
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    .line 142
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBg:Landroid/graphics/Paint;

    .line 143
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    .line 144
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    .line 145
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    .line 146
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    .line 147
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    .line 148
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    .line 149
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    .line 150
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    .line 152
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectiveEnabled:Z

    .line 153
    new-instance v7, Landroid/graphics/PointF;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    .line 154
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v3, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    .line 155
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    .line 156
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v8, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    .line 158
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    const/4 v3, -0x1

    .line 159
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    .line 162
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hasInnerShadow:Z

    .line 163
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    .line 165
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    const/16 v3, 0xb4

    .line 168
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    .line 169
    iput v8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    .line 170
    iput v8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    .line 171
    iput v8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    .line 172
    iput v8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    .line 173
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    .line 174
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    .line 175
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const/16 v3, 0x64

    .line 177
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacity:I

    .line 178
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacityShadowInclude:Z

    .line 179
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossEnabled:Z

    const/16 v3, 0x5a

    .line 180
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    const/16 v3, 0x3c

    .line 181
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIntensity:I

    const/16 v3, 0x32

    .line 182
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossAmbient:I

    const/16 v7, 0x28

    .line 183
    iput v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossHardness:I

    const/16 v9, 0x1e

    .line 184
    iput v9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossBevel:I

    .line 185
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIncludeStroke:Z

    .line 191
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    .line 192
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    const/16 v10, 0x19

    .line 193
    iput v10, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepth:I

    .line 194
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    const v11, -0xffff01

    .line 195
    iput v11, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    .line 196
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v11}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v11, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 197
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorAutomatic:Z

    .line 198
    iput v9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthDarken:I

    .line 199
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDQuality:I

    .line 200
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDStokeInclude:Z

    const/16 v9, 0x2d

    .line 201
    iput v9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    .line 202
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingEnabled:Z

    const/16 v0, 0x50

    .line 203
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingIntensity:I

    .line 204
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingSpecularHardness:I

    .line 205
    iput v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingShadow:I

    .line 207
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 209
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 211
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-direct {v0, v8, v8, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    .line 212
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureInRot:I

    .line 213
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipH:Z

    .line 214
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipV:Z

    .line 216
    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    .line 217
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    .line 221
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    .line 222
    iput v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    .line 223
    iput v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    .line 224
    iput v10, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    .line 225
    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    const-string v0, "0"

    .line 422
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    .line 424
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    .line 425
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    .line 426
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpHidden:Z

    .line 839
    invoke-static {v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clickTolerance:F

    const-wide/16 v0, 0x0

    .line 840
    iput-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->lastClick:J

    const-wide/16 v0, 0x12c

    .line 841
    iput-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->doubleClickDuration:J

    .line 842
    iput v8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downX:F

    iput v8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downY:F

    .line 849
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    new-array v0, v6, [F

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    .line 493
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->init(Landroid/content/Context;)V

    .line 494
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    .line 495
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setColorFill(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 499
    invoke-direct/range {p0 .. p1}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 66
    iput-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    .line 67
    iput-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    const/4 v4, 0x0

    .line 68
    iput-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    .line 69
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    .line 70
    iput-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    const/4 v5, 0x0

    .line 72
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    const/high16 v6, 0x3f800000    # 1.0f

    .line 73
    iput v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderScaleF:F

    const/high16 v7, 0x447a0000    # 1000.0f

    .line 77
    iput v7, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->floatPrecision:F

    .line 86
    iput-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->neverEdited:Z

    .line 87
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    .line 91
    iput v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    .line 93
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->top_padding:I

    .line 94
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    .line 95
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    .line 96
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->right_padding:I

    .line 98
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v7}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v7, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 100
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    .line 101
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    .line 103
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    .line 104
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    const/16 v7, 0xa

    .line 109
    invoke-static {v7}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v8

    iput v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bigBallRadius:F

    .line 111
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    iput-object v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    .line 113
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_glow_enabled:Z

    const/high16 v8, 0x41200000    # 10.0f

    .line 115
    iput v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    .line 116
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    .line 117
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    const/high16 v8, -0x1000000

    .line 118
    iput v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    .line 119
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    .line 121
    iput-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 122
    iput-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_3d:Landroid/graphics/Bitmap;

    .line 123
    iput-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 125
    iput-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

    .line 126
    iput-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache_reflection:Landroid/graphics/Bitmap;

    .line 128
    iput-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    .line 130
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    .line 131
    iput-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    .line 132
    iput v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_MAX_WIDTHER:I

    const/4 v9, 0x3

    .line 133
    iput v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_ROTATE:I

    const/4 v9, 0x4

    .line 134
    iput v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    const/4 v9, 0x2

    .line 135
    iput v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_WHOLE:I

    .line 138
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    .line 139
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    .line 140
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    .line 141
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    .line 142
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBg:Landroid/graphics/Paint;

    .line 143
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    .line 144
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    .line 145
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    .line 146
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    .line 147
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    .line 148
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    .line 149
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    .line 150
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    .line 152
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectiveEnabled:Z

    .line 153
    new-instance v10, Landroid/graphics/PointF;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    .line 154
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v6, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    .line 155
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    .line 156
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v11, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    .line 158
    iput-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    const/4 v6, -0x1

    .line 159
    iput v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    .line 162
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hasInnerShadow:Z

    .line 163
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    .line 165
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    const/16 v6, 0xb4

    .line 168
    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    iput v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    .line 169
    iput v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    .line 170
    iput v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    .line 171
    iput v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    .line 172
    iput v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    .line 173
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    .line 174
    iput v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    .line 175
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v6}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const/16 v6, 0x64

    .line 177
    iput v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacity:I

    .line 178
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacityShadowInclude:Z

    .line 179
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossEnabled:Z

    const/16 v6, 0x5a

    .line 180
    iput v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    const/16 v6, 0x3c

    .line 181
    iput v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIntensity:I

    const/16 v6, 0x32

    .line 182
    iput v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossAmbient:I

    const/16 v10, 0x28

    .line 183
    iput v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossHardness:I

    const/16 v12, 0x1e

    .line 184
    iput v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossBevel:I

    .line 185
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIncludeStroke:Z

    .line 191
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    .line 192
    iput v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    const/16 v13, 0x19

    .line 193
    iput v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepth:I

    .line 194
    iput v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    const v14, -0xffff01

    .line 195
    iput v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    .line 196
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v14}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 197
    iput-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorAutomatic:Z

    .line 198
    iput v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthDarken:I

    .line 199
    iput v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDQuality:I

    .line 200
    iput-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDStokeInclude:Z

    const/16 v12, 0x2d

    .line 201
    iput v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    .line 202
    iput-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingEnabled:Z

    const/16 v3, 0x50

    .line 203
    iput v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingIntensity:I

    .line 204
    iput v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingSpecularHardness:I

    .line 205
    iput v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingShadow:I

    .line 207
    iput-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 209
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 211
    new-instance v3, Landroid/graphics/RectF;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {v3, v11, v11, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    .line 212
    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureInRot:I

    .line 213
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipH:Z

    .line 214
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipV:Z

    .line 216
    iput v7, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    .line 217
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    .line 221
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    .line 222
    iput v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    .line 223
    iput v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    .line 224
    iput v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    .line 225
    iput v7, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    const-string v3, "0"

    .line 422
    iput-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    .line 424
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    .line 425
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    .line 426
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpHidden:Z

    .line 839
    invoke-static {v9}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    iput v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clickTolerance:F

    const-wide/16 v3, 0x0

    .line 840
    iput-wide v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->lastClick:J

    const-wide/16 v3, 0x12c

    .line 841
    iput-wide v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->doubleClickDuration:J

    .line 842
    iput v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downX:F

    iput v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downY:F

    .line 849
    new-array v3, v9, [F

    iput-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    new-array v3, v9, [F

    iput-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    .line 500
    invoke-virtual/range {p0 .. p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->init(Landroid/content/Context;)V

    if-nez v2, :cond_1

    const-string v3, "textReference"

    .line 501
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "textReference"

    .line 504
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v3, p4

    .line 502
    iput-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    .line 506
    :goto_1
    iput-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->neverEdited:Z

    .line 508
    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Landroid/graphics/RectF;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 64
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x1

    .line 64
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    return-object p0

    const/4 v0, 0x0
.end method

.method private applyAlphaToPaint(Landroid/graphics/Paint;)V
    .locals 3

    const/4 v2, 0x0

    .line 1634
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacity:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    const/4 v0, 0x2
.end method

.method private clipAngle(I)I
    .locals 6

    const/4 v5, 0x3

    .line 1670
    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisable3DRots:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    return v1

    .line 1673
    const/4 v5, 0x2

    :cond_0
    const/4 v5, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v0, :cond_5

    const/4 v5, 0x0

    const/16 v0, 0x5a

    const/16 v2, -0x5a

    .line 1676
    const/4 v5, 0x1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v5, 0x2

    return v1

    .line 1679
    const/4 v5, 0x3

    :cond_1
    const/4 v5, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const/4 v5, 0x1

    if-le p1, v0, :cond_2

    const/4 v5, 0x2

    const/16 p1, 0x5a

    goto :goto_0

    const/4 v5, 0x3

    :cond_2
    const/4 v5, 0x0

    if-ge p1, v2, :cond_3

    const/4 v5, 0x1

    const/16 p1, -0x5a

    :cond_3
    const/4 v5, 0x2

    :goto_0
    const/4 v5, 0x3

    return p1

    :cond_4
    const/4 v5, 0x0

    return p1

    :cond_5
    const/4 v5, 0x1

    return p1

    const/4 v1, 0x1
.end method

.method private createShadow3d(IIF)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x3

    .line 1883
    const/4 v6, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    .line 1884
    const/4 v6, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int v2, p1, v1

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int v2, v2

    add-int/2addr v1, p2

    int-to-float v1, v1

    mul-float v1, v1, p3

    float-to-int v1, v1

    .line 1885
    const/4 v6, 0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1886
    const/4 v6, 0x3

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1888
    const/4 v6, 0x0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 1889
    const/4 v6, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1890
    const/4 v6, 0x2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1892
    const/4 v6, 0x3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    int-to-float v4, v4

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1893
    const/4 v6, 0x0

    new-instance v5, Landroid/graphics/RectF;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    add-int/2addr p2, v0

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-direct {v5, v0, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1894
    const/4 v6, 0x1

    new-instance p1, Landroid/graphics/BlurMaskFilter;

    sget-object p2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, v4, p2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/high16 p1, -0x1000000

    .line 1896
    const/4 v6, 0x2

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1897
    const/4 v6, 0x3

    invoke-virtual {v2, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1898
    const/4 v6, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    int-to-float p1, p1

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    int-to-float p2, p2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1899
    const/4 v6, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v1

    const/4 v0, 0x2
.end method

.method private draw3dShadow(Landroid/graphics/Canvas;Landroid/graphics/Camera;IF)V
    .locals 9

    .line 1834
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 1835
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    invoke-direct {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1836
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    invoke-direct {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    int-to-float v1, p3

    .line 1837
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    int-to-float v3, v3

    div-float/2addr v3, p4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1838
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1839
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1840
    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    .line 1842
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 1844
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1845
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1846
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1847
    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1849
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1850
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1851
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1852
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1853
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    int-to-float v2, v2

    div-float/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1854
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_3d:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/RectF;

    neg-int v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    iget v8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->right_padding:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, p4

    sub-float/2addr v6, v7

    add-int/2addr p3, v1

    int-to-float p3, p3

    invoke-direct {v4, v5, v5, v6, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1855
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1857
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1858
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1859
    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    return-void

    const/4 v1, 0x1
.end method

.method private drawHandles(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    .line 2036
    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-eqz v0, :cond_2

    const/4 v7, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    if-nez v0, :cond_2

    const/4 v7, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    if-nez v0, :cond_2

    const/4 v7, 0x0

    .line 2037
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2038
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_MAX_WIDTHER:I

    if-ne v4, v5, :cond_0

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    goto :goto_0

    const/4 v7, 0x0

    :cond_0
    const/4 v7, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    :goto_0
    const/4 v7, 0x2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2039
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2040
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    if-ne v3, v4, :cond_1

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    goto :goto_1

    const/4 v7, 0x2

    :cond_1
    const/4 v7, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2042
    const/4 v7, 0x1

    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2043
    const/4 v7, 0x2

    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    const/4 v7, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method private drawWithMask(Landroid/graphics/Bitmap;Landroid/graphics/Path;IF)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x1

    .line 1723
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1724
    const/4 v4, 0x3

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1725
    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 1726
    const/4 v4, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1727
    const/4 v4, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1728
    const/4 v4, 0x3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, -0x1

    .line 1729
    const/4 v4, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 1731
    const/4 v4, 0x1

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1732
    const/4 v4, 0x2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1733
    const/4 v4, 0x3

    invoke-virtual {v1, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    int-to-float p1, p3

    .line 1734
    const/4 v4, 0x0

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1735
    const/4 v4, 0x1

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1736
    const/4 v4, 0x2

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1737
    const/4 v4, 0x3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v0

    const/4 v0, 0x0
.end method

.method private flipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14

    .line 1814
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->top_padding:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 1815
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 1817
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1816
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1818
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1819
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v11, v4, v5, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1821
    invoke-virtual {v11, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1822
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1823
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1824
    new-instance v13, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v2, v1

    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 1825
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const/16 v3, 0x8c

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v13

    move v4, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1826
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1827
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float v6, p1, v1

    move-object v2, v11

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v10

    const/4 v0, 0x2
.end method

.method public static fontIntervalsToBundle(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x2

    .line 2266
    const/4 v7, 0x3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2268
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v7, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    .line 2269
    const/4 v7, 0x3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "textsIntervalsStart"

    .line 2270
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "textsIntervalsEnd"

    .line 2271
    const/4 v7, 0x1

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "textsIntervalsFont"

    .line 2272
    const/4 v7, 0x2

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    const/4 v7, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interval"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/2addr v2, v1

    goto :goto_0

    const/4 v7, 0x0

    :cond_0
    const/4 v7, 0x1

    return-object v0

    const/4 v1, 0x3
.end method

.method private fullRedrawUpdateParent()V
    .locals 1

    const/4 v0, 0x3

    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method private geometryToBundle(FFFFI)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x2

    .line 2324
    const/4 v3, 0x3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "8PDnq"

    const/4 v2, 0x1

    .line 2325
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textReference"

    .line 2326
    const/4 v3, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shapeX"

    float-to-int p1, p1

    .line 2327
    const/4 v3, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "shapeY"

    float-to-int p2, p2

    .line 2328
    const/4 v3, 0x3

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "shapeOldContainerWidth"

    .line 2329
    const/4 v3, 0x0

    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "shapeOldContainerHeight"

    .line 2330
    const/4 v3, 0x1

    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "textMaxWidth"

    float-to-int p2, p3

    .line 2331
    const/4 v3, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "textTextSize"

    .line 2332
    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "textRotation"

    .line 2333
    const/4 v3, 0x0

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    const/4 v1, 0x3
.end method

.method private getBitmapBottomPadding(Landroid/graphics/Bitmap;)I
    .locals 13

    .line 1769
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1770
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1771
    new-array v10, v8, [I

    add-int/lit8 v0, v9, -0x1

    move v11, v0

    :goto_0
    const/4 v12, 0x0

    if-ltz v11, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v5, v11

    move v6, v8

    .line 1773
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1774
    array-length v0, v10

    :goto_1
    if-ge v12, v0, :cond_1

    aget v1, v10, v12

    .line 1775
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v9, v11

    return v9

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_2
    return v12

    const/4 v1, 0x1
.end method

.method private static getBitmapLeftPadding(Landroid/graphics/Bitmap;)I
    .locals 13

    .line 1741
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1742
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1743
    new-array v10, v9, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v0, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v10

    move v5, v12

    move v8, v9

    .line 1745
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1746
    array-length v1, v10

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v10, v2

    .line 1747
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_0

    return v12

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0

    const/4 v1, 0x1
.end method

.method private static getBitmapRightPadding(Landroid/graphics/Bitmap;)I
    .locals 12

    .line 1755
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1756
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1757
    new-array v10, v9, [I

    add-int/lit8 v1, v0, -0x1

    move v11, v1

    :goto_0
    if-ltz v11, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v10

    move v5, v11

    move v8, v9

    .line 1759
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1760
    array-length v1, v10

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v10, v2

    .line 1761
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v0, v11

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0

    const/4 v0, 0x0
.end method

.method private getBitmapTopPadding(Landroid/graphics/Bitmap;)I
    .locals 13

    .line 1783
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1784
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1785
    new-array v10, v8, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v9, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v5, v12

    move v6, v8

    .line 1787
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1788
    array-length v0, v10

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget v2, v10, v1

    .line 1789
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    return v12

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return v11

    const/4 v1, 0x1
.end method

.method private getCurr3DEmbossEffect()Landroid/graphics/EmbossMaskFilter;
    .locals 10

    const/4 v9, 0x2

    .line 1806
    const/4 v9, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1807
    const/4 v9, 0x0

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingEnabled:Z

    if-eqz v2, :cond_0

    const/4 v9, 0x1

    new-instance v2, Landroid/graphics/EmbossMaskFilter;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 1808
    const/4 v9, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-float v5, v7

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, v3, v4

    const/4 v0, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingIntensity:I

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    aput v1, v3, v0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingShadow:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingSpecularHardness:I

    int-to-float v1, v1

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v1, v1, v5

    div-float/2addr v1, v4

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    goto :goto_0

    const/4 v9, 0x3

    :cond_0
    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v9, 0x1

    return-object v2

    const/4 v1, 0x1
.end method

.method private getCurrEmbossEffect()Landroid/graphics/EmbossMaskFilter;
    .locals 10

    const/4 v9, 0x3

    .line 1797
    const/4 v9, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1798
    const/4 v9, 0x1

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossEnabled:Z

    if-eqz v2, :cond_0

    const/4 v9, 0x2

    new-instance v2, Landroid/graphics/EmbossMaskFilter;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 1799
    const/4 v9, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-float v5, v7

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, v3, v4

    const/4 v0, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIntensity:I

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    aput v1, v3, v0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossAmbient:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossHardness:I

    int-to-float v1, v1

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v1, v1, v5

    div-float/2addr v1, v4

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossBevel:I

    int-to-float v5, v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v4

    invoke-direct {v2, v3, v0, v1, v5}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    goto :goto_0

    const/4 v9, 0x0

    :cond_0
    const/4 v9, 0x1

    const/4 v2, 0x0

    :goto_0
    const/4 v9, 0x2

    return-object v2

    const/4 v1, 0x1
.end method

.method private invalidateParent()V
    .locals 3

    const/4 v2, 0x0

    .line 2700
    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v2, 0x2

    .line 2701
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2702
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->invalidate()V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method private loadTexture()V
    .locals 8

    const/4 v7, 0x0

    .line 1582
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v0

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v0, v1, :cond_2

    const/4 v7, 0x2

    .line 1584
    const/4 v7, 0x3

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 1585
    const/4 v7, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x42c80000    # 100.0f

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v5

    goto :goto_0

    const/4 v7, 0x2

    :cond_0
    const/4 v7, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    const/4 v7, 0x0

    mul-float v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 1586
    const/4 v7, 0x1

    aget v3, v0, v2

    int-to-float v3, v3

    iget-boolean v6, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    if-eqz v6, :cond_1

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v5

    :cond_1
    const/4 v7, 0x3

    mul-float v3, v3, v4

    float-to-int v3, v3

    aput v3, v0, v2

    .line 1587
    const/4 v7, 0x0

    aget v1, v0, v1

    aget v0, v0, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v1, v0, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result v0

    .line 1589
    const/4 v7, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getBitmapFromPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureInRot:I

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipH:Z

    iget-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipV:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->cropRotBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v7, 0x2

    :catch_0
    const/4 v0, 0x0

    .line 1591
    const/4 v7, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const/4 v7, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method private makeMeVisible()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 2155
    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V

    .line 2156
    const/4 v1, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V

    return-void

    const/4 v1, 0x1
.end method

.method private recreateBezierMaskPath()V
    .locals 5

    const/4 v4, 0x3

    .line 1097
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    const-string v1, "BcR2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    const/4 v4, 0x3

    .line 1098
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    .line 1099
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v4, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1100
    const/4 v4, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "BcR2"

    .line 1101
    const/4 v4, 0x2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x3

    .line 1102
    const/4 v4, 0x0

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    goto :goto_0

    const/4 v4, 0x1

    .line 1104
    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getPathFromStringArrayList(Ljava/util/ArrayList;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v4, 0x0

    :cond_2
    const/4 v4, 0x1

    return-void

    :cond_3
    const/4 v4, 0x2

    :goto_1
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public static renderPreview(Landroid/os/Bundle;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x1

    .line 2730
    const/4 v3, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 2731
    const/4 v3, 0x3

    invoke-virtual {v0, p0, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;ZZ)V

    int-to-float p0, p2

    .line 2732
    const/4 v3, 0x0

    invoke-virtual {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextSize(F)V

    const-string p0, "SAMPLE"

    .line 2733
    const/4 v3, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;Z)V

    .line 2734
    const/4 v3, 0x2

    invoke-virtual {v0, v2, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->measure(II)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 2735
    const/4 v3, 0x3

    invoke-virtual {v0, p1, p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setRenderMode(ZF)V

    .line 2736
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getMeasuredHeight()I

    move-result p0

    .line 2737
    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getMeasuredWidth()I

    move-result p1

    .line 2738
    const/4 v3, 0x2

    invoke-virtual {v0, v2, v2, p1, p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->layout(IIII)V

    mul-int/lit8 p2, p1, 0x2

    mul-int/lit8 v1, p0, 0x2

    .line 2739
    const/4 v3, 0x3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2740
    const/4 v3, 0x0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    int-to-float p0, p0

    div-float/2addr p0, v2

    .line 2741
    const/4 v3, 0x1

    invoke-virtual {v1, p1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2742
    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->draw(Landroid/graphics/Canvas;)V

    .line 2743
    const/4 v3, 0x3

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getAutoCropBound(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object p0

    .line 2744
    const/4 v3, 0x0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v3, 0x1

    iget p1, p0, Landroid/graphics/Rect;->left:I

    if-eq p1, v0, :cond_1

    const/4 v3, 0x2

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-eq p1, v0, :cond_1

    const/4 v3, 0x3

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p1, v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    const/4 v3, 0x1

    .line 2748
    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    invoke-static {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->autoCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 p0, 0x0

    return-object p0

    const/4 v1, 0x3
.end method

.method private resetAlphaToPaint(Landroid/graphics/Paint;)V
    .locals 2

    const/4 v1, 0x3

    const/16 v0, 0xff

    .line 1637
    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    const/4 v1, 0x1
.end method

.method private restoreTextStyle(IZ)V
    .locals 3

    const/4 v2, 0x2

    .line 1020
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    .line 1021
    const/4 v2, 0x1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    .line 1022
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1023
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextColor(I)V

    .line 1024
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1026
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-boolean p2, p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    .line 1027
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->restoreColorSpans()V

    return-void

    const/4 v0, 0x2
.end method

.method private rotatePoint(Landroid/graphics/Point;Landroid/graphics/Point;D)Landroid/graphics/Point;
    .locals 8

    const/4 v7, 0x1

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p3, p3, v0

    .line 2230
    const/4 v7, 0x2

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 2231
    const/4 v7, 0x3

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    .line 2232
    const/4 v7, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2234
    const/4 v7, 0x1

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    mul-double v3, v3, v0

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    mul-double v5, v5, p3

    sub-double/2addr v3, v5

    iget v5, p2, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 2235
    const/4 v7, 0x2

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    mul-double p3, p3, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v3

    int-to-double v3, p1

    mul-double v0, v0, v3

    add-double/2addr p3, v0

    iget p1, p2, Landroid/graphics/Point;->y:I

    int-to-double p1, p1

    add-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v2, Landroid/graphics/Point;->y:I

    return-object v2

    const/4 v1, 0x3
.end method

.method private rotateText(FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2066
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->normalizeAngle(F)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    .line 2067
    const/4 v0, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->snapAngle(I)I

    move-result p1

    goto :goto_0

    const/4 v0, 0x0

    :cond_0
    const/4 v0, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    :goto_0
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    .line 2068
    const/4 v0, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    .line 2069
    const/4 v0, 0x0

    iget-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRot:Z

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    const/4 p2, 0x0

    goto :goto_1

    const/4 v0, 0x2

    :cond_1
    const/4 v0, 0x3

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    :goto_1
    const/4 v0, 0x0

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    .line 2070
    const/4 v0, 0x1

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setRotation(F)V

    .line 2071
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    return-void

    const/4 v0, 0x0
.end method

.method private updateHandlePos()V
    .locals 5

    const/4 v4, 0x0

    .line 2029
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2030
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2031
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2032
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2033
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public OnCustomTouchEvent(Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;)Z
    .locals 20

    move-object/from16 v6, p0

    .line 854
    iget-boolean v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 857
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRawX()F

    move-result v0

    .line 858
    invoke-virtual/range {p1 .. p1}, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRawY()F

    move-result v2

    .line 859
    invoke-virtual/range {p1 .. p1}, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRelX()F

    move-result v11

    .line 860
    invoke-virtual/range {p1 .. p1}, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRelY()F

    move-result v12

    .line 862
    invoke-virtual/range {p1 .. p1}, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v13, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 898
    :pswitch_0
    iget v3, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v4, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_WHOLE:I

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_1

    .line 899
    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousX:F

    sub-float v1, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getZoomFactor()F

    move-result v3

    div-float/2addr v1, v3

    iput v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dX:F

    .line 900
    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousY:F

    sub-float v1, v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getZoomFactor()F

    move-result v3

    div-float/2addr v1, v3

    iput v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dY:F

    .line 901
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v3

    iget v4, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dX:F

    add-float/2addr v3, v4

    iget v4, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v5

    invoke-virtual {v1, v3, v4, v13}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FFZ)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V

    .line 902
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v3

    iget v4, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dY:F

    add-float/2addr v3, v4

    iget v4, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v5

    invoke-virtual {v1, v3, v4, v13}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FFZ)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V

    .line 903
    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousX:F

    .line 904
    iput v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousY:F

    goto/16 :goto_3

    .line 905
    :cond_1
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_ROTATE:I

    if-ne v0, v2, :cond_2

    .line 906
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v0, v0

    mul-float v9, v0, v5

    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v0, v0

    mul-float v10, v0, v5

    invoke-static/range {v7 .. v12}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getAngleThreePoints(FFFFFF)F

    move-result v0

    .line 907
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_12

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-direct {v6, v1, v13}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(FZ)V

    goto/16 :goto_3

    .line 908
    :cond_2
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_MAX_WIDTHER:I

    if-ne v0, v2, :cond_4

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 909
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v0, v0

    mul-float v16, v0, v5

    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v0, v0

    mul-float v17, v0, v5

    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget-object v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    move/from16 v18, v0

    move-object/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundFloat(FFFFI[F)V

    .line 910
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v2

    add-float/2addr v11, v2

    invoke-virtual {v0, v11, v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v2

    sub-float v11, v0, v2

    :cond_3
    invoke-virtual {v6, v11}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setMax(F)V

    .line 911
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, v1, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->measure(II)V

    .line 912
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    if-eqz v0, :cond_12

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 913
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v9, v0, v5

    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v10, v0, v5

    iget v11, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget-object v12, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    invoke-static/range {v7 .. v12}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundFloat(FFFFI[F)V

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v0

    iget-object v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    aget v2, v2, v1

    iget-object v3, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    aget v1, v3, v1

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-virtual {v6, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v0

    iget-object v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    aget v1, v1, v13

    iget-object v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    aget v2, v2, v13

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V

    goto/16 :goto_3

    .line 917
    :cond_4
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    if-ne v0, v2, :cond_12

    .line 918
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v14, v0

    const/4 v15, 0x0

    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v0, v0

    mul-float v16, v0, v5

    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v0, v0

    mul-float v17, v0, v5

    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget-object v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    move/from16 v18, v0

    move-object/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundFloat(FFFFI[F)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    iget v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v2, v2

    div-float/2addr v12, v2

    neg-float v2, v11

    iget v3, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v0, v0, v2

    invoke-virtual {v6, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextSize(F)V

    .line 920
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizeListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizeListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;->resized()V

    .line 921
    :cond_5
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, v1, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->measure(II)V

    .line 922
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v7, v0

    const/4 v8, 0x0

    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v9, v0, v5

    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v10, v0, v5

    iget v11, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget-object v12, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    invoke-static/range {v7 .. v12}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundFloat(FFFFI[F)V

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v0

    iget-object v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    aget v2, v2, v1

    iget-object v3, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    aget v1, v3, v1

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-virtual {v6, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v0

    iget-object v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    aget v1, v1, v13

    iget-object v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    aget v2, v2, v13

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V

    goto/16 :goto_3

    .line 929
    :pswitch_1
    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downX:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clickTolerance:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clickTolerance:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clicked()V

    .line 930
    :cond_6
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->motionActionUp()V

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v0

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v0

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-wide v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    double-to-float v0, v0

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldMaxW:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldAngle:I

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldTextSize:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 933
    :cond_7
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_ROTATE:I

    if-ne v0, v1, :cond_8

    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotationListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    if-eqz v0, :cond_8

    .line 934
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotationListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    invoke-interface {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;->rotated(I)V

    goto :goto_0

    .line 935
    :cond_8
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    if-ne v0, v1, :cond_9

    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizeListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

    if-eqz v0, :cond_9

    .line 936
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizeListener:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;->resized()V

    goto :goto_0

    .line 937
    :cond_9
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    if-eqz v0, :cond_a

    .line 938
    iget-object v7, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosX:F

    iget v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosY:F

    iget v3, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldMaxW:F

    iget v4, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldTextSize:F

    iget v5, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldAngle:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->geometryToBundle(FFFFI)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;->onEvent_TextGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_a
    :goto_0
    const/4 v0, -0x1

    .line 942
    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    goto/16 :goto_3

    .line 864
    :pswitch_2
    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downX:F

    iput v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downY:F

    const/4 v3, 0x0

    .line 865
    iput v3, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dX:F

    .line 866
    iput v3, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dY:F

    .line 867
    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousX:F

    .line 868
    iput v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousY:F

    .line 870
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-wide v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    double-to-float v0, v4

    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldMaxW:F

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldTextSize:F

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v0

    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosX:F

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v0

    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosY:F

    .line 874
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldAngle:I

    cmpl-float v0, v11, v3

    if-ltz v0, :cond_b

    .line 876
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v0, v0

    cmpg-float v0, v11, v0

    if-gtz v0, :cond_b

    cmpl-float v0, v12, v3

    if-ltz v0, :cond_b

    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v0, v0

    cmpg-float v0, v12, v0

    if-gtz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    .line 877
    :goto_1
    iget-boolean v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-nez v2, :cond_c

    if-nez v0, :cond_c

    return v1

    .line 879
    :cond_c
    iget-boolean v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    if-nez v2, :cond_d

    cmpl-float v2, v12, v3

    if-ltz v2, :cond_d

    iget v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_d

    iget-object v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d

    .line 880
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_MAX_WIDTHER:I

    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    goto :goto_2

    .line 881
    :cond_d
    iget-boolean v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    if-nez v2, :cond_e

    iget-object v2, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    invoke-virtual {v6, v11, v12, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dist(FFLandroid/graphics/PointF;)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v3, v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_e

    .line 882
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    goto :goto_2

    :cond_e
    if-eqz v0, :cond_f

    .line 884
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_WHOLE:I

    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    goto :goto_2

    .line 885
    :cond_f
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    invoke-virtual {v6, v11, v12, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dist(FFLandroid/graphics/PointF;)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_11

    .line 886
    iget v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_ROTATE:I

    iput v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    .line 891
    :goto_2
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    if-eqz v0, :cond_10

    iget-boolean v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-nez v0, :cond_10

    .line 892
    iget-object v0, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    iget v1, v6, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I

    invoke-interface {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;->onEvent_SelectText(I)V

    .line 895
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    goto :goto_3

    :cond_11
    return v1

    :cond_12
    :goto_3
    return v13

    :cond_13
    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const/4 v0, 0x0
.end method

.method public UnFreezeFullRedraw()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 721
    const/4 v1, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    .line 722
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 723
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V

    .line 724
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method addPadding(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x2

    .line 1992
    const/4 v5, 0x3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1993
    const/4 v5, 0x0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1995
    const/4 v5, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, p2

    invoke-direct {v2, p2, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0

    const/4 v1, 0x1
.end method

.method public applyBundle(Landroid/os/Bundle;Z)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 2467
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;ZZ)V

    return-void

    const/4 v1, 0x1
.end method

.method public applyBundle(Landroid/os/Bundle;ZZ)V
    .locals 15

    move-object v10, p0

    move-object/from16 v11, p1

    .line 2470
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->freezeFullRedraw()V

    const-string v1, "shapeOldContainerWidth"

    .line 2472
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "shapeOldContainerHeight"

    .line 2473
    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2474
    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v3

    .line 2475
    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v4

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v12, v3, v1

    int-to-float v1, v4

    int-to-float v2, v2

    div-float v8, v1, v2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const-string v1, "shapeX"

    .line 2480
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v12

    invoke-virtual {v10, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V

    const-string v1, "shapeY"

    .line 2481
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v8

    invoke-virtual {v10, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V

    :cond_0
    if-nez p3, :cond_2

    const-string v1, "textTextSize"

    .line 2485
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, v8

    invoke-virtual {v10, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextSize(F)V

    const-string v1, "textMaxWidth"

    .line 2486
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v12

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    .line 2487
    :cond_1
    invoke-virtual {v10, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setMax(F)V

    :cond_2
    const-string v1, "textRotation"

    .line 2490
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v10, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(I)V

    const-string v1, "8PDnq"

    .line 2492
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    const-string v0, "objectHidden"

    .line 2494
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    const-string v0, "objectLocked"

    .line 2495
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    :cond_3
    const-string v0, "textThreeDEnabled"

    .line 2499
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDEnabled()Z

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dEnabled(Z)V

    .line 2501
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDEnabled()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    const-string v0, "textThreeDViewType"

    .line 2502
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDViewType()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dViewType(I)V

    const-string v0, "textThreeDDepth"

    .line 2503
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "textThreeDDepthDarken"

    .line 2504
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthDarken()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2505
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDQuality()I

    move-result v2

    const-string v3, "textThreeDStokeInclude"

    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDStokeInclude()Z

    move-result v4

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2503
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dDepth(IIIZ)V

    const-string v0, "textThreeDDepthGradientFillV2"

    .line 2507
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2510
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v1, "textThreeDDepthGradientFillType"

    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthGradientFill()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getType()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "textThreeDDepthGradientFillStart"

    .line 2511
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthGradientFill()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getStartColor()I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "textThreeDDepthGradientFillEnd"

    .line 2512
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthGradientFill()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v4

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getEndColor()I

    move-result v4

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    goto :goto_0

    .line 2514
    :cond_4
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v1, "textThreeDDepthFillType"

    .line 2516
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthFillType()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "textThreeDDepthColorFill"

    .line 2517
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthColorFill()I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "textThreeDDepthColorAutomatic"

    .line 2519
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDDepthColorAutomatic()Z

    move-result v4

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2516
    invoke-virtual {v10, v1, v2, v0, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dDepthColor(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    const-string v0, "textThreeDLightingEnabled"

    .line 2521
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDLightingEnabled()Z

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v0, "textEmbossLightAngle"

    .line 2522
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v2

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "textThreeDLightingIntensity"

    .line 2523
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingIntensity()I

    move-result v3

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "textThreeDLightingShadow"

    .line 2524
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingShadow()I

    move-result v4

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "textThreeDLightingSpecularHardness"

    .line 2525
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingSpecularHardness()I

    move-result v5

    invoke-virtual {v11, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object v0, v10

    .line 2521
    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dLighting(ZIIII)V

    const-string v0, "textThreeDObAn"

    const/4 v1, -0x1

    .line 2527
    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    const-string v0, "textThreeDOffsetX"

    .line 2529
    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    const-string v2, "textThreeDOffsetY"

    invoke-virtual {v11, v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2531
    :cond_5
    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dObliqueAngle(I)V

    :cond_6
    const-string v0, "textPerEn"

    .line 2534
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isPerspectiveEnabled()Z

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setPerspectiveEnabled(Z)V

    .line 2536
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isPerspectiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2537
    new-instance v0, Landroid/graphics/PointF;

    const-string v1, "textPerP1X"

    iget-object v2, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const-string v2, "textPerP1Y"

    iget-object v4, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    const-string v2, "textPerP2X"

    iget-object v4, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 2538
    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-string v4, "textPerP2Y"

    iget-object v5, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float v5, v5, v3

    float-to-int v5, v5

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    const-string v4, "textPerP3X"

    iget-object v5, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float v5, v5, v3

    float-to-int v5, v5

    .line 2539
    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    const-string v5, "textPerP3Y"

    iget-object v6, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float v6, v6, v3

    float-to-int v6, v6

    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    const-string v5, "textPerP4X"

    iget-object v6, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, v3

    float-to-int v6, v6

    .line 2540
    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    const-string v6, "textPerP4Y"

    iget-object v9, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float v9, v9, v3

    float-to-int v9, v9

    invoke-virtual {v11, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2537
    invoke-virtual {v10, v0, v1, v2, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setPerspectivePoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_7
    const-string v0, "textEmbossEnabled"

    .line 2543
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossEnabled()Z

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v0, "textEmbossLightAngle"

    .line 2544
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v2

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "textEmbossIntensity"

    .line 2545
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossIntensity()I

    move-result v3

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "textEmbossAmbient"

    .line 2546
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossAmbient()I

    move-result v4

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "textEmbossHardness"

    .line 2547
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossHardness()I

    move-result v5

    invoke-virtual {v11, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "textEmbossBevel"

    .line 2548
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossBevel()I

    move-result v6

    invoke-virtual {v11, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object v0, v10

    .line 2543
    invoke-virtual/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmboss(ZIIIII)V

    const-string v0, "textEmbossIncludeStroke"

    .line 2549
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossIncludeStroke()Z

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmbossIncludeStroke(Z)V

    const-string v0, "textOpacity"

    .line 2551
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextOpacity()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextOpacity(I)V

    const-string v0, "textOpacityShadowInclude"

    .line 2552
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextOpacityShadowInclude(Z)V

    const-string v0, "textTextureImageSrcV2"

    .line 2555
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "textTextureImagePath"

    .line 2558
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setNewTextureSrc(Ljava/lang/String;)V

    goto :goto_1

    .line 2560
    :cond_8
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;

    const-string v1, "textTextureImageCropInfo"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;-><init>(Landroid/os/Bundle;)V

    .line 2561
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    const-string v2, "textTextureImageSrc"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->getRot()I

    move-result v2

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->getPortion()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipH()Z

    move-result v4

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipV()Z

    move-result v5

    move-object v0, v10

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setNewTextureSrc(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILandroid/graphics/RectF;ZZ)V

    :goto_1
    const-string v0, "textTextureMaintainAspect"

    .line 2563
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextureMaintainAspect()Z

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextureMaintainAspect(Z)V

    const-string v0, "textTextureScale"

    .line 2564
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextureScale()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextureScale(I)V

    const-string v0, "textTextColor"

    .line 2567
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToColorIntervals(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setColors(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    const-string v0, "textTextFont"

    .line 2568
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToFontIntervals(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setFonts(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    const-string v0, "textBold"

    .line 2570
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToStyleIntervals(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBolds(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    const-string v0, "textItalic"

    .line 2571
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToStyleIntervals(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setItalics(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    const-string v0, "textUnder"

    .line 2572
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToStyleIntervals(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setUnders(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    const-string v0, "textLineSpacing"

    .line 2573
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLineSpacing(I)V

    const-string v0, "tLSWrds"

    .line 2574
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setSpaceWords(Z)V

    const-string v0, "textAlignment"

    .line 2575
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextAlign(I)V

    const-string v0, "textJustify"

    .line 2576
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setJustify(Z)V

    const/4 v14, 0x0

    if-nez p3, :cond_9

    const-string v0, "textTextString"

    .line 2579
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v14}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2581
    :cond_9
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textTextString"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10, v0, v14, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;ZI)V

    :goto_2
    const-string v0, "textBgGradientV2"

    .line 2584
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2587
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v1, "textBgGradientType"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "textBgGradientStartColor"

    .line 2588
    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "textBgGradientEndColor"

    .line 2589
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    move-object v4, v0

    goto :goto_3

    .line 2591
    :cond_a
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    :goto_3
    const-string v0, "textBgEnabled"

    .line 2594
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "textBgFillType"

    .line 2595
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "textBgColor"

    .line 2596
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "textBgPaddingLeft"

    .line 2598
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v5, v0, v12

    const-string v0, "textBgPaddingRight"

    .line 2599
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v6, v0, v8

    const-string v0, "textBgPaddingTop"

    .line 2600
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v7, v0, v8

    const-string v0, "textBgPaddingBottom"

    .line 2601
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v8, v8, v0

    const-string v0, "textBgBorderRadius"

    .line 2602
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object v0, v10

    .line 2594
    invoke-virtual/range {v0 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateBackground(ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V

    const-string v0, "textStrokeGradientV2"

    .line 2604
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2607
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v1, "textStrokeGradientType"

    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getType()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "textStrokeGradientStart"

    .line 2608
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getStartColor()I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "textStrokeGradientEnd"

    .line 2609
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v4

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getEndColor()I

    move-result v4

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    move-object v6, v0

    goto :goto_4

    .line 2611
    :cond_b
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    :goto_4
    const-string v0, "textThreeDShadowEnabled"

    .line 2613
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isShadow_3d_enabled()Z

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v0, "textThreeDShadowColor"

    .line 2614
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_color()I

    move-result v2

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "textThreeDShadowTransparency"

    .line 2615
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_transparency()I

    move-result v3

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "textThreeDShadowBlur"

    .line 2616
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_radius()I

    move-result v4

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "textThreeDShadowExpand"

    .line 2617
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_expand()I

    move-result v5

    invoke-virtual {v11, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object v0, v10

    .line 2613
    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setShadow3d(ZIIII)V

    const-string v0, "textStrokeEnabled"

    .line 2619
    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v0, "textStrokeWidth"

    .line 2620
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v0, "textStrokeFillType"

    .line 2621
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeFillType()I

    move-result v3

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "textStrokeColor"

    .line 2622
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeColor()I

    move-result v4

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object v0, v10

    move-object v5, v6

    .line 2619
    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setStroke(ZFIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    const-string v0, "textInnerEnabled"

    .line 2625
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "textInnerRadius"

    .line 2626
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v0, "textInnerDx"

    .line 2627
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v0, "textInnerDy"

    .line 2628
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const-string v0, "textInnerColor"

    .line 2629
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, v10

    .line 2625
    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setInnerShadow(ZFFFI)V

    const-string v0, "textOuterEnabled"

    .line 2630
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "textOuterGlowEnabled"

    .line 2631
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v0, "textOuterRadius"

    .line 2632
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v0, "textOuterDx"

    .line 2633
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "textOuterDy"

    .line 2634
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "textOuterColor"

    .line 2635
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object v0, v10

    .line 2630
    invoke-virtual/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setOuterShadow(ZZFIII)V

    const-string v0, "textRotationX"

    .line 2636
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "textRotationY"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotate3d(II)V

    const-string v0, "textTextGradientV2"

    .line 2638
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 2641
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v1, "textTextGradientType"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "textTextGradientStartColor"

    .line 2642
    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "textTextGradientEndColor"

    .line 2643
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    goto :goto_5

    .line 2645
    :cond_c
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 2648
    :goto_5
    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setGradientFill(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    const-string v0, "textTextFillType"

    .line 2650
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    const-string v0, "textTextCurve"

    .line 2651
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setCurve(I)V

    const-string v0, "textReflectionEnabled"

    .line 2653
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "textReflectionOffset"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setReflection(ZI)V

    const-string v0, "B8aw"

    .line 2655
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    const-string v0, "r3g9"

    .line 2656
    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBezierMaskIn(Z)V

    const-string v0, "3EBs"

    .line 2657
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBezierMaskBundle(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 2658
    iput-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    const-string v0, "textLetterSpacing"

    .line 2660
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLetterSpacing(I)V

    const-string v0, "ZpG28v"

    .line 2662
    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v12

    float-to-int v0, v0

    const-string v1, "deNYb4"

    invoke-virtual {v11, v1, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    invoke-virtual {v10, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setInPadding(II)V

    .line 2665
    :cond_d
    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->UnFreezeFullRedraw()V

    .line 2667
    iget-object v0, v10, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->requestLayout()V

    return-void

    const/4 v1, 0x3
.end method

.method applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V
    .locals 3

    const/4 v2, 0x3

    .line 1030
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1032
    const/4 v2, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1033
    const/4 v2, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1034
    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void

    const/4 v0, 0x2
.end method

.method public blurMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    .line 2000
    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2001
    const/4 v6, 0x3

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 2002
    const/4 v6, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2003
    const/4 v6, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2004
    const/4 v6, 0x2

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 2005
    const/4 v6, 0x3

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2006
    const/4 v6, 0x0

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v3, v5, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 2007
    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2008
    const/4 v6, 0x2

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2009
    const/4 v6, 0x3

    invoke-virtual {v2, p1, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    const/4 v0, 0x2
.end method

.method bundleToColorIntervals(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 8

    const/4 v7, 0x1

    if-nez p1, :cond_0

    const/4 v7, 0x2

    const/4 p1, 0x0

    return-object p1

    .line 2293
    const/4 v7, 0x3

    :cond_0
    const/4 v7, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    .line 2294
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    const/4 v7, 0x2

    :goto_0
    const/4 v7, 0x3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2295
    const/4 v7, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    const/4 v7, 0x2

    .line 2296
    const/4 v7, 0x3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "textsIntervalsStart"

    const/4 v4, 0x0

    .line 2297
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "textsIntervalsEnd"

    .line 2298
    const/4 v7, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "textsIntervalsColor"

    const/high16 v6, -0x1000000

    .line 2299
    const/4 v7, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2300
    const/4 v7, 0x3

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-direct {v5, v3, v4, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addIntervalNoCheck(Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    goto :goto_0

    const/4 v7, 0x0

    :cond_2
    const/4 v7, 0x1

    return-object v0

    const/4 v1, 0x3
.end method

.method bundleToFontIntervals(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 9

    const/4 v8, 0x3

    if-nez p1, :cond_0

    const/4 v8, 0x0

    const/4 p1, 0x0

    return-object p1

    .line 2307
    const/4 v8, 0x1

    :cond_0
    const/4 v8, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    .line 2308
    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const/4 v8, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v8, 0x2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2310
    const/4 v8, 0x3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    const/4 v8, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v8, 0x1

    const-string v3, "textsIntervalsStart"

    const/4 v4, 0x0

    .line 2311
    const/4 v8, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "textsIntervalsEnd"

    .line 2312
    const/4 v8, 0x3

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "textsIntervalsFont"

    .line 2313
    const/4 v8, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v8, 0x1

    const-string v2, ""

    .line 2317
    const/4 v8, 0x2

    :cond_2
    const/4 v8, 0x3

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->createFontFromPath(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-direct {v5, v3, v4, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(IILcom/imaginstudio/imagetools/pixellab/font/customTypeface;)V

    invoke-virtual {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addIntervalNoCheck(Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    goto :goto_0

    const/4 v8, 0x0

    :cond_3
    const/4 v8, 0x1

    return-object v0

    const/4 v0, 0x0
.end method

.method bundleToStyleIntervals(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 7

    const/4 v6, 0x3

    if-nez p1, :cond_0

    const/4 v6, 0x0

    const/4 p1, 0x0

    return-object p1

    .line 2280
    const/4 v6, 0x1

    :cond_0
    const/4 v6, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    .line 2281
    const/4 v6, 0x3

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v6, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v6, 0x2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2282
    const/4 v6, 0x3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    .line 2283
    const/4 v6, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "textsIntervalsStart"

    const/4 v4, 0x0

    .line 2284
    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "textsIntervalsEnd"

    .line 2285
    const/4 v6, 0x3

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2286
    const/4 v6, 0x0

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-direct {v4, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addIntervalNoCheck(Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    goto :goto_0

    const/4 v6, 0x1

    :cond_2
    const/4 v6, 0x2

    return-object v0

    const/4 v0, 0x2
.end method

.method public clearInnerShadow()V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 779
    const/4 v7, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hasInnerShadow:Z

    .line 780
    const/4 v7, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setInnerShadow(ZFFFI)V

    .line 781
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x3
.end method

.method public clearStroke()V
    .locals 2

    const/4 v1, 0x1

    .line 805
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->clearStroke()V

    .line 806
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 807
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public clearStyles(II)V
    .locals 2

    const/4 v1, 0x2

    .line 2114
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->clearStyles(II)V

    .line 2115
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    .line 2116
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 2117
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method clicked()V
    .locals 7

    const/4 v6, 0x0

    .line 844
    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->lastClick:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x12c

    cmp-long v2, v4, v0

    if-gtz v2, :cond_0

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    if-eqz v0, :cond_0

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;->onEvent_doubleTapText()V

    .line 845
    const/4 v6, 0x0

    :cond_0
    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->lastClick:J

    return-void

    const/4 v0, 0x2
.end method

.method colorIntervalsToBundle(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x3

    .line 2253
    const/4 v7, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2255
    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v7, 0x2

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    .line 2256
    const/4 v7, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "textsIntervalsStart"

    .line 2257
    const/4 v7, 0x1

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "textsIntervalsEnd"

    .line 2258
    const/4 v7, 0x2

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "textsIntervalsColor"

    .line 2259
    const/4 v7, 0x3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2260
    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interval"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/2addr v2, v1

    goto :goto_0

    const/4 v7, 0x1

    :cond_0
    const/4 v7, 0x2

    return-object v0

    const/4 v1, 0x3
.end method

.method countLines(Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x1

    const-string v3, "\n"

    .line 2222
    const/4 v4, 0x2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v4, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    return v2

    const/4 v0, 0x0
.end method

.method public createFontFromPath(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const/4 v2, 0x3

    .line 658
    const/4 v2, 0x0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 660
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    const/4 v2, 0x2

    .line 663
    const/4 v2, 0x3

    :catch_0
    :try_start_1
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    const/4 v2, 0x0

    :catch_1
    move-object p1, v0

    :goto_0
    const/4 v2, 0x1

    return-object p1

    const/4 v0, 0x2
.end method

.method public dilate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 15

    .line 1936
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1937
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v1, v9, v10

    .line 1938
    new-array v11, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    .line 1939
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xff

    if-ge v2, v10, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_2

    mul-int v5, v2, v9

    add-int/2addr v5, v4

    .line 1946
    aget v6, v11, v5

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    sub-int v7, v2, p2

    .line 1949
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, v2, p2

    add-int/lit8 v12, v10, -0x1

    .line 1950
    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v12, v6

    :goto_2
    if-gt v7, v8, :cond_1

    mul-int v13, v7, v9

    add-int/2addr v13, v4

    .line 1953
    aget v13, v11, v13

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-ne v12, v3, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1958
    :cond_1
    :goto_3
    invoke-static {v6, v12, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v11, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v10, :cond_7

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v9, :cond_6

    mul-int v5, v2, v9

    add-int v6, v5, v4

    .line 1965
    aget v7, v11, v6

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    sub-int v8, v4, p2

    .line 1968
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int v12, v4, p2

    add-int/lit8 v13, v9, -0x1

    .line 1969
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v13, v7

    :goto_6
    if-gt v8, v12, :cond_5

    add-int v14, v5, v8

    .line 1972
    aget v14, v11, v14

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-ne v13, v3, :cond_4

    goto :goto_7

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1977
    :cond_5
    :goto_7
    invoke-static {v3, v7, v13, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v11, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v10, :cond_9

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v9, :cond_8

    mul-int v4, v0, v9

    add-int/2addr v4, v2

    .line 1984
    aget v5, v11, v4

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 1985
    invoke-static {v5, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v11, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v3, v9

    move v6, v9

    move v7, v10

    .line 1988
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1

    const/4 v1, 0x3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    .line 2174
    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2175
    const/4 v2, 0x2

    invoke-super {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    const/4 v0, 0x2
.end method

.method dist(FFLandroid/graphics/PointF;)F
    .locals 3

    const/4 v2, 0x0

    .line 951
    const/4 v2, 0x1

    iget v0, p3, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    iget v1, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    mul-float v0, v0, p1

    iget p1, p3, Landroid/graphics/PointF;->y:F

    sub-float p1, p2, p1

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method divideVector(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 3

    const/4 v2, 0x3

    .line 1643
    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    div-float/2addr v1, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    const/4 v0, 0x2
.end method

.method public freezeFullRedraw()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 718
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    return-void

    const/4 v1, 0x1
.end method

.method public fullRedraw()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x1

    .line 712
    const/4 v1, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    .line 713
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 714
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public getBackground_addHorizontalL()F
    .locals 2

    const/4 v1, 0x0

    .line 991
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    return v0

    const/4 v1, 0x1
.end method

.method public getBackground_addHorizontalR()F
    .locals 2

    const/4 v1, 0x3

    .line 995
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    return v0

    const/4 v1, 0x1
.end method

.method public getBackground_addVerticalB()F
    .locals 2

    const/4 v1, 0x2

    .line 1003
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    return v0

    const/4 v1, 0x1
.end method

.method public getBackground_addVerticalT()F
    .locals 2

    const/4 v1, 0x1

    .line 999
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    return v0

    const/4 v1, 0x1
.end method

.method public getBackground_border_radius()I
    .locals 2

    const/4 v1, 0x0

    .line 1007
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    return v0

    const/4 v1, 0x1
.end method

.method public getBackground_color()I
    .locals 2

    const/4 v1, 0x3

    .line 987
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    return v0

    const/4 v1, 0x1
.end method

.method public getBackground_enabled()Z
    .locals 2

    const/4 v1, 0x2

    .line 1017
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBackgroundEnabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public getBackground_usedGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 2

    const/4 v1, 0x1

    .line 1011
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getBackground_usedType()I
    .locals 2

    const/4 v1, 0x0

    .line 1014
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    return v0

    const/4 v1, 0x1
.end method

.method getBigRadius()I
    .locals 3

    const/4 v2, 0x3

    .line 1041
    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bigBallRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0

    const/4 v0, 0x2
.end method

.method public getBolds()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 2

    const/4 v1, 0x2

    .line 345
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->copy()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getBoundsRect()Landroid/graphics/RectF;
    .locals 7

    const/4 v6, 0x1

    .line 1074
    const/4 v6, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v4

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    const/4 v0, 0x2
.end method

.method public getColors()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 2

    const/4 v1, 0x0

    .line 342
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->copy()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getCurve()I
    .locals 2

    const/4 v1, 0x3

    .line 828
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I

    return v0

    const/4 v1, 0x1
.end method

.method public getEmbossAmbient()I
    .locals 2

    const/4 v1, 0x2

    .line 512
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossAmbient:I

    return v0

    const/4 v1, 0x1
.end method

.method public getEmbossBevel()I
    .locals 2

    const/4 v1, 0x1

    .line 520
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossBevel:I

    return v0

    const/4 v1, 0x1
.end method

.method public getEmbossHardness()I
    .locals 2

    const/4 v1, 0x0

    .line 528
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossHardness:I

    return v0

    const/4 v1, 0x1
.end method

.method public getEmbossIntensity()I
    .locals 2

    const/4 v1, 0x3

    .line 532
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIntensity:I

    return v0

    const/4 v1, 0x1
.end method

.method public getEmbossLightAngle()I
    .locals 2

    const/4 v1, 0x2

    .line 536
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    return v0

    const/4 v1, 0x1
.end method

.method public getFill_type()I
    .locals 2

    const/4 v1, 0x1

    .line 671
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    return v0

    const/4 v1, 0x1
.end method

.method public getFonts()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 2

    const/4 v1, 0x0

    .line 338
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getGradientFill()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 2

    const/4 v1, 0x3

    .line 643
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getInPaddingLeft()I
    .locals 2

    const/4 v1, 0x2

    .line 240
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I

    return v0

    const/4 v1, 0x1
.end method

.method public getInPaddingRight()I
    .locals 2

    const/4 v1, 0x1

    .line 244
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingRight:I

    return v0

    const/4 v1, 0x1
.end method

.method public getInnerColor()I
    .locals 2

    const/4 v1, 0x0

    .line 785
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_color:I

    return v0

    const/4 v1, 0x1
.end method

.method public getInnerDx()I
    .locals 2

    const/4 v1, 0x3

    .line 794
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dx:F

    float-to-int v0, v0

    return v0

    const/4 v1, 0x1
.end method

.method public getInnerDy()I
    .locals 2

    const/4 v1, 0x2

    .line 797
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dy:F

    float-to-int v0, v0

    return v0

    const/4 v1, 0x1
.end method

.method public getInnerEnabled()Z
    .locals 2

    const/4 v1, 0x1

    .line 788
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_enabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public getInnerRadius()I
    .locals 2

    const/4 v1, 0x0

    .line 791
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_r:F

    float-to-int v0, v0

    return v0

    const/4 v1, 0x1
.end method

.method public getItalics()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 2

    const/4 v1, 0x3

    .line 348
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->copy()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getLetterSpacing()I
    .locals 2

    const/4 v1, 0x2

    .line 695
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getLetterSpace()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getLineSpacing()I
    .locals 2

    const/4 v1, 0x1

    .line 2128
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->spacing:I

    return v0

    const/4 v1, 0x1
.end method

.method public getMainFont()Landroid/graphics/Typeface;
    .locals 2

    const/4 v1, 0x0

    .line 329
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 331
    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getOuterGlowEnabled()Z
    .locals 2

    const/4 v1, 0x2

    .line 405
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_glow_enabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public getOuterShadowColor()I
    .locals 2

    const/4 v1, 0x1

    .line 767
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    return v0

    const/4 v1, 0x1
.end method

.method public getOuterShadowEnabled()Z
    .locals 2

    const/4 v1, 0x0

    .line 770
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getOuter_shadow_color()I
    .locals 2

    const/4 v1, 0x3

    .line 763
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    return v0

    const/4 v1, 0x1
.end method

.method public getOuter_shadow_dx()I
    .locals 2

    const/4 v1, 0x2

    .line 755
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    return v0

    const/4 v1, 0x1
.end method

.method public getOuter_shadow_dy()I
    .locals 2

    const/4 v1, 0x1

    .line 759
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    return v0

    const/4 v1, 0x1
.end method

.method public getOuter_shadow_radius()F
    .locals 2

    const/4 v1, 0x0

    .line 751
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    return v0

    const/4 v1, 0x1
.end method

.method getRenderScaleF()F
    .locals 2

    const/4 v1, 0x3

    .line 1037
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderScaleF:F

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x0

    return v0

    const/4 v1, 0x1
.end method

.method public getShadow_3d_color()I
    .locals 2

    const/4 v1, 0x2

    .line 270
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    return v0

    const/4 v1, 0x1
.end method

.method public getShadow_3d_expand()I
    .locals 2

    const/4 v1, 0x1

    .line 282
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    return v0

    const/4 v1, 0x1
.end method

.method public getShadow_3d_radius()I
    .locals 2

    const/4 v1, 0x0

    .line 278
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    return v0

    const/4 v1, 0x1
.end method

.method public getShadow_3d_transparency()I
    .locals 2

    const/4 v1, 0x3

    .line 274
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    return v0

    const/4 v1, 0x1
.end method

.method public getStrokeColor()I
    .locals 2

    const/4 v1, 0x2

    .line 810
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeColor:I

    return v0

    const/4 v1, 0x1
.end method

.method public getStrokeEnabled()Z
    .locals 2

    const/4 v1, 0x1

    .line 813
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public getStrokeFillType()I
    .locals 2

    const/4 v1, 0x0

    .line 816
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    return v0

    const/4 v1, 0x1
.end method

.method public getStrokeGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 2

    const/4 v1, 0x3

    .line 819
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getStrokeRadius()I
    .locals 2

    const/4 v1, 0x2

    .line 326
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    float-to-int v0, v0

    return v0

    const/4 v1, 0x1
.end method

.method public getTextAlign()I
    .locals 2

    const/4 v1, 0x1

    .line 965
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getGravity()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getTextJustify()Z
    .locals 2

    const/4 v1, 0x0

    .line 968
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isJustifyAlign()Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getTextOpacity()I
    .locals 2

    const/4 v1, 0x3

    .line 1617
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacity:I

    return v0

    const/4 v1, 0x1
.end method

.method public getTextRotationX()I
    .locals 2

    const/4 v1, 0x2

    .line 699
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    return v0

    const/4 v1, 0x1
.end method

.method public getTextRotationY()I
    .locals 2

    const/4 v1, 0x1

    .line 703
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    return v0

    const/4 v1, 0x1
.end method

.method public getTextSize()F
    .locals 2

    const/4 v1, 0x0

    .line 2058
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userTextSize:F

    return v0

    const/4 v1, 0x1
.end method

.method public getTextureScale()I
    .locals 2

    const/4 v1, 0x3

    .line 364
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    return v0

    const/4 v1, 0x1
.end method

.method public getTextureSrc()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    .locals 2

    const/4 v1, 0x2

    .line 372
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->copy()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getThreeDDepth()I
    .locals 2

    const/4 v1, 0x1

    .line 1646
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepth:I

    return v0

    const/4 v1, 0x1
.end method

.method public getThreeDDepthColorFill()I
    .locals 2

    const/4 v1, 0x0

    .line 1654
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    return v0

    const/4 v1, 0x1
.end method

.method public getThreeDDepthDarken()I
    .locals 2

    const/4 v1, 0x3

    .line 1658
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthDarken:I

    return v0

    const/4 v1, 0x1
.end method

.method public getThreeDDepthFillType()I
    .locals 2

    const/4 v1, 0x2

    .line 1662
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    return v0

    const/4 v1, 0x1
.end method

.method public getThreeDDepthGradientFill()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 2

    const/4 v1, 0x1

    .line 1666
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getThreeDLightingIntensity()I
    .locals 2

    const/4 v1, 0x0

    .line 1703
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingIntensity:I

    return v0

    const/4 v1, 0x1
.end method

.method public getThreeDLightingShadow()I
    .locals 2

    const/4 v1, 0x3

    .line 1707
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingShadow:I

    return v0

    const/4 v1, 0x1
.end method

.method public getThreeDLightingSpecularHardness()I
    .locals 2

    const/4 v1, 0x2

    .line 1699
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingSpecularHardness:I

    return v0

    const/4 v1, 0x1
.end method

.method public getThreeDObliqueAngle()I
    .locals 2

    const/4 v1, 0x1

    .line 286
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    return v0

    const/4 v1, 0x1
.end method

.method public getThreeDQuality()I
    .locals 2

    const/4 v1, 0x0

    .line 1711
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDQuality:I

    return v0

    const/4 v1, 0x1
.end method

.method public getThreeDViewType()I
    .locals 2

    const/4 v1, 0x3

    .line 1719
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    return v0

    const/4 v1, 0x1
.end method

.method public getUnders()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 2

    const/4 v1, 0x2

    .line 351
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->copy()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getUsedTextPaint()Landroid/text/TextPaint;
    .locals 2

    const/4 v1, 0x1

    .line 1614
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getZoomFactor()F
    .locals 2

    const/4 v1, 0x0

    .line 409
    const/4 v1, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getZoomFactor()F

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public hideTemp()V
    .locals 2

    const/4 v1, 0x3

    .line 428
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    const/4 v0, 0x1

    .line 429
    const/4 v1, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpHidden:Z

    .line 430
    const/4 v1, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setHidden(Z)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method init(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x2

    .line 464
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 466
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 467
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/16 v4, 0x46

    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 469
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 470
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBg:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/16 v6, 0x28

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 474
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 475
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    const-string v1, "#4db8f3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 478
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 479
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 480
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 481
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 482
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 483
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    const/4 v7, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    .line 485
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 487
    const/4 v7, 0x2

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->mMatrix:Landroid/graphics/Matrix;

    .line 488
    const/4 v7, 0x3

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    return-void

    const/4 v1, 0x3
.end method

.method public invalidate()V
    .locals 2

    const/4 v1, 0x1

    .line 2708
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x3

    .line 2709
    const/4 v1, 0x0

    invoke-super {p0}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->invalidate()V

    .line 2710
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidateParent()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public invalidate(IIII)V
    .locals 2

    const/4 v1, 0x0

    .line 2723
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x2

    .line 2724
    const/4 v1, 0x3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->invalidate(IIII)V

    .line 2725
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidateParent()V

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x3

    .line 2715
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 2716
    const/4 v1, 0x2

    invoke-super {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->invalidate(Landroid/graphics/Rect;)V

    .line 2717
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidateParent()V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method invertVector(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x2

    .line 1641
    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v1, v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float p1, p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public isBezierMaskEnabled()Z
    .locals 2

    const/4 v1, 0x1

    .line 1077
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isBezierMaskIn()Z
    .locals 2

    const/4 v1, 0x0

    .line 1070
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isEmbossEnabled()Z
    .locals 2

    const/4 v1, 0x3

    .line 524
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossEnabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isEmbossIncludeStroke()Z
    .locals 2

    const/4 v1, 0x2

    .line 516
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIncludeStroke:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isHidden()Z
    .locals 2

    const/4 v1, 0x1

    .line 456
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isLocked()Z
    .locals 2

    const/4 v1, 0x0

    .line 460
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isNeverEdited()Z
    .locals 2

    const/4 v1, 0x3

    .line 2179
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->neverEdited:Z

    return v0

    const/4 v1, 0x1
.end method

.method isNotVisible()Z
    .locals 9

    const/4 v8, 0x2

    .line 2132
    const/4 v8, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->safetyCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v8, 0x0

    return v1

    .line 2136
    const/4 v8, 0x1

    :cond_0
    const/4 v8, 0x2

    new-instance v0, Landroid/graphics/Rect;

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2137
    const/4 v8, 0x3

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTop()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2138
    const/4 v8, 0x0

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBottom()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 2139
    const/4 v8, 0x1

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTop()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 2140
    const/4 v8, 0x2

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBottom()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 2143
    const/4 v8, 0x3

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v8, 0x0

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 2144
    const/4 v8, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v8, 0x2

    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 2145
    const/4 v8, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v8, 0x0

    iget v2, v5, Landroid/graphics/Point;->x:I

    iget v3, v5, Landroid/graphics/Point;->y:I

    .line 2146
    const/4 v8, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x2

    const/4 v1, 0x1

    :cond_1
    const/4 v8, 0x3

    return v1

    const/4 v0, 0x0
.end method

.method public isPerspectiveEnabled()Z
    .locals 2

    const/4 v1, 0x1

    .line 252
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectiveEnabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isSelected()Z
    .locals 2

    const/4 v1, 0x0

    .line 2076
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isShadow_3d_enabled()Z
    .locals 2

    const/4 v1, 0x3

    .line 266
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isSpaceWords()Z
    .locals 2

    const/4 v1, 0x2

    .line 679
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isWordSpacing()Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public isTextOpacityShadowInclude()Z
    .locals 2

    const/4 v1, 0x1

    .line 1625
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacityShadowInclude:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isTextureMaintainAspect()Z
    .locals 2

    const/4 v1, 0x0

    .line 368
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isThreeDDepthColorAutomatic()Z
    .locals 2

    const/4 v1, 0x3

    .line 1650
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorAutomatic:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isThreeDEnabled()Z
    .locals 2

    const/4 v1, 0x2

    .line 1691
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isThreeDLightingEnabled()Z
    .locals 2

    const/4 v1, 0x1

    .line 1695
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingEnabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isThreeDStokeInclude()Z
    .locals 2

    const/4 v1, 0x0

    .line 1715
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDStokeInclude:Z

    return v0

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1110
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    .line 1111
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    if-lez v1, :cond_1

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    .line 1112
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 1113
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepth:I

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1115
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateHandlePos()V

    .line 1117
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1118
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1119
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1120
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1122
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1123
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const-string v5, "#40FFFFFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1126
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1127
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const-string v5, "#007de3"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1129
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v8, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->layout(IIII)V

    .line 1131
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1132
    iget-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectiveEnabled:Z

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v9, 0x2

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisablePerspective:Z

    if-nez v3, :cond_2

    .line 1133
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/16 v10, 0x8

    .line 1135
    new-array v11, v10, [F

    aput v6, v11, v8

    aput v6, v11, v2

    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v12, v12

    aput v12, v11, v9

    aput v6, v11, v5

    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v12, v12

    const/4 v13, 0x4

    aput v12, v11, v13

    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v12, v12

    const/4 v14, 0x5

    aput v12, v11, v14

    const/4 v12, 0x6

    aput v6, v11, v12

    iget v15, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v15, v15

    const/16 v16, 0x7

    aput v15, v11, v16

    const/4 v15, 0x0

    new-array v10, v10, [F

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    aput v4, v10, v8

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    aput v4, v10, v2

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    aput v4, v10, v9

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    aput v4, v10, v5

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    aput v4, v10, v13

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    aput v4, v10, v14

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    aput v4, v10, v12

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    aput v4, v10, v16

    const/4 v14, 0x0

    const/4 v4, 0x4

    move-object v6, v10

    move-object v10, v3

    move v12, v15

    move-object v13, v6

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 1148
    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1151
    :cond_2
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    .line 1152
    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    invoke-direct {v0, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1153
    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    invoke-direct {v0, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 1155
    new-instance v4, Landroid/graphics/Camera;

    invoke-direct {v4}, Landroid/graphics/Camera;-><init>()V

    .line 1156
    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    invoke-direct {v0, v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1157
    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    invoke-direct {v0, v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Camera;->rotateX(F)V

    int-to-float v6, v1

    const/4 v10, 0x0

    .line 1158
    invoke-virtual {v4, v10, v10, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1160
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1161
    invoke-virtual {v0, v7, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    .line 1163
    iget-boolean v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBackgroundEnabled:Z

    if-eqz v10, :cond_6

    iget-boolean v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    if-nez v10, :cond_6

    .line 1164
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1165
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1166
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1167
    new-instance v11, Landroid/graphics/RectF;

    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    neg-float v12, v12

    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    neg-float v13, v13

    iget v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v14, v14

    iget v15, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    add-float/2addr v14, v15

    iget v15, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v15, v15

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    add-float/2addr v15, v5

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1168
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    if-ne v5, v2, :cond_3

    .line 1169
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1170
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    const/16 v12, 0xff

    if-ne v5, v12, :cond_4

    .line 1171
    invoke-direct {v0, v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    goto :goto_2

    .line 1173
    :cond_3
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    if-ne v5, v9, :cond_4

    .line 1174
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v5, v11}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1175
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->hasAlpha()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1176
    invoke-direct {v0, v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1180
    :cond_4
    :goto_2
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v5, :cond_5

    .line 1181
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1182
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1183
    invoke-virtual {v0, v7, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    .line 1185
    :cond_5
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    int-to-float v5, v5

    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    int-to-float v12, v12

    invoke-virtual {v7, v11, v5, v12, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1186
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v5, :cond_6

    .line 1187
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1188
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1189
    invoke-virtual {v0, v7, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    .line 1195
    :cond_6
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    if-nez v5, :cond_7

    .line 1196
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->loadTexture()V

    .line 1198
    :cond_7
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1199
    new-instance v5, Landroid/graphics/BitmapShader;

    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v13, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v11, v12, v13}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1200
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 1201
    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v12, v12

    iget-object v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 1202
    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 1203
    iget-boolean v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    if-eqz v14, :cond_8

    .line 1204
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_3

    .line 1206
    :cond_8
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-virtual {v11, v14, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1208
    :goto_3
    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    int-to-float v12, v12

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    iget v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    int-to-float v14, v14

    div-float/2addr v14, v13

    invoke-virtual {v11, v12, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1209
    invoke-virtual {v5, v11}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1210
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v11, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextureShader(Landroid/graphics/BitmapShader;)V

    goto :goto_4

    .line 1212
    :cond_9
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v5, v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextureShader(Landroid/graphics/BitmapShader;)V

    .line 1215
    :goto_4
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    if-eqz v5, :cond_a

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_WHOLE:I

    if-ne v5, v11, :cond_b

    :cond_a
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    if-eqz v5, :cond_20

    .line 1216
    :cond_b
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v11

    mul-float v5, v5, v11

    float-to-int v5, v5

    iget v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v12

    mul-float v11, v11, v12

    float-to-int v11, v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 1217
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v8, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1218
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1222
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 1223
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1225
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1227
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1230
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getCurrEmbossEffect()Landroid/graphics/EmbossMaskFilter;

    move-result-object v5

    .line 1231
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v11, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaskFilter(Landroid/graphics/EmbossMaskFilter;)V

    .line 1233
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossIncludeStroke()Z

    move-result v11

    invoke-virtual {v5, v11}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setIncludeEmbossInStroke(Z)V

    .line 1234
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object v10, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;

    .line 1236
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-ne v5, v9, :cond_c

    .line 1237
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->removeColorSpans()V

    .line 1241
    :cond_c
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object v10, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;

    .line 1242
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    if-eqz v5, :cond_e

    .line 1243
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    if-nez v5, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->recreateBezierMaskPath()V

    .line 1244
    :cond_d
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->isValidRect(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1245
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1246
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1247
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;

    invoke-direct {v12, v0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Landroid/graphics/Paint;)V

    iput-object v12, v11, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;

    .line 1267
    :cond_e
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v11}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->draw(Landroid/graphics/Canvas;)V

    .line 1271
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_12

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-eq v5, v9, :cond_11

    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v5, :cond_f

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    if-eq v5, v9, :cond_11

    :cond_f
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-boolean v5, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    if-eqz v5, :cond_10

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v5, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    if-eq v5, v9, :cond_11

    :cond_10
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    if-nez v5, :cond_11

    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    if-eqz v5, :cond_12

    .line 1276
    :cond_11
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBitmapTopPadding(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->top_padding:I

    .line 1277
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBitmapBottomPadding(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    .line 1281
    :cond_12
    new-instance v5, Landroid/graphics/Rect;

    iget v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    invoke-direct {v5, v8, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1283
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_18

    iget v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-eq v11, v9, :cond_14

    iget-boolean v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v11, :cond_13

    iget v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    if-eq v11, v9, :cond_14

    :cond_13
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-boolean v11, v11, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    if-eqz v11, :cond_18

    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v11, v11, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    if-ne v11, v9, :cond_18

    .line 1287
    :cond_14
    new-instance v5, Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    .line 1288
    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingLeft()I

    move-result v11

    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->top_padding:I

    int-to-float v12, v12

    .line 1289
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v13

    div-float/2addr v12, v13

    float-to-int v12, v12

    iget-object v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 1290
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v14

    div-float/2addr v13, v14

    float-to-int v13, v13

    iget-object v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v14}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    iget-object v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 1291
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    iget v15, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v15

    div-float/2addr v14, v15

    float-to-int v14, v14

    invoke-direct {v5, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1293
    iget v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-eq v11, v9, :cond_15

    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v11, v11, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    if-ne v11, v9, :cond_18

    .line 1294
    :cond_15
    iget v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-ne v11, v9, :cond_16

    .line 1295
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setBlack()V

    .line 1296
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    iget-object v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v12, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1298
    :cond_16
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v11, v11, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    if-ne v11, v9, :cond_17

    .line 1299
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    new-instance v12, Landroid/graphics/Rect;

    iget v13, v5, Landroid/graphics/Rect;->left:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    iget v15, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v12, v13, v14, v15, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v12, v11, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;

    .line 1303
    :cond_17
    iget-object v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v8, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1305
    iget-object v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v11}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->draw(Landroid/graphics/Canvas;)V

    .line 1310
    :cond_18
    iget-object v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v9, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setIncludeEmbossInStroke(Z)V

    .line 1313
    :try_start_0
    iget-object v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    :catch_0
    iget-boolean v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v9, :cond_1c

    .line 1321
    iget v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v11

    mul-float v9, v9, v11

    float-to-int v9, v9

    iget v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v12

    mul-float v11, v11, v12

    float-to-int v11, v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    .line 1322
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v12

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1325
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1326
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v8, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1328
    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/TextPaint;->getColor()I

    move-result v11

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeEnabled()Z

    move-result v12

    .line 1332
    iget-boolean v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDStokeInclude:Z

    if-nez v13, :cond_19

    .line 1333
    iget-object v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-boolean v8, v13, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    .line 1337
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getCurr3DEmbossEffect()Landroid/graphics/EmbossMaskFilter;

    move-result-object v13

    .line 1338
    iget-object v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v14, v13}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaskFilter(Landroid/graphics/EmbossMaskFilter;)V

    .line 1341
    iget-boolean v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorAutomatic:Z

    if-nez v13, :cond_1b

    .line 1342
    iget-object v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v13}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->removeColorSpans()V

    .line 1343
    iget-object v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v13, v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextureShader(Landroid/graphics/BitmapShader;)V

    .line 1344
    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    if-ne v13, v2, :cond_1a

    .line 1345
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-boolean v2, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmp_drawing3DDepth:Z

    .line 1346
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1347
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    invoke-virtual {v5, v13}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextColor(I)V

    .line 1348
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    invoke-virtual {v5, v13}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_5

    .line 1349
    :cond_1a
    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1b

    .line 1350
    iget-object v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v13}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    iget-object v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v14, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1354
    :cond_1b
    :goto_5
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v5, v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->draw(Landroid/graphics/Canvas;)V

    .line 1355
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-boolean v8, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmp_drawing3DDepth:Z

    .line 1360
    invoke-direct {v0, v11, v12}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->restoreTextStyle(IZ)V

    .line 1361
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->blurMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    .line 1363
    :cond_1c
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object v10, v5, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;

    .line 1366
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1367
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v9

    invoke-virtual {v0, v5, v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateOuter_Shadow(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 1370
    :cond_1d
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    if-eqz v5, :cond_1e

    .line 1371
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBitmapLeftPadding(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    .line 1372
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBitmapRightPadding(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->right_padding:I

    .line 1373
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v5, v5

    iget v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    iget v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->right_padding:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v11

    div-float/2addr v9, v11

    sub-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v9

    invoke-direct {v0, v5, v1, v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->createShadow3d(IIF)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_3d:Landroid/graphics/Bitmap;

    .line 1376
    :cond_1e
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    if-eqz v5, :cond_1f

    .line 1377
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->flipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache_reflection:Landroid/graphics/Bitmap;

    .line 1378
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1379
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->flipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

    .line 1383
    :cond_1f
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v5, v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaskFilter(Landroid/graphics/EmbossMaskFilter;)V

    .line 1386
    iput-boolean v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    .line 1392
    :cond_20
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    if-nez v5, :cond_30

    .line 1394
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    if-eqz v5, :cond_21

    .line 1395
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v5

    invoke-direct {v0, v7, v3, v1, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->draw3dShadow(Landroid/graphics/Canvas;Landroid/graphics/Camera;IF)V

    .line 1404
    :cond_21
    iget-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v1, :cond_29

    .line 1405
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1406
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1407
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1408
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1409
    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1410
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthDarken:I

    int-to-float v5, v5

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v5, v9

    const/high16 v9, 0x435c0000    # 220.0f

    mul-float v5, v5, v9

    float-to-int v5, v5

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 1411
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v5, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1414
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDQuality:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v5, v9, v5

    div-float v9, v6, v5

    float-to-double v11, v9

    .line 1415
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v9, v11

    .line 1417
    new-instance v11, Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    .line 1418
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    .line 1419
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v11, v8, v8, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1420
    new-instance v12, Landroid/graphics/Rect;

    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    invoke-direct {v12, v8, v8, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1422
    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    if-ne v13, v2, :cond_25

    .line 1423
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1424
    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1425
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1426
    invoke-virtual {v0, v7, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    .line 1427
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1428
    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    iget v15, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-virtual {v0, v15}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->solidColor(I)I

    move-result v15

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v15, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1429
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1430
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1431
    iget v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1433
    invoke-direct {v0, v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1435
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1436
    iget v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    int-to-float v10, v10

    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    int-to-float v13, v13

    invoke-virtual {v7, v10, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1437
    iget-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    new-instance v13, Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 1438
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 1439
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v13, v8, v8, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v15, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v15, v15

    iget v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v8, v8

    iget v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    move-object/from16 v17, v3

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    add-int/2addr v14, v3

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    move-object/from16 v18, v1

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    add-int/2addr v3, v1

    invoke-direct {v2, v15, v8, v14, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1437
    invoke-virtual {v7, v10, v13, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1440
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1441
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_23
    move-object/from16 v18, v1

    move-object/from16 v17, v3

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v9, :cond_24

    .line 1445
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v14, v5, v2

    const/4 v2, 0x0

    .line 1446
    invoke-virtual {v4, v2, v2, v14}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1447
    invoke-virtual {v0, v7, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    .line 1448
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    move-object/from16 v3, v18

    invoke-virtual {v7, v2, v11, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1449
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1451
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v1, v17

    .line 1452
    invoke-virtual {v0, v7, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    goto/16 :goto_9

    :cond_25
    move-object v3, v1

    .line 1453
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_29

    .line 1454
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1455
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float v2, v2, v6

    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v4, v4, v5

    mul-float v4, v4, v6

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1456
    invoke-virtual {v0, v1, v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->divideVector(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invertVector(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 1458
    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1459
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1460
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1461
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-virtual {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->solidColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v4, 0x1

    .line 1462
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1463
    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1465
    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1467
    :cond_26
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1468
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1469
    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    int-to-float v4, v4

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    int-to-float v5, v5

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1470
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 1471
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 1472
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    invoke-direct {v5, v10, v10, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v8, v8

    iget v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v10, v10

    iget v11, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    add-int/2addr v11, v13

    iget v13, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    iget v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    add-int/2addr v13, v14

    invoke-direct {v6, v8, v10, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1470
    invoke-virtual {v7, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1473
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_27
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v9, :cond_28

    .line 1476
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1477
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1480
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1486
    :cond_29
    :goto_9
    iget-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-nez v1, :cond_2c

    .line 1487
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1488
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1490
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1492
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1493
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-virtual {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->solidColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x1

    .line 1494
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1495
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1496
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1497
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1498
    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1500
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1501
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    int-to-float v2, v2

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1502
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 1503
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 1504
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v5, v5

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v6, v6

    iget v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    add-int/2addr v8, v9

    iget v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    iget v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    add-int/2addr v9, v10

    invoke-direct {v4, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1502
    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1505
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1507
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1512
    :cond_2c
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1513
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1514
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1515
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-nez v1, :cond_2e

    .line 1516
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1517
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-virtual {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->solidColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1518
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x1

    .line 1519
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1520
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1522
    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1524
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1525
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    int-to-float v2, v2

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1526
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 1527
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 1528
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v5, v5

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v6, v6

    iget v8, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    add-int/2addr v8, v9

    iget v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    iget v10, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    add-int/2addr v9, v10

    invoke-direct {v4, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1526
    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1529
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1536
    :cond_2e
    iget-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    if-eqz v1, :cond_2f

    .line 1537
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1538
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1539
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1540
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1541
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1542
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache_reflection:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 1543
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 1544
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    invoke-direct {v3, v5, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    .line 1542
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1545
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resetAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1546
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1552
    :cond_2f
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1553
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1554
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1555
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1556
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1557
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resetAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1562
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1564
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1566
    iget-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-eqz v1, :cond_31

    iget-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    if-nez v1, :cond_31

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1567
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v4, v1

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBg:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1568
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v4, v1

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1569
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v4, v1

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1574
    :cond_31
    invoke-direct/range {p0 .. p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->drawHandles(Landroid/graphics/Canvas;)V

    return-void

    const/4 v1, 0x3
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 2016
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->measure(II)V

    .line 2017
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    .line 2018
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    .line 2020
    const/4 v0, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setMeasuredDimension(II)V

    .line 2022
    const/4 v0, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setPivotX(F)V

    .line 2023
    const/4 v0, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setPivotY(F)V

    return-void

    const/4 v0, 0x0
.end method

.method public postInvalidate()V
    .locals 2

    const/4 v1, 0x0

    .line 2688
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x2

    .line 2689
    const/4 v1, 0x3

    invoke-super {p0}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->postInvalidate()V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public postInvalidate(IIII)V
    .locals 2

    const/4 v1, 0x2

    .line 2695
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 2696
    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->postInvalidate(IIII)V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public rearrange(IIII)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    if-nez p3, :cond_1

    const/4 v2, 0x1

    move p3, p1

    :cond_1
    const/4 v2, 0x2

    if-nez p4, :cond_2

    const/4 v2, 0x3

    move p4, p2

    .line 2164
    const/4 v2, 0x0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v0

    .line 2165
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v1

    int-to-float p3, p3

    div-float/2addr v0, p3

    int-to-float p3, p4

    div-float/2addr v1, p3

    int-to-float p1, p1

    mul-float v0, v0, p1

    .line 2168
    const/4 v2, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V

    int-to-float p1, p2

    mul-float v1, v1, p1

    .line 2169
    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V

    return-void

    :cond_3
    const/4 v2, 0x1

    :goto_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public relativeScale(F)V
    .locals 2

    const/4 v1, 0x0

    .line 248
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextSize(F)V

    return-void

    const/4 v1, 0x1
.end method

.method public removeTexture()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 399
    const/4 v1, 0x0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 400
    const/4 v1, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 401
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public requestLayout()V
    .locals 2

    const/4 v1, 0x0

    .line 2683
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x2

    invoke-super {p0}, Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;->requestLayout()V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public restorePerspectivePoints()V
    .locals 4

    const/4 v3, 0x1

    .line 1607
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1608
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1609
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1610
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1611
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v1, 0x3
.end method

.method public restoreRotations()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1053
    const/4 v2, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisable3DRots:Z

    .line 1054
    const/4 v2, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisablePerspective:Z

    .line 1055
    const/4 v2, 0x3

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRot:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1056
    const/4 v2, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRot:Z

    .line 1057
    const/4 v2, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(I)V

    .line 1059
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public returnText()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    .line 2091
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->returnActualText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public rotate3d(II)V
    .locals 1

    const/4 v0, 0x1

    .line 707
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    .line 708
    const/4 v0, 0x3

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public rotateText(I)V
    .locals 2

    const/4 v1, 0x2

    int-to-float p1, p1

    const/4 v0, 0x0

    .line 2062
    const/4 v1, 0x3

    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(FZ)V

    return-void

    const/4 v1, 0x1
.end method

.method public saveToBundle()Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x1

    .line 2340
    const/4 v7, 0x2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "textReference"

    .line 2342
    const/4 v7, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "shapeX"

    .line 2343
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "shapeY"

    .line 2344
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "shapeOldContainerWidth"

    .line 2345
    const/4 v7, 0x2

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "shapeOldContainerHeight"

    .line 2346
    const/4 v7, 0x3

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textMaxWidth"

    .line 2347
    const/4 v7, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-wide v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textTextSize"

    .line 2348
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textRotation"

    .line 2349
    const/4 v7, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "objectHidden"

    .line 2351
    const/4 v7, 0x3

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "objectLocked"

    .line 2352
    const/4 v7, 0x0

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textTextString"

    .line 2353
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textTextFont"

    .line 2354
    const/4 v7, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fontIntervalsToBundle(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "textBold"

    .line 2355
    const/4 v7, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->styleIntervalsToBundle(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "textItalic"

    .line 2356
    const/4 v7, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->styleIntervalsToBundle(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "textUnder"

    .line 2357
    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->styleIntervalsToBundle(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "textAlignment"

    .line 2358
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextAlign()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textLetterSpacing"

    .line 2359
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLetterSpacing()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "tLSWrds"

    .line 2360
    const/4 v7, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isWordSpacing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textJustify"

    .line 2361
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextJustify()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textLineSpacing"

    .line 2362
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLineSpacing()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textBgEnabled"

    .line 2363
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_enabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textBgColor"

    .line 2364
    const/4 v7, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textBgGradientV2"

    .line 2366
    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textBgFillType"

    .line 2368
    const/4 v7, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textBgPaddingLeft"

    .line 2369
    const/4 v7, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textBgPaddingRight"

    .line 2370
    const/4 v7, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textBgPaddingTop"

    .line 2371
    const/4 v7, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textBgPaddingBottom"

    .line 2372
    const/4 v7, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textBgBorderRadius"

    .line 2373
    const/4 v7, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textStrokeEnabled"

    .line 2375
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textStrokeWidth"

    .line 2376
    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textStrokeColor"

    .line 2377
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textStrokeFillType"

    .line 2378
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeFillType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textStrokeGradientV2"

    .line 2379
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textInnerEnabled"

    .line 2381
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textInnerRadius"

    .line 2382
    const/4 v7, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_r:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textInnerColor"

    .line 2383
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textInnerDx"

    .line 2384
    const/4 v7, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dx:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textInnerDy"

    .line 2385
    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dy:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textOuterEnabled"

    .line 2386
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterShadowEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textOuterGlowEnabled"

    .line 2387
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterGlowEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textOuterRadius"

    .line 2388
    const/4 v7, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textOuterColor"

    .line 2389
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterShadowColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textOuterDx"

    .line 2390
    const/4 v7, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textOuterDy"

    .line 2391
    const/4 v7, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textRotationX"

    .line 2392
    const/4 v7, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textRotationY"

    .line 2393
    const/4 v7, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textTextColor"

    .line 2395
    const/4 v7, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->colorIntervalsToBundle(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "textEmbossEnabled"

    .line 2397
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textEmbossLightAngle"

    .line 2398
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textEmbossIntensity"

    .line 2399
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossIntensity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textEmbossAmbient"

    .line 2400
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossAmbient()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textEmbossHardness"

    .line 2401
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossHardness()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textEmbossBevel"

    .line 2402
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossBevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textEmbossIncludeStroke"

    .line 2403
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossIncludeStroke()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textThreeDEnabled"

    .line 2405
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textThreeDViewType"

    .line 2406
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDViewType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDDepth"

    .line 2407
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDDepthFillType"

    .line 2408
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthFillType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDDepthColorFill"

    .line 2409
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthColorFill()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDDepthGradientFillV2"

    .line 2410
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthGradientFill()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textThreeDDepthColorAutomatic"

    .line 2412
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDDepthColorAutomatic()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textThreeDDepthDarken"

    .line 2413
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthDarken()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDStokeInclude"

    .line 2414
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDStokeInclude()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textThreeDObAn"

    .line 2416
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDObliqueAngle()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDLightingEnabled"

    .line 2418
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDLightingEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textThreeDLightingIntensity"

    .line 2419
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingIntensity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDLightingShadow"

    .line 2420
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingShadow()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDLightingSpecularHardness"

    .line 2421
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingSpecularHardness()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textOpacity"

    .line 2423
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextOpacity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textOpacityShadowInclude"

    .line 2424
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textThreeDShadowEnabled"

    .line 2426
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isShadow_3d_enabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textThreeDShadowColor"

    .line 2427
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_color()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDShadowTransparency"

    .line 2428
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_transparency()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDShadowBlur"

    .line 2429
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_radius()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textThreeDShadowExpand"

    .line 2430
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_expand()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textPerEn"

    .line 2432
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isPerspectiveEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textPerP1X"

    .line 2433
    const/4 v7, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textPerP2X"

    .line 2434
    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textPerP3X"

    .line 2435
    const/4 v7, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textPerP4X"

    .line 2436
    const/4 v7, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textPerP1Y"

    .line 2437
    const/4 v7, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textPerP2Y"

    .line 2438
    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textPerP3Y"

    .line 2439
    const/4 v7, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textPerP4Y"

    .line 2440
    const/4 v7, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textTextGradientV2"

    .line 2442
    const/4 v7, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "textTextFillType"

    .line 2444
    const/4 v7, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textTextCurve"

    .line 2445
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getCurve()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textReflectionEnabled"

    .line 2446
    const/4 v7, 0x3

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textReflectionOffset"

    .line 2447
    const/4 v7, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textTextureImageSrcV2"

    const/4 v2, 0x1

    .line 2449
    const/4 v7, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textTextureImageSrc"

    .line 2451
    const/4 v7, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "textTextureImageCropInfo"

    .line 2452
    const/4 v7, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureInRot:I

    iget-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipH:Z

    iget-boolean v5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipV:Z

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->makeBundle(Landroid/graphics/RectF;IZZZ)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "textTextureMaintainAspect"

    .line 2453
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextureMaintainAspect()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "textTextureScale"

    .line 2454
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextureScale()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "B8aw"

    .line 2456
    const/4 v7, 0x2

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2457
    const/4 v7, 0x3

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    if-eqz v1, :cond_0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    const-string v1, "r3g9"

    .line 2458
    const/4 v7, 0x2

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "3EBs"

    .line 2459
    const/4 v7, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/4 v7, 0x0

    const-string v1, "ZpG28v"

    .line 2461
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInPaddingLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "deNYb4"

    .line 2462
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public selectMe()V
    .locals 3

    const/4 v2, 0x0

    .line 832
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 833
    const/4 v2, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 834
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I

    invoke-interface {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;->onEvent_SelectText(I)V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public set3dDepth(IIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 580
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepth:I

    .line 581
    const/4 v0, 0x2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthDarken:I

    .line 582
    const/4 v0, 0x3

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDQuality:I

    .line 583
    const/4 v0, 0x0

    iput-boolean p4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDStokeInclude:Z

    .line 584
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public set3dDepthColor(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V
    .locals 1

    const/4 v0, 0x3

    .line 573
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    .line 574
    const/4 v0, 0x1

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    .line 575
    const/4 v0, 0x2

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 576
    const/4 v0, 0x3

    iput-boolean p4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorAutomatic:Z

    .line 577
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public set3dEnabled(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 559
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public set3dLighting(ZIIII)V
    .locals 1

    const/4 v0, 0x2

    .line 565
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingEnabled:Z

    .line 566
    const/4 v0, 0x0

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    .line 567
    const/4 v0, 0x1

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingIntensity:I

    .line 568
    const/4 v0, 0x2

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingShadow:I

    .line 569
    const/4 v0, 0x3

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingSpecularHardness:I

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public set3dObliqueAngle(I)V
    .locals 1

    const/4 v0, 0x2

    .line 289
    const/4 v0, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public set3dViewType(I)V
    .locals 1

    const/4 v0, 0x2

    .line 554
    const/4 v0, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public setBezierMaskBundle(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    .line 1094
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    return-void

    const/4 v0, 0x0
.end method

.method public setBezierMaskEnabled(Z)V
    .locals 2

    const/4 v1, 0x1

    .line 1063
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    if-eq v0, p1, :cond_0

    const/4 v1, 0x3

    .line 1064
    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    .line 1065
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public setBezierMaskIn(Z)V
    .locals 2

    const/4 v1, 0x0

    .line 1081
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    .line 1082
    const/4 v1, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    .line 1083
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public setBezierMaskPath(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x3

    .line 1088
    const/4 v5, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    .line 1089
    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1090
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setBold(II)V
    .locals 2

    const/4 v1, 0x0

    .line 2096
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setBoldToSelection(II)V

    .line 2097
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    .line 2098
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 2099
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setBolds(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 613
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public setColorFill(I)V
    .locals 3

    const/4 v2, 0x3

    .line 627
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getTextLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setColorFill(III)V

    return-void

    const/4 v0, 0x2
.end method

.method public setColorFill(III)V
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 630
    const/4 v2, 0x3

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    .line 631
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 632
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setColorToSelection(III)V

    .line 633
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V

    .line 634
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x2
.end method

.method public setColors(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 588
    const/4 v2, 0x3

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    .line 589
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 590
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public setCurve(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 822
    const/4 v1, 0x0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    .line 823
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setCurve(I)V

    .line 824
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    .line 825
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    return-void

    const/4 v1, 0x1
.end method

.method public setEmboss(ZIIIII)V
    .locals 1

    const/4 v0, 0x2

    .line 540
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossEnabled:Z

    .line 541
    const/4 v0, 0x0

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    .line 542
    const/4 v0, 0x1

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIntensity:I

    .line 543
    const/4 v0, 0x2

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossAmbient:I

    .line 544
    const/4 v0, 0x3

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossHardness:I

    .line 545
    const/4 v0, 0x0

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossBevel:I

    .line 546
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public setEmbossIncludeStroke(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 549
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIncludeStroke:Z

    .line 550
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public setFill_type(I)V
    .locals 1

    const/4 v0, 0x3

    .line 675
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    return-void

    const/4 v0, 0x0
.end method

.method public setFonts(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 607
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public setGradientFill(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 638
    const/4 v1, 0x0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 639
    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 640
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setHidden(Z)V
    .locals 2

    const/4 v1, 0x0

    .line 440
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    .line 441
    const/4 v1, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    .line 442
    const/4 v1, 0x3

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    if-eq v0, p1, :cond_0

    const/4 v1, 0x0

    .line 443
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public setInPadding(II)V
    .locals 2

    const/4 v1, 0x0

    .line 230
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I

    .line 231
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput p2, p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingRight:I

    .line 232
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updatePaddings()V

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    .line 235
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    return-void

    const/4 v1, 0x1
.end method

.method public setInnerShadow(ZFFFI)V
    .locals 7

    const/4 v6, 0x3

    .line 774
    const/4 v6, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hasInnerShadow:Z

    .line 775
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setInnerShadow(ZFFFI)V

    .line 776
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x2
.end method

.method public setItalic(II)V
    .locals 2

    const/4 v1, 0x0

    .line 2102
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setItalicToSelection(II)V

    .line 2103
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    .line 2104
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 2105
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setItalics(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 618
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public setJustify(Z)V
    .locals 2

    const/4 v1, 0x3

    .line 960
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setJustifyAlign(Z)V

    .line 961
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 962
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setLayersListener(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;)V
    .locals 1

    const/4 v0, 0x0

    .line 262
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->layersListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;

    return-void

    const/4 v0, 0x0
.end method

.method public setLetterSpacing(I)V
    .locals 2

    const/4 v1, 0x3

    .line 689
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLetterSpace(I)V

    .line 690
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    .line 691
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    return-void

    const/4 v1, 0x1
.end method

.method public setLineSpacing(I)V
    .locals 4

    const/4 v3, 0x0

    .line 2121
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLineSpacing(FF)V

    .line 2122
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->spacing:I

    .line 2123
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 2124
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x3
.end method

.method public setLocked(Z)V
    .locals 2

    const/4 v1, 0x2

    .line 448
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    .line 449
    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    .line 450
    const/4 v1, 0x1

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    .line 451
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public setMax(F)V
    .locals 4

    const/4 v3, 0x2

    .line 1868
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    float-to-double v1, p1

    iput-wide v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v3, 0x0

    .line 1871
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    const/high16 p1, 0x4f000000

    goto :goto_0

    const/4 v3, 0x2

    .line 1874
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1877
    const/4 v3, 0x1

    :goto_0
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaxWidth(I)V

    .line 1879
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    .line 1880
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    return-void

    const/4 v1, 0x3
.end method

.method public setNewTextureSrc(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILandroid/graphics/RectF;ZZ)V
    .locals 1

    const/4 v0, 0x2

    .line 376
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 377
    const/4 v0, 0x0

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureInRot:I

    .line 378
    const/4 v0, 0x1

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    .line 379
    const/4 v0, 0x2

    iput-boolean p4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipH:Z

    .line 380
    const/4 v0, 0x3

    iput-boolean p5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipV:Z

    const/16 p1, 0xa

    .line 381
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    const/4 p1, 0x0

    .line 382
    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    const/4 p1, 0x0

    .line 384
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 385
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public setNewTextureSrc(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 389
    const/4 v1, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 390
    const/4 v1, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    goto :goto_0

    const/4 v1, 0x2

    .line 392
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    :goto_0
    const/4 v1, 0x1

    const/4 p1, 0x0

    .line 394
    const/4 v1, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 395
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setOuterShadow(ZZFIII)V
    .locals 2

    const/4 v1, 0x1

    .line 734
    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 736
    const/4 v1, 0x0

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_glow_enabled:Z

    .line 737
    const/4 v1, 0x1

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    .line 738
    const/4 v1, 0x2

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    .line 739
    const/4 v1, 0x3

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    .line 740
    const/4 v1, 0x0

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    float-to-double p4, p3

    .line 741
    const/4 v1, 0x1

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    mul-double p4, p4, p1

    double-to-int p1, p4

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    const/4 v1, 0x2

    const/4 p1, 0x0

    .line 743
    const/4 v1, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    .line 747
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setOuterShadowColor(I)V
    .locals 1

    const/4 v0, 0x3

    .line 730
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    .line 731
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setPerspectiveEnabled(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 1596
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectiveEnabled:Z

    .line 1597
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setPerspectivePoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    const/4 v2, 0x3

    .line 1600
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 1601
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 1602
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 1603
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget p2, p4, Landroid/graphics/PointF;->x:F

    iget p3, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 1604
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public setReflection(ZI)V
    .locals 1

    const/4 v0, 0x2

    .line 1862
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    .line 1863
    const/4 v0, 0x0

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    .line 1864
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public setRenderMode(ZF)V
    .locals 1

    const/4 v0, 0x3

    .line 80
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    .line 81
    const/4 v0, 0x1

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderScaleF:F

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->unloadBitmaps()V

    const/4 p1, 0x1

    .line 83
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setShadow3d(ZIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 298
    const/4 v0, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    .line 299
    const/4 v0, 0x3

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    .line 300
    const/4 v0, 0x0

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    .line 301
    const/4 v0, 0x1

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    .line 302
    const/4 v0, 0x2

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    .line 303
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public setShadow_3d_color(I)V
    .locals 1

    const/4 v0, 0x1

    .line 311
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    .line 312
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setShadow_3d_enabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 306
    const/4 v0, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    .line 307
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedrawUpdateParent()V

    return-void

    const/4 v0, 0x0
.end method

.method public setShadow_3d_expand(I)V
    .locals 1

    const/4 v0, 0x1

    .line 294
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    .line 295
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedrawUpdateParent()V

    return-void

    const/4 v0, 0x0
.end method

.method public setShadow_3d_radius(I)V
    .locals 1

    const/4 v0, 0x1

    .line 321
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    .line 322
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedrawUpdateParent()V

    return-void

    const/4 v0, 0x0
.end method

.method public setShadow_3d_transparency(I)V
    .locals 1

    const/4 v0, 0x1

    .line 316
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    .line 317
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setSpaceWords(Z)V
    .locals 2

    const/4 v1, 0x1

    .line 683
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setWordSpacing(Z)V

    .line 684
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    .line 685
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    return-void

    const/4 v1, 0x1
.end method

.method public setStroke(ZFIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 7

    const/4 v6, 0x2

    .line 800
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setStrokeFill(ZFIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 801
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 802
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x2
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, -0x1

    .line 2183
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;ZI)V

    return-void

    const/4 v1, 0x1
.end method

.method public setText(Ljava/lang/String;ZI)V
    .locals 4

    const/4 v3, 0x2

    .line 2187
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->returnActualText()Ljava/lang/String;

    move-result-object v0

    .line 2188
    const/4 v3, 0x0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->countLines(Ljava/lang/String;)I

    move-result v0

    .line 2189
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getLineCount()I

    move-result v1

    .line 2192
    const/4 v3, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v2, p1, p3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateText(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2194
    const/4 v3, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->neverEdited:Z

    if-ne v1, v0, :cond_0

    const/4 v3, 0x0

    .line 2197
    const/4 v3, 0x1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p3, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    .line 2198
    const/4 v3, 0x2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const v0, 0x7fffffff

    invoke-virtual {p3, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaxWidth(I)V

    .line 2201
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p3, p1, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->measure(II)V

    .line 2202
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    .line 2203
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    if-eqz p2, :cond_1

    const/4 v3, 0x3

    .line 2205
    const/4 v3, 0x0

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    .line 2207
    const/4 v3, 0x1

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float p2, p2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_1

    const/4 v3, 0x2

    .line 2208
    const/4 v3, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    float-to-double v0, p1

    iput-wide v0, p2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    .line 2209
    const/4 v3, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaxWidth(I)V

    .line 2212
    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->layersListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;

    if-eqz p1, :cond_2

    const/4 v3, 0x3

    .line 2213
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->layersListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;->textChanged()V

    .line 2215
    const/4 v3, 0x1

    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 2216
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x3
.end method

.method public setTextAlign(I)V
    .locals 2

    const/4 v1, 0x1

    .line 955
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setGravity(I)V

    .line 956
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 957
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setTextFont(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 653
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToFontIntervals(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextFont(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    :cond_0
    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public setTextFont(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 2

    const/4 v1, 0x3

    .line 646
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setFonts(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    .line 647
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 648
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setTextOpacity(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1620
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacity:I

    .line 1621
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setTextOpacityShadowInclude(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1629
    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacityShadowInclude:Z

    .line 1630
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setTextSize(F)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2049
    const/4 v1, 0x0

    :goto_0
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateTextSize(F)V

    .line 2050
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 2051
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setTextureMaintainAspect(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 359
    const/4 v0, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    .line 360
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public setTextureScale(I)V
    .locals 1

    const/4 v0, 0x1

    .line 355
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    .line 356
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x0
.end method

.method public setTouchEventListener(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 419
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    return-void

    const/4 v0, 0x0
.end method

.method public setUnderline(II)V
    .locals 2

    const/4 v1, 0x0

    .line 2108
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setUnderToSelection(II)V

    .line 2109
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    .line 2110
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 2111
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void

    const/4 v1, 0x1
.end method

.method public setUnders(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 623
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method solidColor(I)I
    .locals 4

    const/4 v3, 0x3

    .line 1578
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0xff

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1

    const/4 v1, 0x3
.end method

.method styleIntervalsToBundle(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x2

    .line 2241
    const/4 v7, 0x3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2243
    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v7, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    .line 2244
    const/4 v7, 0x3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "textsIntervalsStart"

    .line 2245
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "textsIntervalsEnd"

    .line 2246
    const/4 v7, 0x1

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2247
    const/4 v7, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interval"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/2addr v2, v1

    goto :goto_0

    const/4 v7, 0x3

    :cond_0
    const/4 v7, 0x0

    return-object v0

    const/4 v1, 0x3
.end method

.method public tempDisableRotations(ZZZ)V
    .locals 1

    const/4 v0, 0x2

    .line 1045
    const/4 v0, 0x3

    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisablePerspective:Z

    .line 1046
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRot:Z

    .line 1047
    const/4 v0, 0x1

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisable3DRots:Z

    .line 1048
    const/4 v0, 0x2

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRot:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(I)V

    .line 1049
    const/4 v0, 0x0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public toggleSelect(Z)V
    .locals 2

    const/4 v1, 0x3

    .line 2080
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    .line 2081
    const/4 v1, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    .line 2082
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->layersListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2083
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->layersListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;->selectionChanged(Z)V

    .line 2085
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    :cond_1
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public unhideTemp()V
    .locals 2

    const/4 v1, 0x2

    .line 434
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpHidden:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 435
    const/4 v1, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setHidden(Z)V

    .line 436
    const/4 v1, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpHidden:Z

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method unloadBitmaps()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2671
    const/4 v1, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 2672
    const/4 v1, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 2673
    const/4 v1, 0x0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    .line 2674
    const/4 v1, 0x1

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_3d:Landroid/graphics/Bitmap;

    .line 2675
    const/4 v1, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

    .line 2676
    const/4 v1, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache_reflection:Landroid/graphics/Bitmap;

    .line 2677
    const/4 v1, 0x0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 2678
    const/4 v1, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    return-void

    const/4 v1, 0x1
.end method

.method public updateBackground(ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V
    .locals 1

    const/4 v0, 0x3

    .line 971
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBackgroundEnabled:Z

    .line 972
    const/4 v0, 0x1

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBackgroundEnabled:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 973
    const/4 v0, 0x3

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 974
    const/4 v0, 0x1

    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    const/4 v0, 0x2

    :cond_0
    const/4 v0, 0x3

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 975
    const/4 v0, 0x1

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    .line 976
    const/4 v0, 0x2

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    .line 977
    const/4 v0, 0x3

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    .line 978
    const/4 v0, 0x0

    iput p7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    .line 979
    const/4 v0, 0x1

    iput p8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    .line 980
    const/4 v0, 0x2

    iput p9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    .line 982
    const/4 v0, 0x3

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public updateOuter_Shadow(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x2

    .line 1905
    const/4 v7, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v7, 0x0

    return-object p1

    .line 1908
    const/4 v7, 0x1

    :cond_0
    const/4 v7, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1911
    const/4 v7, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p2

    .line 1912
    const/4 v7, 0x0

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_glow_enabled:Z

    if-eqz v3, :cond_1

    const/4 v7, 0x1

    float-to-int p2, v1

    .line 1913
    const/4 v7, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->addPadding(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1914
    const/4 v7, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dilate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 1915
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    const/4 v7, 0x1

    .line 1919
    const/4 v7, 0x2

    :cond_1
    const/4 v7, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    mul-float v1, v1, p2

    .line 1920
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1922
    const/4 v7, 0x1

    :goto_0
    const/4 v7, 0x2

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1923
    const/4 v7, 0x3

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 1924
    const/4 v7, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1925
    const/4 v7, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1926
    const/4 v7, 0x2

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v1, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1928
    const/4 v7, 0x3

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1929
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x0

    .line 1931
    const/4 v7, 0x1

    invoke-virtual {p2, p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public updateSpans(Z)V
    .locals 2

    const/4 v1, 0x3

    .line 594
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 596
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V

    .line 597
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    goto :goto_0

    const/4 v1, 0x0

    .line 600
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    .line 601
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    .line 602
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    :goto_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public visibilityCheck()V
    .locals 2

    const/4 v1, 0x3

    .line 2150
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isNotVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2151
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->makeMeVisible()V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method
