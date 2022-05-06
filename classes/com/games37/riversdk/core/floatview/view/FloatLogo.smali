.class public Lcom/games37/riversdk/core/floatview/view/FloatLogo;
.super Landroid/widget/FrameLayout;
.source "FloatLogo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/floatview/view/FloatLogo$Builder;,
        Lcom/games37/riversdk/core/floatview/view/FloatLogo$State;
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

.field private mRedPointIv:Landroid/widget/ImageView;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSuspendIv:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 44
    invoke-direct {p0}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->initView()V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;Lcom/games37/riversdk/core/floatview/view/FloatLogo$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;
    .param p3, "x2"    # Lcom/games37/riversdk/core/floatview/view/FloatLogo$1;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;-><init>(Landroid/content/Context;Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;)V

    return-void
.end method

.method private initView()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 52
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 53
    invoke-virtual {v5}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getLogoParams()I

    move-result v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 54
    invoke-virtual {v6}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getLogoParams()I

    move-result v6

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v1, "parent_params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    .line 59
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v3, "rootView_params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->addView(Landroid/view/View;)V

    .line 65
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    .line 66
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v0, "logo_params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x3

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {p0}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setNormalLogoRes()V

    .line 73
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRedPointIv:Landroid/widget/ImageView;

    .line 79
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 80
    invoke-virtual {v5}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getRedPointParams()I

    move-result v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 81
    invoke-virtual {v6}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getRedPointParams()I

    move-result v6

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v2, "redPoint_params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x35

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 86
    invoke-virtual {v5}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getRedPointMargin()I

    move-result v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 87
    invoke-virtual {v6}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getRedPointMargin()I

    move-result v6

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v5

    .line 85
    invoke-virtual {v2, v8, v4, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRedPointIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRedPointIv:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 92
    invoke-virtual {v6}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getRedPointPicResName()Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRedPointIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRedPointIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getParams()Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    return-object v0
.end method

.method public hide()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 144
    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    :cond_e
    return-void
.end method

.method public refresh(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-object v3, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 203
    .local v2, "root_params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRedPointIv:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 206
    .local v1, "redPoint_params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v4}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getRedPointMargin()I

    move-result v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/DisPlayUtil;->toDp(Landroid/content/Context;I)I

    move-result v0

    .line 208
    .local v0, "margin":I
    const/4 v3, 0x2

    if-ne p1, v3, :cond_35

    .line 210
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 211
    const/16 v3, 0x33

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 212
    invoke-virtual {v1, v0, v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 219
    :cond_2a
    :goto_2a
    iget-object v3, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v3, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRedPointIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-void

    .line 213
    :cond_35
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2a

    .line 215
    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    const/16 v3, 0x35

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    invoke-virtual {v1, v5, v0, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2a
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/games37/riversdk/core/floatview/view/FloatLogo;
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 99
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    :cond_b
    return-object p0
.end method

.method public setNormalLogoRes()V
    .registers 6

    .prologue
    .line 108
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    if-eqz v2, :cond_4e

    .line 110
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getLogoImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 111
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 112
    invoke-virtual {v3}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getLogoResName()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "defaultResId":I
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 115
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 122
    .local v1, "requestOptions":Lcom/bumptech/glide/request/RequestOptions;
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    invoke-virtual {v3}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getLogoImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 130
    .end local v0    # "defaultResId":I
    .end local v1    # "requestOptions":Lcom/bumptech/glide/request/RequestOptions;
    :cond_4e
    :goto_4e
    return-void

    .line 126
    :cond_4f
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 127
    invoke-virtual {v4}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getLogoResName()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4e
.end method

.method public setRedPointState(Z)V
    .registers 4
    .param p1, "isShow"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRedPointIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 157
    if-eqz p1, :cond_d

    .line 158
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRedPointIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    :cond_c
    :goto_c
    return-void

    .line 160
    :cond_d
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRedPointIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c
.end method

.method public setState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 172
    packed-switch p1, :pswitch_data_30

    .line 186
    invoke-virtual {p0}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setNormalLogoRes()V

    .line 190
    :cond_a
    :goto_a
    return-void

    .line 175
    :pswitch_b
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 176
    invoke-virtual {v2}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getHideLeftLogoResName()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 180
    :pswitch_1d
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mSuspendIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mFloatLogoParams:Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;

    .line 181
    invoke-virtual {v2}, Lcom/games37/riversdk/core/floatview/model/FloatLogoParams;->getHideRightLogoResName()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 172
    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_b
        :pswitch_1d
    .end packed-switch
.end method

.method public show()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/FloatLogo;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 138
    :cond_d
    return-void
.end method
