.class public Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;
.super Landroid/view/View;
.source "CloseViewBG.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CloseViewBG"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FFF)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mCenterX:F

    .line 36
    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mCenterY:F

    .line 40
    iput v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mRadius:F

    .line 48
    iput p2, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mRadius:F

    .line 49
    iput p3, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mCenterX:F

    .line 50
    iput p4, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mCenterY:F

    .line 51
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private drawInsideCircle(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 72
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mCenterX:F

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mCenterY:F

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mRadius:F

    add-float/2addr v2, v4

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mCenterX:F

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mCenterY:F

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mRadius:F

    add-float/2addr v2, v4

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 58
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    .line 64
    .local v8, "canvasWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    .line 65
    .local v7, "canvasHeight":I
    int-to-float v3, v8

    int-to-float v4, v7

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v9

    .line 66
    .local v9, "layerId":I
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->drawInsideCircle(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 68
    return-void
.end method

.method public updatePisition(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mCenterX:F

    .line 98
    iput p2, p0, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->mCenterY:F

    .line 99
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->invalidate()V

    .line 100
    return-void
.end method
