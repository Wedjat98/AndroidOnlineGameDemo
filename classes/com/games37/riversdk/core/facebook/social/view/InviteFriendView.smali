.class public Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;
.super Lcom/games37/riversdk/core/facebook/social/view/BaseView;
.source "InviteFriendView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;
    }
.end annotation


# instance fields
.field private inviteFriendsToken:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

.field private mCheckTextView:Landroid/widget/CheckedTextView;

.field private mFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mGvInviteFriList:Landroid/widget/GridView;

.field private mInviteButton:Landroid/widget/Button;

.field private mListener:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;

.field private mTvFirendsEmpty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;",
            "Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/view/BaseView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->inviteFriendsToken:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    .line 55
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mListener:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;

    .line 58
    invoke-virtual {p0}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->initView()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->updateInvitableFriendsList(ZLjava/lang/String;)V

    return-void
.end method

.method private checkedAll()V
    .registers 6

    .prologue
    const/16 v1, 0x32

    const/4 v4, 0x1

    .line 178
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->inviteFriendsToken:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 180
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mCheckTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 181
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mCheckTextView:Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 182
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->inviteFriendsToken:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 183
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->clearAllSelectedState()V

    .line 194
    :goto_20
    return-void

    .line 186
    :cond_21
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mCheckTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 187
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_34

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 188
    .local v1, "maxCount":I
    :cond_34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    if-ge v0, v1, :cond_50

    .line 189
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->inviteFriendsToken:Ljava/util/List;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    invoke-virtual {v2, v0, v4}, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->setIsSelected(IZ)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 192
    :cond_50
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->notifyDataSetChanged()V

    goto :goto_20
.end method

.method private invite()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->inviteFriendsToken:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->inviteFriendsToken:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mListener:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;

    if-eqz v0, :cond_18

    .line 168
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mListener:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->inviteFriendsToken:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;->onInvite(Ljava/util/List;)V

    .line 172
    :goto_17
    return-void

    .line 170
    :cond_18
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    const-string v1, "i1_sdk_fb_social_toast_no_choose_friend"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_17
.end method

.method private updateEmptyTips()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 132
    :cond_f
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mGvInviteFriList:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mTvFirendsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_19
    return-void

    .line 135
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mGvInviteFriList:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mTvFirendsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19
.end method

.method private updateInvitableFriendsList(ZLjava/lang/String;)V
    .registers 4
    .param p1, "state"    # Z
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 147
    if-eqz p1, :cond_8

    .line 148
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->inviteFriendsToken:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_7
    return-void

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->inviteFriendsToken:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method


# virtual methods
.method public initView()V
    .registers 7

    .prologue
    .line 62
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    const-string v3, "i1_sdk_fb_social_invite_friends_layout"

    .line 63
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 62
    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "inviteFriendsArea":Landroid/view/View;
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    const-string v2, "gw_invitable_firends"

    .line 66
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mGvInviteFriList:Landroid/widget/GridView;

    .line 68
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    const-string v2, "tv_firends_empty"

    .line 69
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mTvFirendsEmpty:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    if-nez v1, :cond_45

    .line 72
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    const-string v5, "i1_sdk_fb_social_friends_item_view"

    .line 73
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$1;-><init>(Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    .line 114
    :cond_45
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mGvInviteFriList:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->updateEmptyTips()V

    .line 118
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    const-string v2, "btn_social_invite"

    .line 119
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 118
    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mInviteButton:Landroid/widget/Button;

    .line 121
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mActivity:Landroid/app/Activity;

    const-string v2, "ctv_select_all"

    .line 122
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 121
    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mCheckTextView:Landroid/widget/CheckedTextView;

    .line 123
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mInviteButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mCheckTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mInviteButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 159
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->invite()V

    .line 164
    :cond_b
    :goto_b
    return-void

    .line 160
    :cond_c
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mCheckTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->checkedAll()V

    goto :goto_b
.end method

.method public update(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "friendsToken":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    .local v2, "token":Ljava/lang/String;
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 205
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    .line 207
    .local v0, "item":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    .line 213
    .end local v0    # "item":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    .end local v2    # "token":Ljava/lang/String;
    :cond_30
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->inviteFriendsToken:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 214
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    invoke-virtual {v3}, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->clearAllSelectedState()V

    .line 215
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mCheckTextView:Landroid/widget/CheckedTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 217
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    invoke-virtual {v3}, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->notifyDataSetChanged()V

    .line 218
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 227
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mFriendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->updateEmptyTips()V

    .line 230
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->notifyDataSetChanged()V

    .line 232
    :cond_1a
    return-void
.end method
