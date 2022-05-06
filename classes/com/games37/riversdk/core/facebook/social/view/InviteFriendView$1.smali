.class Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;
.super Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;
.source "InviteFriendView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;Landroid/content/Context;Ljava/util/List;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "itemLayoutId"    # I

    .prologue
    .line 73
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    invoke-direct {p0, p2, p3, p4}, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Lcom/games37/riversdk/core/facebook/social/model/Friend;I)V
    .registers 10
    .param p1, "holder"    # Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;
    .param p2, "item"    # Lcom/games37/riversdk/core/facebook/social/model/Friend;
    .param p3, "position"    # I

    .prologue
    .line 78
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    .line 79
    # getter for: Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->access$000(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "tv_friends_name"

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 78
    invoke-virtual {p1, v4}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, "friendName":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    .line 82
    # getter for: Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->access$000(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "iv_friends_avtar"

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 81
    invoke-virtual {p1, v4}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, "friendAvtar":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->access$000(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    move-result-object v4

    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getPicture()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/view/View;)V

    .line 86
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    # getter for: Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->access$000(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "cb_friends_selector"

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 89
    .local v3, "inviteCheckId":I
    invoke-virtual {p1, v3}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 91
    .local v2, "inviteCheck":Landroid/widget/CheckBox;
    invoke-virtual {p0, p3}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->getIsSelected(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    invoke-virtual {v2, p2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 93
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 95
    new-instance v4, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;

    invoke-direct {v4, p0, v3, v2}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1$1;-><init>(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;ILandroid/widget/CheckBox;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public bridge synthetic convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 73
    check-cast p2, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    invoke-virtual {p0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;->convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Lcom/games37/riversdk/core/facebook/social/model/Friend;I)V

    return-void
.end method
