.class public Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;
.super Ljava/lang/Object;
.source "SocialPresenter.java"

# interfaces
.implements Lcom/games37/riversdk/core/presenter/IActivityPresenter;


# static fields
.field public static final TAG:Ljava/lang/String; = "SocialPresenter"


# instance fields
.field private mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

.field private mLineWrapper:Lcom/games37/riversdk/functions/line/LineWrapper;

.field private mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "requestBundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    invoke-direct {v0, p1}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;ILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->handleErrorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->handleCancelCallback(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 6
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Landroid/os/Bundle;
    .param p5, "x5"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->requestServerInvite(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    return-void
.end method

.method private handleCancelCallback(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 410
    if-eqz p2, :cond_10

    .line 411
    const-string v1, "i1_sdk_fb_social_cancel"

    .line 412
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 411
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-interface {p2, v1, v0}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    .line 415
    .end local v0    # "msg":Ljava/lang/String;
    :cond_10
    return-void
.end method

.method private handleErrorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 398
    if-eqz p3, :cond_5

    .line 399
    invoke-interface {p3, p1, p2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    .line 401
    :cond_5
    return-void
.end method

.method private initFacebook(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "initCallback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x1

    .line 67
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    .line 68
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->initFacebookSDK(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->logoutByFB()V

    .line 72
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    new-instance v1, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$1;-><init>(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Lcom/games37/riversdk/core/callback/ResultCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookLogin(Landroid/app/Activity;ZILcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 92
    invoke-static {}, Lcom/games37/riversdk/functions/line/LineWrapper;->getInstance()Lcom/games37/riversdk/functions/line/LineWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mLineWrapper:Lcom/games37/riversdk/functions/line/LineWrapper;

    .line 93
    return-void
.end method

.method private requestServerInvite(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p4, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p3, "friendsId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v6, "friends":Ljava/lang/StringBuilder;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 298
    .local v7, "id":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 300
    .end local v7    # "id":Ljava/lang/String;
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "ids":Ljava/lang/String;
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mRequestUtil:Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerInvited(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 302
    return-void
.end method


# virtual methods
.method public closeActivity(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 101
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 102
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 104
    :cond_b
    return-void
.end method

.method public fbShare(Landroid/app/Activity;Lcom/games37/riversdk/core/facebook/social/model/ShareContent;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fbContent"    # Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/core/facebook/social/model/ShareContent;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/lang/String;>;"
    const-string v1, "SocialPresenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fbShare content = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_40

    const-string v0, "null"

    :goto_19
    invoke-static {v1, v0}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3f

    if-eqz p2, :cond_3f

    .line 134
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    .line 136
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->getThumb()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->getLink()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$2;

    invoke-direct {v6, p0, p3, p1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$2;-><init>(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Lcom/games37/riversdk/core/callback/ResultCallback;Landroid/app/Activity;)V

    move-object v1, p1

    .line 134
    invoke-virtual/range {v0 .. v6}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 162
    :cond_3f
    return-void

    .line 132
    :cond_40
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public init(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "initCallback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Landroid/os/Bundle;>;"
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->initFacebook(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 58
    return-void
.end method

.method public lineShare(Landroid/app/Activity;Lcom/games37/riversdk/core/facebook/social/model/ShareContent;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "lineContent"    # Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/core/facebook/social/model/ShareContent;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/lang/Boolean;>;"
    const-string v1, "SocialPresenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lineShare content = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37

    const-string v0, "null"

    :goto_19
    invoke-static {v1, v0}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz p2, :cond_36

    .line 175
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mLineWrapper:Lcom/games37/riversdk/functions/line/LineWrapper;

    .line 177
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {p2}, Lcom/games37/riversdk/core/facebook/social/model/ShareContent;->getLink()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;

    invoke-direct {v3, p0, p3, p1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;-><init>(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Lcom/games37/riversdk/core/callback/ResultCallback;Landroid/app/Activity;)V

    .line 175
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/games37/riversdk/functions/line/LineWrapper;->lineShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback;)V

    .line 199
    :cond_36
    return-void

    .line 173
    :cond_37
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public loadInviteFriend(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    new-instance v1, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;-><init>(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Lcom/games37/riversdk/core/callback/ResultCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookGetInvitableFriendsInfo(Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 239
    return-void
.end method

.method public loadSendableFriends(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p2, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    new-instance v1, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$6;-><init>(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Lcom/games37/riversdk/core/callback/ResultCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookGetInGameFriendsInfo(Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 344
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    if-eqz v0, :cond_9

    .line 384
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    invoke-virtual {v0, p2, p3, p4}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->onActivityResult(IILandroid/content/Intent;)V

    .line 386
    :cond_9
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 349
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 374
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 364
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 379
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 359
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 354
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 369
    return-void
.end method

.method public openFaq(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v1, "SocialPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFaq title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 116
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 117
    invoke-static {p3}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 118
    new-instance v0, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v0, "dialog":Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;->show()V

    .line 121
    .end local v0    # "dialog":Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;
    :cond_3c
    return-void
.end method

.method public requestFacebookInviteFriends(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "inviteTitle"    # Ljava/lang/String;
    .param p3, "inviteMsg"    # Ljava/lang/String;
    .param p5, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p4, "inviteFriendsToken":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->mFacebookWrapper:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 260
    invoke-interface {p4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;

    invoke-direct {v5, p0, p1, p5, p6}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;-><init>(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 257
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookInviteFriends(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 280
    return-void
.end method
