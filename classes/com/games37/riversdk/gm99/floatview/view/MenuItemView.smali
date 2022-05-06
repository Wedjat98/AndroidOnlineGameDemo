.class public Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;
.super Landroid/widget/FrameLayout;
.source "MenuItemView.java"


# static fields
.field public static final CONTENT_ALPHA:I = 0xb2

.field public static final OUTSIDE_CIRCLE_ALPHA:I = 0x1a

.field public static final RED_POINT:Ljava/lang/String; = "RED_POINT"

.field public static final STROKE_ALPHA:I = 0xa

.field public static final TAG:Ljava/lang/String; = "MenuItem"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mInsideOval:Landroid/graphics/RectF;

.field private mMenuFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

.field private mOval:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mStartAngle:F

.field private mSweepAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FFFFFLcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "menuFunctionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    .line 67
    iput v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mStartAngle:F

    .line 71
    iput v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mSweepAngle:F

    .line 102
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->setPadding(IIII)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->setWillNotDraw(Z)V

    .line 104
    iput p2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    .line 105
    iput p3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    .line 106
    iput p4, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    .line 107
    iput p5, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mStartAngle:F

    .line 108
    iput p6, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mSweepAngle:F

    .line 109
    iput-object p7, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mMenuFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .line 110
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->init(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0, p7}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->initView(Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V

    .line 112
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v8, 0xa

    const/4 v7, -0x1

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v4, 0x1

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 211
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 212
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mStartAngle:F

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mSweepAngle:F

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 215
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mStartAngle:F

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mSweepAngle:F

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 221
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 222
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mInsideOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mStartAngle:F

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mSweepAngle:F

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 226
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 229
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 231
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 236
    return-void
.end method

.method private initView(Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;)V
    .registers 11
    .param p1, "menuFunctionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    .prologue
    const/4 v5, 0x0

    .line 123
    if-eqz p1, :cond_77

    .line 124
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 125
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "a1_floatview_circle_menu_item"

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    .line 124
    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 127
    .local v3, "menuItem":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "iv_red_point"

    invoke-static {v6, v7}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 128
    .local v2, "ivRedPoint":Landroid/widget/ImageView;
    const-string v6, "RED_POINT"

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "iv_icon"

    invoke-static {v6, v7}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 132
    .local v1, "ivIcon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "tv_name"

    invoke-static {v6, v7}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 134
    .local v4, "tvName":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_ICON()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->setMenuIconRes(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_NAME()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v6, "1"

    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getHAS_RED_POINT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v0, 0x1

    .line 139
    .local v0, "hasRedPoint":Z
    :goto_68
    if-eqz v0, :cond_7a

    .line 140
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    :goto_6d
    invoke-virtual {p1}, Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;->getFUNCTION_NAME()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->setTag(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->addView(Landroid/view/View;)V

    .line 147
    .end local v0    # "hasRedPoint":Z
    .end local v1    # "ivIcon":Landroid/widget/ImageView;
    .end local v2    # "ivRedPoint":Landroid/widget/ImageView;
    .end local v3    # "menuItem":Landroid/view/ViewGroup;
    .end local v4    # "tvName":Landroid/widget/TextView;
    :cond_77
    return-void

    .restart local v1    # "ivIcon":Landroid/widget/ImageView;
    .restart local v2    # "ivRedPoint":Landroid/widget/ImageView;
    .restart local v3    # "menuItem":Landroid/view/ViewGroup;
    .restart local v4    # "tvName":Landroid/widget/TextView;
    :cond_78
    move v0, v5

    .line 138
    goto :goto_68

    .line 142
    .restart local v0    # "hasRedPoint":Z
    :cond_7a
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6d
.end method

.method private setMenuIconRes(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 156
    if-eqz p1, :cond_3e

    .line 157
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "a1_sdk_floatview_user"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, "defaultResId":I
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 160
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 162
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 164
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 166
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 169
    .local v1, "requestOptions":Lcom/bumptech/glide/request/RequestOptions;
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 174
    .end local v0    # "defaultResId":I
    .end local v1    # "requestOptions":Lcom/bumptech/glide/request/RequestOptions;
    :cond_3e
    :goto_3e
    return-void

    .line 171
    .restart local v0    # "defaultResId":I
    :cond_3f
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3e
.end method


# virtual methods
.method public getMenuFunctionInfo()Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mMenuFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    return-object v0
.end method

.method public getStartAngle()F
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mStartAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .registers 2

    .prologue
    .line 265
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mSweepAngle:F

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x40400000    # 3.0f

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    .line 116
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    iget v5, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mOval:Landroid/graphics/RectF;

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    iget v5, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mInsideOval:Landroid/graphics/RectF;

    .line 120
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 193
    iget v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_23

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    .line 195
    .local v8, "canvasWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    .line 196
    .local v7, "canvasHeight":I
    int-to-float v3, v8

    int-to-float v4, v7

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v9

    .line 197
    .local v9, "layerId":I
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->drawArc(Landroid/graphics/Canvas;)V

    .line 198
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 200
    .end local v7    # "canvasHeight":I
    .end local v8    # "canvasWidth":I
    .end local v9    # "layerId":I
    :cond_23
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getChildCount()I

    move-result v14

    if-lez v14, :cond_ae

    move-object/from16 v0, p0

    iget v14, v0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_ae

    .line 241
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 243
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 244
    .local v9, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 245
    .local v8, "height":I
    const/4 v5, 0x0

    .local v5, "childLeft":I
    const/4 v7, 0x0

    .local v7, "childTop":I
    const/4 v6, 0x0

    .local v6, "childRight":I
    const/4 v4, 0x0

    .line 248
    .local v4, "childBottom":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mSweepAngle:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mStartAngle:F

    add-float v2, v14, v15

    .line 249
    .local v2, "angle":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    move/from16 v16, v0

    const/high16 v17, 0x40400000    # 3.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x4001333333333333L    # 2.15

    mul-double v16, v16, v18

    float-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    const-wide v20, 0x4066800000000000L    # 180.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v10, v14, v16

    .line 250
    .local v10, "x":D
    move-object/from16 v0, p0

    iget v14, v0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    move/from16 v16, v0

    const/high16 v17, 0x40400000    # 3.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x4001333333333333L    # 2.15

    mul-double v16, v16, v18

    float-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    const-wide v20, 0x4066800000000000L    # 180.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v12, v14, v16

    .line 252
    .local v12, "y":D
    double-to-int v14, v10

    div-int/lit8 v15, v9, 0x2

    sub-int v5, v14, v15

    .line 253
    double-to-int v14, v10

    div-int/lit8 v15, v9, 0x2

    add-int v6, v14, v15

    .line 254
    double-to-int v14, v12

    div-int/lit8 v15, v8, 0x2

    sub-int v7, v14, v15

    .line 255
    double-to-int v14, v12

    div-int/lit8 v15, v8, 0x2

    add-int v4, v14, v15

    .line 256
    invoke-virtual {v3, v5, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 258
    .end local v2    # "angle":F
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childBottom":I
    .end local v5    # "childLeft":I
    .end local v6    # "childRight":I
    .end local v7    # "childTop":I
    .end local v8    # "height":I
    .end local v9    # "width":I
    .end local v10    # "x":D
    .end local v12    # "y":D
    :cond_ae
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 182
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 183
    .local v1, "sizeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 185
    .local v0, "sizeHeight":I
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->measureChildren(II)V

    .line 186
    invoke-virtual {p0, v1, v0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->setMeasuredDimension(II)V

    .line 187
    return-void
.end method

.method public updatePosition(FFFF)V
    .registers 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "startAngle"    # F
    .param p4, "sweepAngle"    # F

    .prologue
    const/high16 v6, 0x40400000    # 3.0f

    .line 281
    const-string v0, "MenuItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePosition startAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sweepAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iput p1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    .line 283
    iput p2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    .line 284
    iput p3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mStartAngle:F

    .line 285
    iput p4, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mSweepAngle:F

    .line 286
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    iget v5, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mOval:Landroid/graphics/RectF;

    .line 287
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterX:F

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mCenterY:F

    iget v5, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mRadius:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->mInsideOval:Landroid/graphics/RectF;

    .line 288
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/MenuItemView;->requestLayout()V

    .line 289
    return-void
.end method
