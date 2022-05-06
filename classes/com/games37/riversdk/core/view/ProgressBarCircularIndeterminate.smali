.class public Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;
.super Lcom/games37/riversdk/core/view/CustomView;
.source "ProgressBarCircularIndeterminate.java"


# static fields
.field public static final ANDROIDXML:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field arcD:I

.field arcO:I

.field private backgroundColor:I

.field cont:I

.field firstAnimationOver:Z

.field limite:I

.field private mContext:Landroid/content/Context;

.field radius1:F

.field radius2:F

.field rotateAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/view/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string v0, "#d22838"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    .line 82
    iput v2, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius1:F

    .line 83
    iput v2, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius2:F

    .line 84
    iput v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->cont:I

    .line 85
    iput-boolean v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->firstAnimationOver:Z

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcD:I

    .line 126
    iput v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcO:I

    .line 127
    iput v2, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->rotateAngle:F

    .line 128
    iput v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->limite:I

    .line 26
    iput-object p1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0, p2}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->setAttributes(Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private drawFirstAnimation(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 93
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius1:F

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_51

    .line 94
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 95
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->makePressColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius1:F

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4d

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    :goto_37
    iput v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius1:F

    .line 98
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius1:F

    invoke-virtual {p1, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    :cond_4c
    :goto_4c
    return-void

    .line 97
    :cond_4d
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius1:F

    add-float/2addr v4, v8

    goto :goto_37

    .line 100
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    .local v2, "temp":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 103
    .restart local v1    # "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->makePressColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 107
    .local v3, "transparentPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 110
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->cont:I

    const/16 v5, 0x32

    if-lt v4, v5, :cond_110

    .line 111
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius2:F

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_10c

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    :goto_c4
    iput v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius2:F

    .line 116
    :goto_c6
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius2:F

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 117
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v11, v11, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius2:F

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_fb

    .line 119
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->cont:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->cont:I

    .line 120
    :cond_fb
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius2:F

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4c

    .line 121
    iput-boolean v7, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->firstAnimationOver:Z

    goto/16 :goto_4c

    .line 111
    :cond_10c
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius2:F

    add-float/2addr v4, v8

    goto :goto_c4

    .line 113
    :cond_110
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius2:F

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_135

    .line 114
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    iget-object v5, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->mContext:Landroid/content/Context;

    invoke-static {v5, v10}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    :goto_132
    iput v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius2:F

    goto :goto_c6

    :cond_135
    iget v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->radius2:F

    add-float/2addr v4, v8

    goto :goto_132
.end method

.method private drawSecondAnimation(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x40800000    # 4.0f

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 136
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcO:I

    iget v2, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->limite:I

    if-ne v1, v2, :cond_10

    .line 137
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcD:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcD:I

    .line 138
    :cond_10
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcD:I

    const/16 v2, 0x122

    if-ge v1, v2, :cond_1c

    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcO:I

    iget v2, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->limite:I

    if-le v1, v2, :cond_28

    .line 139
    :cond_1c
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcO:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcO:I

    .line 140
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcD:I

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcD:I

    .line 142
    :cond_28
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcO:I

    iget v2, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->limite:I

    add-int/lit16 v2, v2, 0x122

    if-le v1, v2, :cond_3a

    .line 143
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcO:I

    iput v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->limite:I

    .line 144
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->limite:I

    iput v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcO:I

    .line 145
    iput v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcD:I

    .line 147
    :cond_3a
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->rotateAngle:F

    add-float/2addr v1, v9

    iput v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->rotateAngle:F

    .line 148
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->rotateAngle:F

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 150
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 152
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    .local v0, "temp":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 154
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcO:I

    int-to-float v2, v2

    iget v3, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->arcD:I

    int-to-float v3, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 158
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 159
    .local v7, "transparentPaint":Landroid/graphics/Paint;
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 162
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 163
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 162
    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v6, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 166
    return-void
.end method


# virtual methods
.method protected makePressColor()I
    .registers 5

    .prologue
    .line 62
    iget v3, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v2, v3, 0xff

    .line 63
    .local v2, "r":I
    iget v3, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v1, v3, 0xff

    .line 64
    .local v1, "g":I
    iget v3, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    shr-int/lit8 v3, v3, 0x0

    and-int/lit16 v0, v3, 0xff

    .line 65
    .local v0, "b":I
    const/16 v3, 0x80

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/view/CustomView;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    iget-boolean v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->firstAnimationOver:Z

    if-nez v0, :cond_a

    .line 73
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->drawFirstAnimation(Landroid/graphics/Canvas;)V

    .line 75
    :cond_a
    iget v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->cont:I

    if-lez v0, :cond_11

    .line 76
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->drawSecondAnimation(Landroid/graphics/Canvas;)V

    .line 78
    :cond_11
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->invalidate()V

    .line 80
    return-void
.end method

.method protected setAttributes(Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, 0x42000000    # 32.0f

    const/4 v2, -0x1

    .line 33
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->setMinimumHeight(I)V

    .line 34
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->setMinimumWidth(I)V

    .line 38
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    .line 39
    iget v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    if-eq v0, v2, :cond_3c

    .line 40
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->setBackgroundColor(I)V

    .line 51
    :goto_30
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->mContext:Landroid/content/Context;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->setMinimumHeight(I)V

    .line 54
    return-void

    .line 43
    :cond_3c
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    .line 44
    iget v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    if-eq v0, v2, :cond_50

    .line 45
    iget v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->setBackgroundColor(I)V

    goto :goto_30

    .line 47
    :cond_50
    const-string v0, "#1E88E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->setBackgroundColor(I)V

    goto :goto_30
.end method

.method public setBackgroundColor(I)V
    .registers 4
    .param p1, "color"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/games37/riversdk/core/view/CustomView;->setBackgroundColor(I)V

    .line 172
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 173
    iget v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    iput v0, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->beforeBackground:I

    .line 175
    :cond_18
    iput p1, p0, Lcom/games37/riversdk/core/view/ProgressBarCircularIndeterminate;->backgroundColor:I

    .line 176
    return-void
.end method
