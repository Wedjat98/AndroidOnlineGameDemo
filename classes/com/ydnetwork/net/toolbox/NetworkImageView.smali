.class public Lcom/ydnetwork/net/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/ydnetwork/net/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/ydnetwork/net/toolbox/NetworkImageView;)I
    .registers 2

    iget v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mErrorImageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/ydnetwork/net/toolbox/NetworkImageView;)I
    .registers 2

    iget v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mDefaultImageId:I

    return v0
.end method

.method private setDefaultImageOrNull()V
    .registers 2

    iget v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mDefaultImageId:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mDefaultImageId:I

    invoke-virtual {p0, v0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->setImageResource(I)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_9
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->invalidate()V

    return-void
.end method

.method public getImageURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method loadImageIfNecessary(Z)V
    .registers 11

    const/4 v7, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v7, :cond_35

    move v0, v1

    :goto_1e
    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v7, :cond_37

    move v3, v1

    :goto_27
    move v8, v3

    move v3, v0

    move v0, v8

    :goto_2a
    if-eqz v3, :cond_39

    if-eqz v0, :cond_39

    :goto_2e
    if-nez v6, :cond_3b

    if-nez v4, :cond_3b

    if-nez v1, :cond_3b

    :cond_34
    :goto_34
    return-void

    :cond_35
    move v0, v2

    goto :goto_1e

    :cond_37
    move v3, v2

    goto :goto_27

    :cond_39
    move v1, v2

    goto :goto_2e

    :cond_3b
    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    :cond_4f
    invoke-direct {p0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    goto :goto_34

    :cond_53
    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v1}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v1}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v1}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    invoke-direct {p0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    :cond_75
    if-eqz v3, :cond_8b

    move v3, v2

    :goto_78
    if-eqz v0, :cond_7b

    move v4, v2

    :cond_7b
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageLoader:Lcom/ydnetwork/net/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v2, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;

    invoke-direct {v2, p0, p1}, Lcom/ydnetwork/net/toolbox/NetworkImageView$1;-><init>(Lcom/ydnetwork/net/toolbox/NetworkImageView;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/ydnetwork/net/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    goto :goto_34

    :cond_8b
    move v3, v6

    goto :goto_78

    :cond_8d
    move v0, v2

    move v3, v2

    goto :goto_2a
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    invoke-virtual {p0, v1}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageContainer:Lcom/ydnetwork/net/toolbox/ImageLoader$ImageContainer;

    :cond_f
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public setDefaultImageResId(I)V
    .registers 2

    iput p1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mDefaultImageId:I

    return-void
.end method

.method public setErrorImageResId(I)V
    .registers 2

    iput p1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mErrorImageId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/ImageLoader;)V
    .registers 4

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/ydnetwork/net/toolbox/NetworkImageView;->mImageLoader:Lcom/ydnetwork/net/toolbox/ImageLoader;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ydnetwork/net/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method
