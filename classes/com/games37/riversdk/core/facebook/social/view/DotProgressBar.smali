.class public Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;
.super Landroid/widget/RelativeLayout;
.source "DotProgressBar.java"


# instance fields
.field private currentView:Landroid/widget/ImageView;

.field private loadingView:Landroid/widget/ImageView;

.field private loadingViewBg:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:D

.field private mNumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private progressBarContainer:Landroid/widget/RelativeLayout;

.field private reachText:Landroid/widget/TextView;

.field private reachView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mContext:Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->setWillNotDraw(Z)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mContext:Landroid/content/Context;

    const-string v2, "i1_sdk_fb_social_dot_progress_view"

    .line 40
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->initViewElement(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mNumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->loadingViewBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->reachView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->currentView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->reachText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)D
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mCurrentCount:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->loadingView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->progressBarContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private initViewElement(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v0, "iv_loading"

    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->loadingView:Landroid/widget/ImageView;

    .line 46
    const-string v0, "iv_loading_bg"

    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->loadingViewBg:Landroid/widget/ImageView;

    .line 47
    const-string v0, "iv_current"

    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->currentView:Landroid/widget/ImageView;

    .line 48
    const-string v0, "iv_hover"

    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->reachView:Landroid/widget/ImageView;

    .line 49
    const-string v0, "tv_reach_text"

    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->reachText:Landroid/widget/TextView;

    .line 50
    const-string v0, "rl_container"

    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->progressBarContainer:Landroid/widget/RelativeLayout;

    .line 51
    return-void
.end method

.method private updateProgressBarView()V
    .registers 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 64
    .local v0, "vtb":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;

    invoke-direct {v1, p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar$1;-><init>(Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 128
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 133
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->loadingViewBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 134
    .local v0, "bgViewWith":I
    return-void
.end method

.method public setAwardNumList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "awardNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mNumList:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->updateProgressBarView()V

    .line 60
    return-void
.end method

.method public setCurrentInvitedNum(I)V
    .registers 4
    .param p1, "num"    # I

    .prologue
    .line 54
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->mCurrentCount:D

    .line 55
    return-void
.end method
