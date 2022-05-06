.class public Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
.super Lcom/games37/riversdk/core/activity/BaseActivity;
.source "FacebookSocialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView$OnItemClickCallback;


# static fields
.field public static final INVITE_FRIEND:Ljava/lang/String; = "INVITE_FRIEND"

.field public static final MY_REWARD:Ljava/lang/String; = "MY_REWARD"

.field public static final PARAMS_BUNDLE:Ljava/lang/String; = "PARAMS_BUNDLE"

.field public static final PRESENT_GIFT:Ljava/lang/String; = "PRESENT_GIFT"

.field public static final REQUEST_BUNDLE:Ljava/lang/String; = "REQUEST_BUNDLE"

.field public static final REWARD_CENTER:Ljava/lang/String; = "REWARD_CENTER"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCanReceive:I

.field private mDifferenceTime:J

.field private mExistFunstion:I

.field private mFBContent:Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

.field private mFlContentArea:Landroid/widget/FrameLayout;

.field private mInviteFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mInviteView:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

.field private mItemViewParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;",
            ">;"
        }
    .end annotation
.end field

.field private mIvClose:Landroid/widget/ImageView;

.field private mIvFBLike:Landroid/widget/ImageView;

.field private mIvFBShare:Landroid/widget/ImageView;

.field private mIvLineShare:Landroid/widget/ImageView;

.field private mIvQuestion:Landroid/widget/ImageView;

.field private mIvUserAvtar:Landroid/widget/ImageView;

.field private mLineContent:Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

.field private mLineShareStatus:Z

.field private mLvSocialItem:Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;

.field private mMyRewardView:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

.field private mParamsBundle:Landroid/os/Bundle;

.field private mPresentFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mPresentFriendMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mPresentView:Lcom/games37/riversdk/core/facebook/social/view/PresentView;

.field private mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

.field private mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

.field private mRewardCenterView:Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;

.field private mRewardItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardItem;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

.field private mTvInviteInfo:Landroid/widget/TextView;

.field private mTvUsername:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;-><init>()V

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mDifferenceTime:J

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLineShareStatus:Z

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteFriendList:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardItemList:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardRecordItemList:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->handleInitCallback()V

    return-void
.end method

.method static synthetic access$1000(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteFriendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteView:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->initRewardCenter(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mMyRewardView:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestReceiveGift(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestPresentGift(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestFriendStatus(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->handleFriendStatus(Landroid/app/Activity;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)J
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mDifferenceTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerShared(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;J)J
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mDifferenceTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->updateShareImageView(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2202(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLineShareStatus:Z

    return p1
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->handleServerInitCallback(Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;)V

    return-void
.end method

.method static synthetic access$402(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Lcom/games37/riversdk/core/facebook/social/model/ShareContent;)Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFBContent:Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    return-object p1
.end method

.method static synthetic access$502(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Lcom/games37/riversdk/core/facebook/social/model/ShareContent;)Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLineContent:Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mCanReceive:I

    return v0
.end method

.method static synthetic access$602(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mCanReceive:I

    return p1
.end method

.method static synthetic access$700(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mExistFunstion:I

    return v0
.end method

.method static synthetic access$702(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mExistFunstion:I

    return p1
.end method

.method static synthetic access$800(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;II)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->showPresentItem(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestFBInvite(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method private fbLike()V
    .registers 2

    .prologue
    .line 985
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerLiked(Landroid/app/Activity;)V

    .line 987
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getFansPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil;->openWebView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 988
    return-void
.end method

.method private fbShare(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getFbShareStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 1021
    const-string v0, "0"

    const-string v1, "FACEBOOK"

    invoke-direct {p0, p1, v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerGetReward(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :goto_10
    return-void

    .line 1024
    :cond_11
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFBContent:Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$17;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$17;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->fbShare(Landroid/app/Activity;Lcom/games37/riversdk/core/facebook/social/model/ShareContent;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_10
.end method

.method private handleFriendStatus(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 818
    :try_start_0
    const-string v8, "can_receive"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 819
    .local v6, "residueReceive":I
    const-string v8, "can_send"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 820
    .local v7, "residueSend":I
    const-string v8, "data"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 821
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v3, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    if-eqz v0, :cond_43

    .line 823
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_43

    .line 824
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 825
    .local v5, "o":Lorg/json/JSONObject;
    new-instance v2, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    invoke-direct {v2}, Lcom/games37/riversdk/core/facebook/social/model/Friend;-><init>()V

    .line 827
    .local v2, "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    const-string v8, "SENDER"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setFbId(Ljava/lang/String;)V

    .line 829
    const-string v8, "COLOR"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setState(I)V

    .line 830
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 833
    .end local v2    # "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    .end local v4    # "i":I
    .end local v5    # "o":Lorg/json/JSONObject;
    :cond_43
    invoke-direct {p0, p1, v3}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mergeList(Landroid/app/Activity;Ljava/util/List;)V

    .line 834
    const/4 v3, 0x0

    .line 836
    iget-object v8, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentView:Lcom/games37/riversdk/core/facebook/social/view/PresentView;

    iget-object v9, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;

    invoke-virtual {v8, v6, v7, v9}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->updateData(IILjava/util/List;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 840
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "friends":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    .end local v6    # "residueReceive":I
    .end local v7    # "residueSend":I
    :goto_4e
    return-void

    .line 837
    :catch_4f
    move-exception v1

    .line 838
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method

.method private handleInitCallback()V
    .registers 5

    .prologue
    .line 345
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    const-string v2, "picture"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "userAvtarUrl":Ljava/lang/String;
    invoke-static {p0}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/games37/riversdk/core/util/imageloader/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvUserAvtar:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/view/View;)V

    .line 348
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mTvUsername:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerInit(Landroid/app/Activity;)V

    .line 352
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerGetShareContent(Landroid/app/Activity;)V

    .line 354
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestRedPointStatus(Landroid/app/Activity;)V

    .line 355
    return-void
.end method

.method private handleServerInitCallback(Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;)V
    .registers 4
    .param p1, "socialInfo"    # Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    .line 389
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getAcceptNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->setInviteText(I)V

    .line 391
    const-string v0, "FACEBOOK"

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getFbShareStatus()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->updateShareImageView(Ljava/lang/String;I)V

    .line 392
    const-string v0, "LINE"

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getLineShareStatus()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->updateShareImageView(Ljava/lang/String;I)V

    .line 394
    const-string v0, "INVITE_FRIEND"

    invoke-direct {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->showContentView(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "REQUEST_BUNDLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 282
    .local v0, "requestBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PARAMS_BUNDLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    .line 283
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    invoke-direct {v1, v0}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    .line 285
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerGetTimestamp(Landroid/app/Activity;)V

    .line 287
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    invoke-direct {v1, v0}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    .line 288
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$1;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, p0, v2}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->init(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 307
    return-void
.end method

.method private initInviteView(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteView:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    if-nez v0, :cond_19

    .line 532
    new-instance v0, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteFriendList:Ljava/util/List;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$6;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView$OnInviteListener;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteView:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    .line 540
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteView:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    const-string v1, "REWARD_CENTER"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->setTag(Ljava/lang/Object;)V

    .line 543
    :cond_19
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_29

    .line 544
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 545
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteView:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 548
    :cond_29
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->loadInviteFriend(Landroid/app/Activity;)V

    .line 549
    return-void
.end method

.method private initMyRewardView(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mMyRewardView:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    if-nez v0, :cond_14

    .line 677
    new-instance v0, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardRecordItemList:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mMyRewardView:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    .line 678
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mMyRewardView:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    const-string v1, "MY_REWARD"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;->setTag(Ljava/lang/Object;)V

    .line 681
    :cond_14
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_24

    .line 682
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 683
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mMyRewardView:Lcom/games37/riversdk/core/facebook/social/view/MyRewardView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 686
    :cond_24
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerRewardRecord(Landroid/app/Activity;)V

    .line 687
    return-void
.end method

.method private initPresentView(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentView:Lcom/games37/riversdk/core/facebook/social/view/PresentView;

    if-nez v0, :cond_19

    .line 722
    new-instance v0, Lcom/games37/riversdk/core/facebook/social/view/PresentView;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$11;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$11;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/games37/riversdk/core/facebook/social/view/PresentView$OnPresentListener;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentView:Lcom/games37/riversdk/core/facebook/social/view/PresentView;

    .line 736
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentView:Lcom/games37/riversdk/core/facebook/social/view/PresentView;

    const-string v1, "PRESENT_GIFT"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/facebook/social/view/PresentView;->setTag(Ljava/lang/Object;)V

    .line 741
    :cond_19
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_29

    .line 742
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 743
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentView:Lcom/games37/riversdk/core/facebook/social/view/PresentView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 747
    :cond_29
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->loadPresentFriends(Landroid/app/Activity;)V

    .line 748
    return-void
.end method

.method private initRewardCenter(Landroid/app/Activity;Ljava/util/List;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p2, "rewardItems":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardItem;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 656
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 658
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardCenterView:Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;

    if-nez v0, :cond_24

    .line 659
    new-instance v0, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getAcceptNum()I

    move-result v1

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardItemList:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardCenterView:Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;

    .line 660
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardCenterView:Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;

    const-string v1, "REWARD_CENTER"

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->setTag(Ljava/lang/Object;)V

    .line 663
    :cond_24
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_34

    .line 664
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 665
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardCenterView:Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 667
    :cond_34
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRewardCenterView:Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/view/RewardCenterView;->setProgress()V

    .line 668
    return-void
.end method

.method private initSocialListView()V
    .registers 7

    .prologue
    .line 247
    new-instance v0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    const-string v3, "INVITE_FRIEND"

    const-string v4, "i1_sdk_fb_social_friends_pic"

    const-string v5, "i1_sdk_fb_social_invite_friend"

    invoke-direct {v0, v3, v4, v5}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .local v0, "inviteFriParams":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    new-instance v2, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    const-string v3, "REWARD_CENTER"

    const-string v4, "i1_sdk_fb_social_awards_pic"

    const-string v5, "i1_sdk_fb_social_reward_center"

    invoke-direct {v2, v3, v4, v5}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v2, "rewardCenterParams":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    const-string v3, "MY_REWARD"

    const-string v4, "i1_sdk_fb_social_myself_pic"

    const-string v5, "i1_sdk_fb_social_reward"

    invoke-direct {v1, v3, v4, v5}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .local v1, "myRewardParams":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mItemViewParams:Ljava/util/List;

    .line 262
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mItemViewParams:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mItemViewParams:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mItemViewParams:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLvSocialItem:Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;

    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mItemViewParams:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->init(Ljava/util/List;)V

    .line 268
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLvSocialItem:Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;

    invoke-virtual {v3, p0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->setOnItemClickCallback(Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView$OnItemClickCallback;)V

    .line 270
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLvSocialItem:Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;

    const-string v4, "INVITE_FRIEND"

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->selectItem(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method private initView()V
    .registers 2

    .prologue
    .line 212
    const-string v0, "iv_close"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvClose:Landroid/widget/ImageView;

    .line 214
    const-string v0, "iv_question"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvQuestion:Landroid/widget/ImageView;

    .line 216
    const-string v0, "iv_user_avtar"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvUserAvtar:Landroid/widget/ImageView;

    .line 218
    const-string v0, "iv_fb_like"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvFBLike:Landroid/widget/ImageView;

    .line 220
    const-string v0, "tv_username"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mTvUsername:Landroid/widget/TextView;

    .line 222
    const-string v0, "tv_invited_info"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mTvInviteInfo:Landroid/widget/TextView;

    .line 224
    const-string v0, "lv_social_item"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLvSocialItem:Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;

    .line 226
    const-string v0, "iv_facebook_share"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvFBShare:Landroid/widget/ImageView;

    .line 228
    const-string v0, "iv_line_share"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvLineShare:Landroid/widget/ImageView;

    .line 230
    const-string v0, "fl_content_area"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFlContentArea:Landroid/widget/FrameLayout;

    .line 232
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvQuestion:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvFBLike:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvFBShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvLineShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->initSocialListView()V

    .line 240
    return-void
.end method

.method private lineShare(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getLineShareStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 1080
    const-string v0, "0"

    const-string v1, "LINE"

    invoke-direct {p0, p1, v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerGetReward(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :goto_10
    return-void

    .line 1083
    :cond_11
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLineContent:Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$19;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$19;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->lineShare(Landroid/app/Activity;Lcom/games37/riversdk/core/facebook/social/model/ShareContent;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_10
.end method

.method private loadInviteFriend(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    new-instance v1, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->loadInviteFriend(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 578
    return-void
.end method

.method private loadPresentFriends(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    new-instance v1, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;

    invoke-direct {v1, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->loadSendableFriends(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 781
    return-void
.end method

.method private mergeList(Landroid/app/Activity;Ljava/util/List;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 849
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_8c

    .line 850
    const/4 v5, 0x0

    .line 851
    .local v5, "isExists":Z
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    .line 852
    .local v2, "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    invoke-virtual {v2}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getFbId()Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "fbid":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_13
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3c

    .line 854
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    .line 855
    .local v0, "f":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getFbId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 856
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setName(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getPicture()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setPicture(Ljava/lang/String;)V

    .line 858
    const/4 v5, 0x1

    .line 862
    .end local v0    # "f":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    :cond_3c
    if-nez v5, :cond_5c

    .line 863
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 864
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    .line 865
    .restart local v0    # "f":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setName(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getPicture()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setPicture(Ljava/lang/String;)V

    .line 849
    .end local v0    # "f":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    :cond_5c
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 853
    .restart local v0    # "f":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    :cond_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 868
    .end local v0    # "f":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    :cond_62
    const-string v7, "i1_sdk_fb_social_unknown_friend"

    .line 869
    invoke-static {p1, v7}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 868
    invoke-virtual {p1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setName(Ljava/lang/String;)V

    .line 870
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drawable://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "i1_sdk_fb_social_default_avatar"

    .line 871
    invoke-static {p1, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 872
    .local v4, "imageUri":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setPicture(Ljava/lang/String;)V

    goto :goto_5c

    .line 876
    .end local v1    # "fbid":Ljava/lang/String;
    .end local v2    # "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    .end local v4    # "imageUri":Ljava/lang/String;
    .end local v5    # "isExists":Z
    .end local v6    # "j":I
    :cond_8c
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 877
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 878
    return-void
.end method

.method private requestFBInvite(Landroid/app/Activity;Ljava/util/List;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p2, "inviteFriendsToken":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 589
    :cond_8
    const-string v0, "i1_sdk_fb_social_toast_no_choose_friend"

    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    .line 619
    :goto_d
    return-void

    .line 592
    :cond_e
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    .line 594
    invoke-virtual {v1}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getInviteTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    .line 596
    invoke-virtual {v1}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getInviteMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v6, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;

    invoke-direct {v6, p0, p2, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Ljava/util/List;Landroid/app/Activity;)V

    move-object v1, p1

    move-object v4, p2

    .line 592
    invoke-virtual/range {v0 .. v6}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->requestFacebookInviteFriends(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_d
.end method

.method private requestFriendStatus(Landroid/app/Activity;Ljava/util/List;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 790
    .local p2, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$13;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$13;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestFriendsStatus(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 808
    return-void
.end method

.method private requestPresentGift(Landroid/app/Activity;Ljava/util/List;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p2, "fbids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerPresentGift(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 932
    return-void
.end method

.method private requestReceiveGift(Landroid/app/Activity;Ljava/util/List;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p2, "tokenIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$14;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$14;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerReceiveGift(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 905
    return-void
.end method

.method private requestRedPointStatus(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestRedPointStatus(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 471
    return-void
.end method

.method private requestServerGetReward(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rewardId"    # Ljava/lang/String;
    .param p3, "shareType"    # Ljava/lang/String;

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$20;

    invoke-direct {v5, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$20;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerGetReward(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 1132
    return-void
.end method

.method private requestServerGetShareContent(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$4;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerShareContent(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 439
    return-void
.end method

.method private requestServerGetTimestamp(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$2;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getServerTimestamp(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 338
    return-void
.end method

.method private requestServerInit(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$3;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerSocialInitial(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 381
    return-void
.end method

.method private requestServerLiked(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$16;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$16;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerLiked(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 1011
    return-void
.end method

.method private requestServerRewardList(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$9;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerRewardList(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 646
    return-void
.end method

.method private requestServerRewardRecord(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$10;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerRewardRecord(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 713
    return-void
.end method

.method private requestServerShared(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "postId"    # Ljava/lang/String;
    .param p3, "shareType"    # Ljava/lang/String;

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$18;

    invoke-direct {v5, p0, p1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$18;-><init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerShared(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 1070
    return-void
.end method

.method private setInviteText(I)V
    .registers 10
    .param p1, "acceptNum"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "i1_sdk_fb_social_invite_string"

    .line 404
    invoke-static {p0, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 403
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "invitedFormat":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "invitedText":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "acceptNumStr":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 408
    .local v3, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x10000

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v5, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    const/16 v7, 0x22

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 410
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mTvInviteInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    return-void
.end method

.method private showContentView(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 510
    const-string v0, "INVITE_FRIEND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 512
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->initInviteView(Landroid/app/Activity;)V

    .line 523
    :cond_b
    :goto_b
    return-void

    .line 513
    :cond_c
    const-string v0, "REWARD_CENTER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 515
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerRewardList(Landroid/app/Activity;)V

    goto :goto_b

    .line 516
    :cond_18
    const-string v0, "MY_REWARD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 518
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->initMyRewardView(Landroid/app/Activity;)V

    goto :goto_b

    .line 519
    :cond_24
    const-string v0, "PRESENT_GIFT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 521
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->initPresentView(Landroid/app/Activity;)V

    goto :goto_b
.end method

.method private showPresentItem(II)V
    .registers 9
    .param p1, "existFunction"    # I
    .param p2, "canReceive"    # I

    .prologue
    const/4 v5, 0x1

    .line 481
    if-ne p1, v5, :cond_1f

    .line 482
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    const-string v2, "PRESENT_GIFT"

    const-string v3, "i1_sdk_fb_social_present_pic"

    const-string v4, "i1_sdk_fb_social_present_gift"

    invoke-direct {v1, v2, v3, v4}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .local v1, "presentGiftParams":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    if-ne p2, v5, :cond_13

    .line 489
    invoke-virtual {v1, v5}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->setShowRedpoint(Z)V

    .line 491
    :cond_13
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mItemViewParams:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLvSocialItem:Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;

    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mItemViewParams:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->update(Ljava/util/List;)V

    .line 497
    .end local v1    # "presentGiftParams":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    :cond_1f
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v2

    sget-object v3, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->FB_SOCIAL:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;)Lcom/games37/riversdk/core/callback/BaseCallback;

    move-result-object v0

    .line 498
    .local v0, "callback":Lcom/games37/riversdk/core/callback/BaseCallback;
    if-eqz v0, :cond_2f

    .line 500
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/games37/riversdk/core/callback/BaseCallback;->onResult(ILjava/util/Map;)V

    .line 502
    :cond_2f
    return-void
.end method

.method private updateShareImageView(Ljava/lang/String;I)V
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1141
    const/4 v1, 0x0

    .line 1142
    .local v1, "shareView":Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 1143
    .local v0, "resourceName":Ljava/lang/String;
    const-string v2, "LINE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1144
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvLineShare:Landroid/widget/ImageView;

    .line 1145
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v2, p2}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->setLineShareStatus(I)V

    .line 1146
    if-ne p2, v4, :cond_26

    .line 1147
    const-string v0, "i1_sdk_fb_social_line_get_btn"

    .line 1164
    :cond_18
    :goto_18
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1165
    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1167
    :cond_25
    return-void

    .line 1148
    :cond_26
    if-ne p2, v5, :cond_18

    .line 1150
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1151
    const-string v0, "i1_sdk_fb_social_line_got_btn"

    goto :goto_18

    .line 1153
    :cond_2e
    const-string v2, "FACEBOOK"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1154
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvFBShare:Landroid/widget/ImageView;

    .line 1155
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v2, p2}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->setFBShareStatus(I)V

    .line 1156
    if-ne p2, v4, :cond_42

    .line 1157
    const-string v0, "i1_sdk_fb_social_facebook_get_btn"

    goto :goto_18

    .line 1158
    :cond_42
    if-ne p2, v5, :cond_18

    .line 1160
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1161
    const-string v0, "i1_sdk_fb_social_facebook_got_btn"

    goto :goto_18
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 946
    invoke-super {p0, p1, p2, p3}, Lcom/games37/riversdk/core/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 947
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    if-eqz v0, :cond_c

    .line 948
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 950
    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 954
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 956
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    if-eqz v0, :cond_11

    .line 957
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->closeActivity(Landroid/app/Activity;)V

    .line 974
    :cond_11
    :goto_11
    return-void

    .line 959
    :cond_12
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvQuestion:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 961
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    if-eqz v0, :cond_11

    .line 962
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresenter:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getNoticeTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mSocialInfo:Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;->getNoticeMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->openFaq(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 964
    :cond_34
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvFBLike:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 966
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->fbLike()V

    goto :goto_11

    .line 967
    :cond_40
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvFBShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 969
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->fbShare(Landroid/app/Activity;)V

    goto :goto_11

    .line 970
    :cond_4c
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mIvLineShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 972
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->lineShare(Landroid/app/Activity;)V

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    const-string v0, "i1_sdk_fb_social_main_activity"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->setContentView(I)V

    .line 206
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->initView()V

    .line 207
    invoke-direct {p0, p0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->init(Landroid/app/Activity;)V

    .line 208
    return-void
.end method

.method public onItemClick(ILjava/lang/String;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 978
    invoke-direct {p0, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->showContentView(Ljava/lang/String;)V

    .line 979
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 936
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onResume()V

    .line 938
    iget-boolean v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLineShareStatus:Z

    if-eqz v0, :cond_11

    .line 939
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLineShareStatus:Z

    .line 940
    const-string v0, ""

    const-string v1, "LINE"

    invoke-direct {p0, p0, v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerShared(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_11
    return-void
.end method
