.class public Lcom/games37/riversdk/core/facebook/social/view/PresentView;
.super Lcom/games37/riversdk/core/facebook/social/view/BaseView;
.source "PresentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

.field private mContext:Landroid/content/Context;

.field private mGvFriends:Landroid/widget/GridView;

.field private mInGameFriendsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;

.field private mMaxReceive:I

.field private mPbReceiveProgress:Landroid/widget/ProgressBar;

.field private mPresentBtn:Landroid/widget/Button;

.field private mReceiveBtn:Landroid/widget/Button;

.field private mResidueReceive:I

.field private mResidueSend:I

.field private mTvFirendsEmpty:Landroid/widget/TextView;

.field private mTvReceiveProgress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;",
            "Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "inGameFriendsList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/view/BaseView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mInGameFriendsList:Ljava/util/List;

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mMaxReceive:I

    .line 57
    iput v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueReceive:I

    .line 59
    iput v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueSend:I

    .line 65
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mInGameFriendsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mInGameFriendsList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mListener:Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;

    .line 69
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->initView()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/facebook/social/view/PresentView;ILandroid/widget/ImageView;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/view/PresentView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->setFriendViewFromState(ILandroid/widget/ImageView;)V

    return-void
.end method

.method private getFriendListFromStatus(I)Ljava/util/List;
    .registers 11
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, "fbids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mInGameFriendsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 297
    .local v4, "size":I
    iget v3, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueReceive:I

    .line 298
    .local v3, "limit_size":I
    if-ne p1, v7, :cond_13

    .line 299
    iget v3, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueSend:I

    .line 301
    :cond_13
    if-nez v4, :cond_16

    .line 321
    :cond_15
    return-object v1

    .line 304
    :cond_16
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v4, :cond_15

    .line 305
    iget-object v6, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mInGameFriendsList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    .line 307
    .local v0, "f":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v3, :cond_15

    .line 310
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getState()I

    move-result v5

    .line 311
    .local v5, "state":I
    if-ne p1, v7, :cond_3c

    .line 312
    const/4 v6, 0x3

    if-eq v6, v5, :cond_32

    if-ne v8, v5, :cond_39

    .line 313
    :cond_32
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getFbId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 316
    :cond_3c
    if-eq v7, v5, :cond_40

    if-ne v8, v5, :cond_39

    .line 317
    :cond_40
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getFbId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39
.end method

.method private initView()V
    .registers 7

    .prologue
    .line 73
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v3, "i1_sdk_fb_social_present_friends_layout"

    .line 74
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 73
    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "presentFriendsArea":Landroid/view/View;
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v2, "gv_sendable_firends"

    .line 77
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mGvFriends:Landroid/widget/GridView;

    .line 79
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v2, "tv_firends_empty"

    .line 80
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mTvFirendsEmpty:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    if-nez v1, :cond_45

    .line 82
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mInGameFriendsList:Ljava/util/List;

    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v5, "i1_sdk_fb_social_friends_item_view"

    .line 83
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/games37/riversdk/core/facebook/social/view/PresentView$1;-><init>(Lcom/games37/riversdk/core/facebook/social/view/PresentView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    .line 111
    :cond_45
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mGvFriends:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->updateEmptyTips()V

    .line 116
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v2, "btn_social_present_gift"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mPresentBtn:Landroid/widget/Button;

    .line 119
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v2, "btn_social_receive_gift"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mReceiveBtn:Landroid/widget/Button;

    .line 121
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mPresentBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mReceiveBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v2, "pb_receive_progress"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mPbReceiveProgress:Landroid/widget/ProgressBar;

    .line 126
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v2, "tv_receive_progress"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mTvReceiveProgress:Landroid/widget/TextView;

    .line 129
    iget v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueReceive:I

    iget v2, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueSend:I

    invoke-virtual {p0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->setProgress(II)V

    .line 130
    return-void
.end method

.method private judgeStatus(I)Z
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "status":Z
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueReceive:I

    .line 235
    .local v0, "can_used":I
    const/4 v1, 0x1

    .line 237
    .local v1, "friendStatus":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_a

    .line 238
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueSend:I

    .line 239
    const/4 v1, 0x3

    .line 242
    :cond_a
    if-nez v0, :cond_e

    .line 243
    const/4 v2, 0x0

    .line 247
    :goto_d
    return v2

    .line 245
    :cond_e
    const/4 v2, 0x1

    goto :goto_d
.end method

.method private present()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 278
    invoke-direct {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->judgeStatus(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 279
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mListener:Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;

    if-eqz v0, :cond_14

    .line 280
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mListener:Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;

    invoke-direct {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->getFriendListFromStatus(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;->onPresent(Ljava/util/List;)V

    .line 285
    :cond_14
    :goto_14
    return-void

    .line 283
    :cond_15
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v1, "i1_sdk_fb_social_toast_no_send_gift"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private receive()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-direct {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->judgeStatus(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 266
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mListener:Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;

    if-eqz v0, :cond_14

    .line 267
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mListener:Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;

    invoke-direct {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->getFriendListFromStatus(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;->onReceive(Ljava/util/List;)V

    .line 272
    :cond_14
    :goto_14
    return-void

    .line 270
    :cond_15
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v1, "i1_sdk_fb_social_toast_no_receive_gift"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private setButtonStatus(ZLandroid/widget/Button;)V
    .registers 5
    .param p1, "canUsed"    # Z
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    .line 213
    if-nez p2, :cond_3

    .line 224
    :goto_2
    return-void

    .line 216
    :cond_3
    if-eqz p1, :cond_11

    .line 217
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v1, "i1_sdk_fb_social_btn"

    .line 218
    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 217
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 221
    :cond_11
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v1, "i1_sdk_fb_social_btn_disable"

    .line 222
    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 221
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private setFriendViewFromState(ILandroid/widget/ImageView;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 168
    if-nez p2, :cond_3

    .line 187
    :goto_2
    return-void

    .line 171
    :cond_3
    packed-switch p1, :pswitch_data_2a

    .line 183
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v1, "i1_sdk_fb_social_gift_invaild"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 173
    :pswitch_12
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v1, "i1_sdk_fb_social_gift_sendable"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 178
    :pswitch_1e
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mContext:Landroid/content/Context;

    const-string v1, "i1_sdk_fb_social_gift_receivable"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 171
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_12
    .end packed-switch
.end method

.method private updateEmptyTips()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mInGameFriendsList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mInGameFriendsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 138
    :cond_f
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mGvFriends:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mTvFirendsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_19
    return-void

    .line 141
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mGvFriends:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mTvFirendsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mReceiveBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 254
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->receive()V

    .line 259
    :cond_b
    :goto_b
    return-void

    .line 255
    :cond_c
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mPresentBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 257
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->present()V

    goto :goto_b
.end method

.method public setProgress(II)V
    .registers 7
    .param p1, "residue_receive"    # I
    .param p2, "residue_send"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueReceive:I

    .line 194
    iput p2, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueSend:I

    .line 195
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mPbReceiveProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mTvReceiveProgress:Landroid/widget/TextView;

    if-nez v1, :cond_d

    .line 205
    :cond_c
    :goto_c
    return-void

    .line 199
    :cond_d
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mPbReceiveProgress:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mMaxReceive:I

    iget v3, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueReceive:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mMaxReceive:I

    iget v3, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mResidueReceive:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mMaxReceive:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "progressText":Ljava/lang/String;
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mTvReceiveProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->judgeStatus(I)Z

    move-result v1

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mReceiveBtn:Landroid/widget/Button;

    invoke-direct {p0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->setButtonStatus(ZLandroid/widget/Button;)V

    .line 204
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->judgeStatus(I)Z

    move-result v1

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mPresentBtn:Landroid/widget/Button;

    invoke-direct {p0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->setButtonStatus(ZLandroid/widget/Button;)V

    goto :goto_c
.end method

.method public updateData(IILjava/util/List;)V
    .registers 5
    .param p1, "residueReceive"    # I
    .param p2, "residueSend"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p3, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->setProgress(II)V

    .line 153
    if-eqz p3, :cond_1d

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 154
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mInGameFriendsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mInGameFriendsList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->updateEmptyTips()V

    .line 157
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->notifyDataSetChanged()V

    .line 159
    :cond_1d
    return-void
.end method
