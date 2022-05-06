.class Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;
.super Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;
.source "PresentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/view/PresentView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/view/PresentView;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/view/PresentView;Landroid/content/Context;Ljava/util/List;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/view/PresentView;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "itemLayoutId"    # I

    .prologue
    .line 83
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/PresentView;

    invoke-direct {p0, p2, p3, p4}, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Lcom/games37/riversdk/core/facebook/social/model/Friend;I)V
    .registers 11
    .param p1, "helper"    # Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;
    .param p2, "item"    # Lcom/games37/riversdk/core/facebook/social/model/Friend;
    .param p3, "position"    # I

    .prologue
    .line 87
    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;->mContext:Landroid/content/Context;

    const-string v6, "tv_friends_name"

    .line 88
    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 87
    invoke-virtual {p1, v5}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 89
    .local v3, "friendName":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;->mContext:Landroid/content/Context;

    const-string v6, "iv_friends_avtar"

    .line 93
    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 92
    invoke-virtual {p1, v5}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 94
    .local v2, "friendAvtar":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    move-result-object v5

    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getPicture()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/view/View;)V

    .line 97
    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;->mContext:Landroid/content/Context;

    const-string v6, "cb_friends_selector"

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, "checkId":I
    invoke-virtual {p1, v1}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 99
    .local v0, "checkBox":Landroid/widget/CheckBox;
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;->mContext:Landroid/content/Context;

    const-string v6, "iv_friends_state"

    .line 103
    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 102
    invoke-virtual {p1, v5}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 104
    .local v4, "stateView":Landroid/widget/ImageView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/PresentView;

    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getState()I

    move-result v6

    # invokes: Lcom/games37/riversdk/core/facebook/social/view/PresentView;->setFriendViewFromState(ILandroid/widget/ImageView;)V
    invoke-static {v5, v6, v4}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->access$000(Lcom/games37/riversdk/core/facebook/social/view/PresentView;ILandroid/widget/ImageView;)V

    .line 107
    return-void
.end method

.method public bridge synthetic convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 83
    check-cast p2, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    invoke-virtual {p0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;->convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Lcom/games37/riversdk/core/facebook/social/model/Friend;I)V

    return-void
.end method
