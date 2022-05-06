.class public Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;
.super Lcom/games37/riversdk/core/facebook/social/view/BaseView;
.source "RewardCenterView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAcceptNum:I

.field private mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardCenterArea:Landroid/view/View;

.field private mRewardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardsView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acceptNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "rewardItemList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardItem;>;"
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/view/BaseView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mAcceptNum:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mDataList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mContext:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mAcceptNum:I

    .line 41
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->initDoubleList()V

    .line 44
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->initView()V

    .line 45
    return-void
.end method

.method private initDoubleList()V
    .registers 7

    .prologue
    .line 48
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 49
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;

    .line 50
    .local v0, "rewardItem":Lcom/games37/riversdk/core/facebook/social/model/RewardItem;
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mDataList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->getTargetCount()I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 52
    .end local v0    # "rewardItem":Lcom/games37/riversdk/core/facebook/social/model/RewardItem;
    :cond_26
    return-void
.end method

.method private initView()V
    .registers 6

    .prologue
    .line 55
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mContext:Landroid/content/Context;

    const-string v2, "i1_sdk_fb_social_rewards_center_layout"

    .line 56
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 55
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardCenterArea:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardCenterArea:Landroid/view/View;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mContext:Landroid/content/Context;

    const-string v2, "gw_rewards"

    .line 59
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardsView:Landroid/widget/GridView;

    .line 61
    new-instance v0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView$1;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardList:Ljava/util/List;

    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mContext:Landroid/content/Context;

    const-string v4, "i1_sdk_fb_social_reward_item_view"

    .line 62
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView$1;-><init>(Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;

    .line 103
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardsView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardsView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;

    .line 135
    .local v0, "item":Lcom/games37/riversdk/core/facebook/social/model/RewardItem;
    return-void
.end method

.method public setProgress()V
    .registers 5

    .prologue
    .line 124
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardCenterArea:Landroid/view/View;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mContext:Landroid/content/Context;

    const-string v3, "progressbar_dot"

    .line 125
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;

    .line 126
    .local v0, "progressBar":Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;
    iget v1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mAcceptNum:I

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->setCurrentInvitedNum(I)V

    .line 127
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->setAwardNumList(Ljava/util/List;)V

    .line 128
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/view/DotProgressBar;->invalidate()V

    .line 129
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "rewardItemList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardItem;>;"
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 114
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mRewardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 118
    :cond_17
    return-void
.end method
