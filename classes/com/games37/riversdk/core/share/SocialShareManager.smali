.class public Lcom/games37/riversdk/core/share/SocialShareManager;
.super Ljava/lang/Object;
.source "SocialShareManager.java"


# static fields
.field public static final EVENT_SOCIAL:Ljava/lang/String; = "custom_sdk_social"

.field public static final KEY_INVITE:Ljava/lang/String; = "invite"

.field public static final KEY_INVITE_PLAY:Ljava/lang/String; = "inviteplay"

.field public static final KEY_TEAMMATCH:Ljava/lang/String; = "teammatch"

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/games37/riversdk/core/share/SocialShareManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/games37/riversdk/core/share/SocialShareManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/share/SocialShareManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/share/SocialShareManager;Landroid/app/Activity;Lcom/games37/riversdk/core/share/SocialType;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/share/SocialShareManager;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/games37/riversdk/core/share/SocialType;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/share/SocialShareManager;->reportSocialEvent(Landroid/app/Activity;Lcom/games37/riversdk/core/share/SocialType;)V

    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/core/share/SocialShareManager;
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/games37/riversdk/core/share/SocialShareManager;->instance:Lcom/games37/riversdk/core/share/SocialShareManager;

    if-nez v0, :cond_13

    .line 52
    const-class v1, Lcom/games37/riversdk/core/share/SocialShareManager;

    monitor-enter v1

    .line 53
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/share/SocialShareManager;->instance:Lcom/games37/riversdk/core/share/SocialShareManager;

    if-nez v0, :cond_12

    .line 54
    new-instance v0, Lcom/games37/riversdk/core/share/SocialShareManager;

    invoke-direct {v0}, Lcom/games37/riversdk/core/share/SocialShareManager;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/share/SocialShareManager;->instance:Lcom/games37/riversdk/core/share/SocialShareManager;

    .line 56
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 58
    :cond_13
    sget-object v0, Lcom/games37/riversdk/core/share/SocialShareManager;->instance:Lcom/games37/riversdk/core/share/SocialShareManager;

    return-object v0

    .line 56
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private reportSocialEvent(Landroid/app/Activity;Lcom/games37/riversdk/core/share/SocialType;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "socialType"    # Lcom/games37/riversdk/core/share/SocialType;

    .prologue
    .line 203
    sget-object v1, Lcom/games37/riversdk/core/share/SocialShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSocialEvent: socialType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v0, "eventValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/games37/riversdk/core/share/SocialType;->MESSENGER_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    if-ne p2, v1, :cond_32

    .line 206
    const-string v1, "inviteplay"

    const-string v2, "messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_28
    :goto_28
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    const-string v2, "custom_sdk_social"

    invoke-virtual {v1, p1, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    return-void

    .line 207
    :cond_32
    sget-object v1, Lcom/games37/riversdk/core/share/SocialType;->LINE_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    if-ne p2, v1, :cond_3e

    .line 208
    const-string v1, "inviteplay"

    const-string v2, "line"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 209
    :cond_3e
    sget-object v1, Lcom/games37/riversdk/core/share/SocialType;->FACEBOOK_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    if-ne p2, v1, :cond_28

    .line 210
    const-string v1, "invite"

    const-string v2, "facebook"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method private reportTeamMatchEvent(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 221
    sget-object v1, Lcom/games37/riversdk/core/share/SocialShareManager;->TAG:Ljava/lang/String;

    const-string v2, "reportTeamMatchEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v0, "eventValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "teammatch"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    const-string v2, "custom_sdk_social"

    invoke-virtual {v1, p1, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    return-void
.end method


# virtual methods
.method public getDeepLinkData(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p2, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 179
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 180
    .local v0, "deeplink":Landroid/net/Uri;
    if-eqz v0, :cond_2f

    .line 181
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v3, "successParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "r1_get_deepklink_success"

    .line 183
    invoke-static {p1, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 182
    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "msg":Ljava/lang/String;
    const-string v4, "msg"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v4, "deeplink_url"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/4 v4, 0x1

    invoke-interface {p2, v4, v3}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/share/SocialShareManager;->reportTeamMatchEvent(Landroid/app/Activity;)V

    .line 194
    .end local v3    # "successParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2e
    return-void

    .line 190
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2f
    const-string v4, "r1_get_deeplink_fail"

    .line 191
    invoke-static {p1, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 190
    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    .restart local v2    # "msg":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {p2, v4, v2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_2e
.end method

.method public shareToSocialApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/share/SocialType;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "socialType"    # Lcom/games37/riversdk/core/share/SocialType;
    .param p5, "shareUrl"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 78
    sget-object v0, Lcom/games37/riversdk/core/share/SocialType;->MESSENGER_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    if-ne p4, v0, :cond_11

    .line 80
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/core/share/SocialShareManager$1;

    invoke-direct {v1, p0, p1, p6}, Lcom/games37/riversdk/core/share/SocialShareManager$1;-><init>(Lcom/games37/riversdk/core/share/SocialShareManager;Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    invoke-virtual {v0, p1, p5, v1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->messengerShare(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 168
    :goto_10
    return-void

    .line 102
    :cond_11
    sget-object v0, Lcom/games37/riversdk/core/share/SocialType;->LINE_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    if-ne p4, v0, :cond_22

    .line 105
    invoke-static {}, Lcom/games37/riversdk/functions/line/LineWrapper;->getInstance()Lcom/games37/riversdk/functions/line/LineWrapper;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/core/share/SocialShareManager$2;

    invoke-direct {v1, p0, p1, p6}, Lcom/games37/riversdk/core/share/SocialShareManager$2;-><init>(Lcom/games37/riversdk/core/share/SocialShareManager;Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    invoke-virtual {v0, p1, p2, p5, v1}, Lcom/games37/riversdk/functions/line/LineWrapper;->lineShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback;)V

    goto :goto_10

    .line 130
    :cond_22
    sget-object v0, Lcom/games37/riversdk/core/share/SocialType;->FACEBOOK_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    if-ne p4, v0, :cond_37

    .line 131
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Lcom/games37/riversdk/core/share/SocialShareManager$3;

    invoke-direct {v5, p0, p1, p6}, Lcom/games37/riversdk/core/share/SocialShareManager$3;-><init>(Lcom/games37/riversdk/core/share/SocialShareManager;Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookInviteFriends(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    goto :goto_10

    .line 162
    :cond_37
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v6, "errorParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "r1_social_invalid_type"

    .line 164
    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 163
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "msg":Ljava/lang/String;
    const-string v0, "msg"

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p6, v0, v6}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    goto :goto_10
.end method
