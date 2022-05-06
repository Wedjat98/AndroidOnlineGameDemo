.class Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$1;
.super Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;
.source "MyRewardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter",
        "<",
        "Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;Landroid/content/Context;Ljava/util/List;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "itemLayoutId"    # I

    .prologue
    .line 51
    .local p3, "mDatas":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    invoke-direct {p0, p2, p3, p4}, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;I)V
    .registers 10
    .param p1, "helper"    # Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;
    .param p2, "item"    # Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;
    .param p3, "position"    # I

    .prologue
    .line 55
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$1;->mContext:Landroid/content/Context;

    const-string v5, "tv_time"

    .line 56
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 55
    invoke-virtual {p1, v4}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, "awardTime":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$1;->mContext:Landroid/content/Context;

    const-string v5, "tv_name"

    .line 61
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 60
    invoke-virtual {p1, v4}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, "awardName":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$1;->mContext:Landroid/content/Context;

    const-string v5, "tv_gottype"

    .line 66
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 65
    invoke-virtual {p1, v4}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, "awardGotType":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->getRewardTypeDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$1;->mContext:Landroid/content/Context;

    const-string v5, "tv_status"

    .line 71
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 70
    invoke-virtual {p1, v4}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    .local v2, "awardStatus":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;->getStateDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public bridge synthetic convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 51
    check-cast p2, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView$1;->convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;I)V

    return-void
.end method
