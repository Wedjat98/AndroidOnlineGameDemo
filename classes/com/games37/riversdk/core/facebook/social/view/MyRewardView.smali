.class public Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;
.super Lcom/games37/riversdk/core/facebook/social/view/BaseView;
.source "MyRewardView.java"


# instance fields
.field private mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRewardRecordItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardsView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "rewardRecordItemList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;>;"
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/view/BaseView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardRecordItemList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardRecordItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardRecordItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual {p0}, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->initView()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardRecordItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public initView()V
    .registers 7

    .prologue
    .line 46
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mContext:Landroid/content/Context;

    const-string v3, "i1_sdk_fb_social_rewards_myself_layout"

    .line 47
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 46
    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "area":Landroid/view/View;
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mContext:Landroid/content/Context;

    const-string v2, "lv_my_rewards"

    .line 49
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardsView:Landroid/widget/ListView;

    .line 50
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$1;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardRecordItemList:Ljava/util/List;

    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mContext:Landroid/content/Context;

    const-string v5, "i1_sdk_fb_social_myreward_item_view"

    .line 51
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$1;-><init>(Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;

    .line 75
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardsView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardsView:Landroid/widget/ListView;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$2;

    invoke-direct {v2, p0}, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$2;-><init>(Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "rewardRecordItems":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardRecordItemList:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 95
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardRecordItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mRewardRecordItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 99
    :cond_13
    return-void
.end method
