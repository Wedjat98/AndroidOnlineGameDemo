.class Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView$1;
.super Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;
.source "RewardCenterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter",
        "<",
        "Lcom/games37/riversdk/core/facebook/social/model/RewardItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;Landroid/content/Context;Ljava/util/List;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "itemLayoutId"    # I

    .prologue
    .line 62
    .local p3, "mDatas":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardItem;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;

    invoke-direct {p0, p2, p3, p4}, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Lcom/games37/riversdk/core/facebook/social/model/RewardItem;I)V
    .registers 15
    .param p1, "helper"    # Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;
    .param p2, "item"    # Lcom/games37/riversdk/core/facebook/social/model/RewardItem;
    .param p3, "position"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 66
    iget-object v6, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView$1;->mContext:Landroid/content/Context;

    const-string v7, "tv_reward_content"

    .line 67
    invoke-static {v6, v7}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 66
    invoke-virtual {p1, v6}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, "rewardContent":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView$1;->mContext:Landroid/content/Context;

    const-string v7, "tv_target_content"

    .line 69
    invoke-static {v6, v7}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 68
    invoke-virtual {p1, v6}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 71
    .local v5, "targetContent":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView$1;->mContext:Landroid/content/Context;

    const-string v7, "iv_reward_checked"

    .line 72
    invoke-static {v6, v7}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 71
    invoke-virtual {p1, v6}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 74
    .local v2, "rewardChecked":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView$1;->mContext:Landroid/content/Context;

    const-string v7, "iv_reward_got"

    .line 75
    invoke-static {v6, v7}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 74
    invoke-virtual {p1, v6}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 77
    .local v4, "rewardGot":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->getRewardText()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "reward":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;->getRewardState()I

    move-result v6

    packed-switch v6, :pswitch_data_76

    .line 101
    :goto_60
    return-void

    .line 85
    :pswitch_61
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_60

    .line 90
    :pswitch_68
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_60

    .line 95
    :pswitch_6f
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_60

    .line 83
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_61
        :pswitch_68
        :pswitch_6f
    .end packed-switch
.end method

.method public bridge synthetic convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 62
    check-cast p2, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView$1;->convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Lcom/games37/riversdk/core/facebook/social/model/RewardItem;I)V

    return-void
.end method
