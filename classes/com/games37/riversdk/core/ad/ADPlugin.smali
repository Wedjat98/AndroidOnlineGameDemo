.class public Lcom/games37/riversdk/core/ad/ADPlugin;
.super Ljava/lang/Object;
.source "ADPlugin.java"


# static fields
.field public static final FIRST_RUN_FLAG:Ljava/lang/String; = "FirstRunFlag"

.field public static final TAG:Ljava/lang/String; = "ADPlugin"

.field private static volatile instance:Lcom/games37/riversdk/core/ad/ADPlugin;

.field private static mApps:Ljava/lang/String;

.field private static mRequestBundle:Landroid/os/Bundle;


# instance fields
.field private mSdkConfigMap:Lcom/games37/riversdk/core/model/DataMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/games37/riversdk/core/ad/ADPlugin;->instance:Lcom/games37/riversdk/core/ad/ADPlugin;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/core/ad/ADPlugin;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/games37/riversdk/core/ad/ADPlugin;->instance:Lcom/games37/riversdk/core/ad/ADPlugin;

    if-nez v0, :cond_13

    .line 48
    const-class v1, Lcom/games37/riversdk/core/ad/ADPlugin;

    monitor-enter v1

    .line 49
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/ad/ADPlugin;->instance:Lcom/games37/riversdk/core/ad/ADPlugin;

    if-nez v0, :cond_12

    .line 50
    new-instance v0, Lcom/games37/riversdk/core/ad/ADPlugin;

    invoke-direct {v0}, Lcom/games37/riversdk/core/ad/ADPlugin;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/ad/ADPlugin;->instance:Lcom/games37/riversdk/core/ad/ADPlugin;

    .line 52
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 54
    :cond_13
    sget-object v0, Lcom/games37/riversdk/core/ad/ADPlugin;->instance:Lcom/games37/riversdk/core/ad/ADPlugin;

    return-object v0

    .line 52
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getApps()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    sget-object v0, Lcom/games37/riversdk/core/ad/ADPlugin;->mApps:Ljava/lang/String;

    return-object v0
.end method

.method public initAdSdk(Landroid/app/Activity;Lcom/games37/riversdk/core/model/DataMap;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sdkConfigMap"    # Lcom/games37/riversdk/core/model/DataMap;
    .param p3, "requestBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 65
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/games37/riversdk/core/model/DataMap;->size()I

    move-result v5

    if-nez v5, :cond_11

    .line 66
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "the sdk config map is null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    :cond_11
    if-eqz p3, :cond_19

    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result v5

    if-nez v5, :cond_21

    .line 69
    :cond_19
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "the request bundle is null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    :cond_21
    sput-object p3, Lcom/games37/riversdk/core/ad/ADPlugin;->mRequestBundle:Landroid/os/Bundle;

    .line 74
    iput-object p2, p0, Lcom/games37/riversdk/core/ad/ADPlugin;->mSdkConfigMap:Lcom/games37/riversdk/core/model/DataMap;

    .line 76
    new-instance v0, Lcom/ad/sdk/config/ADConfig;

    invoke-direct {v0}, Lcom/ad/sdk/config/ADConfig;-><init>()V

    .line 78
    .local v0, "adConfig":Lcom/ad/sdk/config/ADConfig;
    const-string v5, "ADWORDS_APP_ID"

    invoke-virtual {p2, v5}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "adwords_appid":Ljava/lang/String;
    const-string v5, "ADWORDS_APP_INSTALL_LABEL"

    invoke-virtual {p2, v5}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "install_label":Ljava/lang/String;
    const-string v5, "ADWORDS_APP_INSTALL_VALUE"

    invoke-virtual {p2, v5}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "install_value":Ljava/lang/String;
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 86
    invoke-virtual {v0, v6, v1, v3, v4}, Lcom/ad/sdk/config/ADConfig;->setAdWords(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_45
    const-string v5, "APPFLYER_KEY"

    invoke-virtual {p2, v5}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "appsFlyer_key":Ljava/lang/String;
    invoke-static {v2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 97
    invoke-virtual {v0, v6, v2}, Lcom/ad/sdk/config/ADConfig;->setAppsFlyer(ZLjava/lang/String;)V

    .line 103
    :cond_54
    invoke-static {v0}, Lcom/ad/sdk/ADManager;->init(Lcom/ad/sdk/config/ADConfig;)V

    .line 104
    invoke-static {}, Lcom/ad/sdk/ADManager;->getInstance()Lcom/ad/sdk/ADManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/ad/sdk/ADManager;->getAppsFlyerUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/games37/riversdk/core/ad/ADPlugin;->mApps:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerLib;->setDebugLog(Z)V

    .line 106
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/AFLogger$LogLevel;->VERBOSE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerLib;->setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V

    .line 107
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 110
    invoke-static {}, Lcom/ad/sdk/ADManager;->getInstance()Lcom/ad/sdk/ADManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ad/sdk/ADManager;->onCreate(Landroid/app/Activity;)V

    .line 111
    invoke-static {}, Lcom/ad/sdk/ADManager;->getInstance()Lcom/ad/sdk/ADManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ad/sdk/ADManager;->getAppsFlyerUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/ad/ADPlugin;->mApps:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/games37/riversdk/core/ad/ADPlugin;->mRequestBundle:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    invoke-static {}, Lcom/ad/sdk/ADManager;->getInstance()Lcom/ad/sdk/ADManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ad/sdk/ADManager;->onDestroy(Landroid/app/Activity;)V

    .line 138
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    invoke-static {}, Lcom/ad/sdk/ADManager;->getInstance()Lcom/ad/sdk/ADManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ad/sdk/ADManager;->onPause(Landroid/app/Activity;)V

    .line 129
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->deactivateApp(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    invoke-static {}, Lcom/ad/sdk/ADManager;->getInstance()Lcom/ad/sdk/ADManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ad/sdk/ADManager;->onResume(Landroid/app/Activity;)V

    .line 121
    invoke-static {}, Lcom/ad/sdk/ADManager;->getInstance()Lcom/ad/sdk/ADManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ad/sdk/ADManager;->getAppsFlyerUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/games37/riversdk/core/ad/ADPlugin;->mApps:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/games37/riversdk/core/ad/ADPlugin;->mSdkConfigMap:Lcom/games37/riversdk/core/model/DataMap;

    const-string v2, "FACEBOOK_APP_ID"

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "facebook_app_id":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    invoke-static {}, Lcom/ad/sdk/ADManager;->getInstance()Lcom/ad/sdk/ADManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ad/sdk/ADManager;->onStart(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 133
    invoke-static {}, Lcom/ad/sdk/ADManager;->getInstance()Lcom/ad/sdk/ADManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ad/sdk/ADManager;->onStop(Landroid/app/Activity;)V

    .line 134
    return-void
.end method
