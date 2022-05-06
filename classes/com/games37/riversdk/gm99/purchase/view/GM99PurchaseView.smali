.class public Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;
.super Lcom/games37/riversdk/core/purchase/view/PurchaseView;
.source "GM99PurchaseView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GM99PurchaseView"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/purchase/view/PurchaseView;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    .line 44
    return-void
.end method

.method static synthetic access$000(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;)Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    return-object v0
.end method

.method static synthetic access$200(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    return-void
.end method

.method private initView(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x2

    .line 54
    const-string v3, "a1_sdk_activity_googlepay"

    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v3, p0}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    const-string v3, "pay_loading_image"

    .line 56
    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 55
    invoke-virtual {p0, v3}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 58
    .local v1, "loadingView":Landroid/widget/ImageView;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 59
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_3a

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 60
    .local v2, "objectAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 61
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 63
    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 64
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 65
    return-void

    .line 59
    nop

    :array_3a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private purchase(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v3

    sget-object v4, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->PURCHASE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 69
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;)Lcom/games37/riversdk/core/callback/BaseCallback;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/core/callback/SDKCallback;

    .line 71
    .local v1, "purchaseCallback":Lcom/games37/riversdk/core/callback/SDKCallback;
    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->mBundle:Landroid/os/Bundle;

    const-string v4, "GOOGLE_API_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->mBundle:Landroid/os/Bundle;

    const-string v4, "GOOGLE_API_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "googleApiKey":Ljava/lang/String;
    :goto_1e
    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->mBundle:Landroid/os/Bundle;

    const-string v4, "PURCHASEINFO"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-nez v3, :cond_37

    const/4 v2, 0x0

    .line 75
    .local v2, "purchaseInfo":Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    :goto_29
    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    new-instance v4, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;-><init>(Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;Lcom/games37/riversdk/core/callback/SDKCallback;Landroid/app/Activity;)V

    invoke-virtual {v3, p1, v0, v2, v4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->startPurchase(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    .line 126
    return-void

    .line 71
    .end local v0    # "googleApiKey":Ljava/lang/String;
    .end local v2    # "purchaseInfo":Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    :cond_34
    const-string v0, ""

    goto :goto_1e

    .line 73
    .restart local v0    # "googleApiKey":Ljava/lang/String;
    :cond_37
    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->mBundle:Landroid/os/Bundle;

    const-string v4, "PURCHASEINFO"

    .line 74
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    move-object v2, v3

    goto :goto_29
.end method


# virtual methods
.method public onContactService()V
    .registers 5

    .prologue
    .line 130
    invoke-super {p0}, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->onContactService()V

    .line 132
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->AUTOCHAT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->wrapperSessionRequestURL(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "withSessionURL":Ljava/lang/String;
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->onCreate(Landroid/app/Activity;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->initView(Landroid/app/Activity;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->purchase(Landroid/app/Activity;)V

    .line 51
    return-void
.end method
