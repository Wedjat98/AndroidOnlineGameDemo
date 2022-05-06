.class public Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
.super Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;
.source "SocialWebRequestUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SocialWebRequestUtil"


# instance fields
.field private mFBSocialAppHost:Ljava/lang/String;

.field private mSecretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "requestBundle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;-><init>()V

    .line 50
    const-string v0, "FBSOCIAL_APP_HOST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    .line 51
    const-string v0, "SECRETKEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->handleRewardListCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->handlerRewardRecordCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v0

    return v0
.end method

.method private handleRewardListCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p1, "paramObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardItem;>;>;"
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v2

    .line 272
    .local v2, "isSuccess":Z
    const-string v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 273
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_35

    if-eqz v0, :cond_35

    .line 275
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v4, "rewardItemList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardItem;>;"
    const-string v6, "reward_list"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 277
    .local v5, "rewardList":Lorg/json/JSONArray;
    if-eqz v5, :cond_31

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_31

    .line 279
    new-instance v3, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/games37/riversdk/core/facebook/social/model/RewardItem;-><init>(Lorg/json/JSONObject;)V

    .line 280
    .local v3, "item":Lcom/games37/riversdk/core/facebook/social/model/RewardItem;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 283
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/games37/riversdk/core/facebook/social/model/RewardItem;
    :cond_31
    const/4 v6, 0x1

    invoke-interface {p2, v6, v4}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 285
    .end local v4    # "rewardItemList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardItem;>;"
    .end local v5    # "rewardList":Lorg/json/JSONArray;
    :cond_35
    return-void
.end method

.method private handlerRewardRecordCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p1, "paramObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p2, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;>;>;"
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z

    move-result v2

    .line 375
    .local v2, "isSuccess":Z
    const-string v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 376
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_35

    if-eqz v0, :cond_35

    .line 378
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v4, "rewardRecordItemList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;>;"
    const-string v6, "record_list"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 380
    .local v5, "rewardRecordList":Lorg/json/JSONArray;
    if-eqz v5, :cond_31

    .line 381
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_31

    .line 382
    new-instance v3, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;-><init>(Lorg/json/JSONObject;)V

    .line 383
    .local v3, "item":Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 386
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;
    :cond_31
    const/4 v6, 0x1

    invoke-interface {p2, v6, v4}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 388
    .end local v4    # "rewardRecordItemList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;>;"
    .end local v5    # "rewardRecordList":Lorg/json/JSONArray;
    :cond_35
    return-void
.end method


# virtual methods
.method public getServerTimestamp(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "common/time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->requestServerTimestamp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 66
    return-void
.end method

.method public requestFriendsStatus(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p2, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    .local p4, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 453
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_35

    .line 454
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    .line 455
    .local v7, "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getFbId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 457
    .end local v7    # "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    :cond_35
    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 460
    .end local v8    # "i":I
    :cond_3f
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 461
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {v6, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 463
    const-string v0, "friendList"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    .line 466
    .local v3, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/getfriendlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$9;

    invoke-direct {v5, p0, p4}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$9;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    .line 469
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 488
    return-void
.end method

.method public requestRedPointStatus(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/initstatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    .line 505
    invoke-virtual {p0, v1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$10;

    invoke-direct {v5, p0, p3}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$10;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 524
    return-void
.end method

.method public requestServerGetReward(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rewardId"    # Ljava/lang/String;
    .param p3, "shareType"    # Ljava/lang/String;
    .param p4, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p5, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/lang/String;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {v6, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 304
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 305
    const-string v0, "rewardId"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_15
    const-string v0, "rewardType"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    .line 310
    .local v3, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/reward"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$6;

    invoke-direct {v5, p0, p5}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$6;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    .line 313
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 333
    return-void
.end method

.method public requestServerInvited(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "friendsId"    # Ljava/lang/String;
    .param p4, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p5, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {v6, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 204
    const-string v0, "requestId"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "invitees"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    .line 208
    .local v3, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/invite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$4;

    invoke-direct {v5, p0, p5}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$4;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 230
    return-void
.end method

.method public requestServerLiked(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/like"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    .line 167
    invoke-virtual {p0, v1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$3;

    invoke-direct {v5, p0, p3}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$3;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 187
    return-void
.end method

.method public requestServerPresentGift(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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
    .line 588
    .local p2, "fbids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3b

    .line 590
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_31

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 593
    :cond_31
    const/4 v0, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 596
    .end local v7    # "i":I
    :cond_3b
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 597
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {v6, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 599
    const-string v0, "list"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    .line 602
    .local v3, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/sendgift"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$12;

    invoke-direct {v5, p0, p4}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$12;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    .line 605
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 624
    return-void
.end method

.method public requestServerReceiveGift(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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
    .line 539
    .local p2, "tokenIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3b

    .line 541
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_31

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 544
    :cond_31
    const/4 v0, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 547
    .end local v7    # "i":I
    :cond_3b
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 548
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {v6, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 550
    const-string v0, "list"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    .line 553
    .local v3, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/receivegift"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$11;

    invoke-direct {v5, p0, p4}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$11;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    .line 556
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 574
    return-void
.end method

.method public requestServerRewardList(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardItem;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/reward_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    .line 246
    invoke-virtual {p0, v1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$5;

    invoke-direct {v5, p0, p3}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$5;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 261
    return-void
.end method

.method public requestServerRewardRecord(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/RewardRecordItem;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/reward_record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    .line 349
    invoke-virtual {p0, v1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$7;

    invoke-direct {v5, p0, p3}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$7;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 364
    return-void
.end method

.method public requestServerShareContent(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<[",
            "Lcom/games37/riversdk/core/facebook/social/model/ShareContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<[Lcom/games37/riversdk/core/facebook/social/model/ShareContent;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/share_content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    .line 120
    invoke-virtual {p0, v1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$2;

    invoke-direct {v5, p0, p3}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$2;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 151
    return-void
.end method

.method public requestServerShared(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "postId"    # Ljava/lang/String;
    .param p3, "shareType"    # Ljava/lang/String;
    .param p4, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p5, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/lang/String;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {v6, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 407
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 408
    const-string v0, "postId"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_13
    const-string v0, "shareType"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    .line 413
    .local v3, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/share"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$8;

    invoke-direct {v5, p0, p5}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$8;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    .line 416
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 436
    return-void
.end method

.method public requestServerSocialInitial(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mFBSocialAppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "social/basic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->mSecretKey:Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v1, p2}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$1;

    invoke-direct {v5, p0, p3}, Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil$1;-><init>(Lcom/games37/riversdk/core/facebook/social/utils/SocialWebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 104
    return-void
.end method
