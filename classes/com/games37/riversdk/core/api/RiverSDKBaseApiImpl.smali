.class public abstract Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl;
.super Ljava/lang/Object;
.source "RiverSDKBaseApiImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/api/RiverSDKBaseApi;


# static fields
.field public static final TAG:Ljava/lang/String; = "RiverSDKBaseApiImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected configSDKValue(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "log_tag"    # Ljava/lang/String;
    .param p2, "debugMode"    # Z

    .prologue
    .line 314
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    .line 316
    invoke-static {p1, p2}, Lcom/games37/riversdk/common/log/LogHelper;->init(Ljava/lang/String;Z)V

    .line 318
    :cond_6
    return-void
.end method

.method protected errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 359
    if-eqz p3, :cond_15

    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 362
    const-string v1, "msg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_12
    invoke-virtual {p3, p1, v0}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 366
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15
    return-void
.end method

.method protected handleInit(Landroid/content/Context;Ljava/lang/String;Lcom/games37/riversdk/core/model/DataBundle;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "log_tag"    # Ljava/lang/String;
    .param p3, "metaDataBundle"    # Lcom/games37/riversdk/core/model/DataBundle;
    .param p4, "initCallback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    const/4 v7, 0x1

    .line 331
    const-string v4, "RiverSDK.DebugMode"

    invoke-virtual {p3, v4, v7}, Lcom/games37/riversdk/core/model/DataBundle;->getBoolData(Ljava/lang/String;Z)Z

    move-result v0

    .line 332
    .local v0, "debugMode":Z
    invoke-virtual {p0, p2, v0}, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl;->configSDKValue(Ljava/lang/String;Z)V

    .line 335
    const-string v4, "RiverSDK.Pid"

    invoke-virtual {p3, v4}, Lcom/games37/riversdk/core/model/DataBundle;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "pid":Ljava/lang/String;
    const-string v4, "RiverSDK.PublishPlatform"

    invoke-virtual {p3, v4}, Lcom/games37/riversdk/core/model/DataBundle;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "publishForm":Ljava/lang/String;
    if-eqz p4, :cond_66

    .line 340
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v1, "initData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v4, "gid"

    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v5

    .line 344
    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v5

    const-string v6, "PRODUCTID"

    invoke-virtual {v5, v6}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v4, "ptCode"

    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v5

    .line 347
    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v5

    const-string v6, "PTCODE"

    invoke-virtual {v5, v6}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v4, "device"

    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v4, "pid"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v4, "channelId"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {p4, v7, v1}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 356
    .end local v1    # "initData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_66
    return-void
.end method

.method protected initSDKLocale(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 281
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/UserInformation;->getAppLocale()I

    move-result v3

    .line 283
    .local v3, "sdkLocale":I
    if-eqz v3, :cond_e

    .line 284
    invoke-static {p1, v3}, Lcom/games37/riversdk/core/util/SDKUtil;->configSDKLocale(Landroid/content/Context;I)V

    .line 305
    :goto_d
    return-void

    .line 287
    :cond_e
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v4

    const-string v5, "LANGUAGE"

    .line 288
    invoke-virtual {v4, v5}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "language":Ljava/lang/String;
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 294
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLocale(I)V

    .line 295
    invoke-static {p1, v3}, Lcom/games37/riversdk/core/util/SDKUtil;->configSDKLocale(Landroid/content/Context;I)V

    goto :goto_d

    .line 298
    :cond_35
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/SDKInformation;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/SDKInformation;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "country":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "locale":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/games37/riversdk/core/util/SDKUtil;->configAppLanguage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 272
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 221
    const-string v0, "RiverSDKBaseApiImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the app keyhash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/games37/riversdk/common/utils/PackageUtil;->getKeyHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/games37/riversdk/core/controler/IntentRequest;->handleInboundIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 223
    invoke-static {}, Lcom/games37/riversdk/core/ad/ADPlugin;->getInstance()Lcom/games37/riversdk/core/ad/ADPlugin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/ad/ADPlugin;->onCreate(Landroid/app/Activity;)V

    .line 224
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 254
    const-string v1, "RiverSDKBaseApiImpl"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/games37/riversdk/core/ad/ADPlugin;->getInstance()Lcom/games37/riversdk/core/ad/ADPlugin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/games37/riversdk/core/ad/ADPlugin;->onDestroy(Landroid/app/Activity;)V

    .line 256
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/core/model/SDKInformation;->clearData()V

    .line 258
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/model/UserInformation;->clearInfo(Landroid/content/Context;)V

    .line 260
    new-instance v0, Lcom/games37/riversdk/core/login/dao/LoginDao;

    invoke-direct {v0}, Lcom/games37/riversdk/core/login/dao/LoginDao;-><init>()V

    .line 261
    .local v0, "loginDao":Lcom/games37/riversdk/core/login/dao/LoginDao;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->clearRealtimeLoginData(Landroid/content/Context;)V

    .line 262
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    const-string v0, "RiverSDKBaseApiImpl"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/games37/riversdk/core/ad/ADPlugin;->getInstance()Lcom/games37/riversdk/core/ad/ADPlugin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/ad/ADPlugin;->onPause(Landroid/app/Activity;)V

    .line 244
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 267
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 234
    const-string v0, "RiverSDKBaseApiImpl"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/games37/riversdk/core/ad/ADPlugin;->getInstance()Lcom/games37/riversdk/core/ad/ADPlugin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/ad/ADPlugin;->onResume(Landroid/app/Activity;)V

    .line 236
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v0

    const-string v1, "com.games37.riversdk.core.config.SDKConfig"

    invoke-virtual {v0, p1, v1}, Lcom/games37/riversdk/core/model/SDKInformation;->reInitData(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/model/UserInformation;->init(Landroid/content/Context;)V

    .line 238
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 228
    const-string v0, "RiverSDKBaseApiImpl"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/games37/riversdk/core/ad/ADPlugin;->getInstance()Lcom/games37/riversdk/core/ad/ADPlugin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/ad/ADPlugin;->onStart(Landroid/app/Activity;)V

    .line 230
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 248
    const-string v0, "RiverSDKBaseApiImpl"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/games37/riversdk/core/ad/ADPlugin;->getInstance()Lcom/games37/riversdk/core/ad/ADPlugin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/ad/ADPlugin;->onStop(Landroid/app/Activity;)V

    .line 250
    return-void
.end method

.method public abstract sqSDKAutoLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public sqSDKBindPlatform(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;
    .param p3, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 92
    return-void
.end method

.method public sqSDKFBInGameFriendInfo(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 167
    return-void
.end method

.method public abstract sqSDKFacebookLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public sqSDKFacebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "roleId"    # Ljava/lang/String;
    .param p5, "roleName"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 151
    return-void
.end method

.method public sqSDKGetDeepLinkData(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 172
    return-void
.end method

.method public sqSDKGoogleLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 74
    return-void
.end method

.method public abstract sqSDKGuestLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public sqSDKHuaweiLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 182
    return-void
.end method

.method public abstract sqSDKInAppPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public sqSDKInit(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl;->sqSDKInit(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 52
    return-void
.end method

.method public abstract sqSDKInit(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public sqSDKInviteFromSocialAPP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/share/SocialType;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "shareUrl"    # Ljava/lang/String;
    .param p5, "socialType"    # Lcom/games37/riversdk/core/share/SocialType;
    .param p6, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 177
    return-void
.end method

.method public abstract sqSDKLogout(Landroid/content/Context;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end method

.method public sqSDKOpenWebFloatView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "roleId"    # Ljava/lang/String;
    .param p4, "roleName"    # Ljava/lang/String;

    .prologue
    .line 162
    return-void
.end method

.method public sqSDKPresentFAQView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/ShowViewCallback;

    .prologue
    .line 122
    return-void
.end method

.method public sqSDKPresentFacebookSocialCenter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "roleId"    # Ljava/lang/String;
    .param p4, "roleName"    # Ljava/lang/String;

    .prologue
    .line 157
    return-void
.end method

.method public sqSDKPresentLoginView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 82
    return-void
.end method

.method public sqSDKPresentNoticeView(Landroid/content/Context;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/ShowViewCallback;

    .prologue
    .line 142
    return-void
.end method

.method public abstract sqSDKPresentOnlineChatView(Landroid/app/Activity;)V
.end method

.method public abstract sqSDKPresentUserCenterView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V
.end method

.method public sqSDKReportFacebookEvent(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "value"    # D
    .param p5, "currency"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method

.method public sqSDKReportGoogleEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 132
    return-void
.end method

.method public sqSDKReportServerCode(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serverCode"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl;->sqSDKReportServerCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public abstract sqSDKReportServerCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public sqSDKRequestGoogleSkuDetail(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/games37/riversdk/core/callback/SDKCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "RiverSDKBaseApiImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sqSDKRequestGoogleSkuDetail the skuList size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3d

    const-string v2, "0"

    :goto_19
    invoke-static {v3, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_29

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_46

    .line 197
    :cond_29
    const-string v2, "RiverSDKBaseApiImpl"

    const-string v3, "sqSDKRequestGoogleSkuDetail the skuList is empty"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "msg"

    const-string v3, "the skuList is empty!"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 217
    :goto_3c
    return-void

    .line 194
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    .line 203
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_46
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v2

    const-string v3, "GOOGLE_API_KEY"

    .line 204
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "googleApiKey":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->getInstance()Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    move-result-object v2

    new-instance v3, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;

    invoke-direct {v3, p0, v1, p3}, Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl$1;-><init>(Lcom/games37/riversdk/core/api/RiverSDKBaseApiImpl;Ljava/util/Map;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    invoke-virtual {v2, p1, v0, p2, v3}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->requestGoogleSkuDetail(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V

    goto :goto_3c
.end method

.method public sqSDKSetLocalLanguage(Landroid/app/Activity;I)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "iso"    # I

    .prologue
    .line 59
    const-string v0, "RiverSDKBaseApiImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sqSDKSetLocalLanguage iso = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/games37/riversdk/core/model/UserInformation;->setAppLocale(I)V

    .line 62
    invoke-static {p1, p2}, Lcom/games37/riversdk/core/util/SDKUtil;->configSDKLocale(Landroid/content/Context;I)V

    .line 63
    return-void
.end method

.method public sqSDKSetSwitchAccountCallback(Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 102
    return-void
.end method

.method public sqSDKTwitterLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 87
    return-void
.end method

.method public sqSDKUnbindPlatform(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;
    .param p3, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 97
    return-void
.end method

.method public sqSDKhasLogin()Z
    .registers 2

    .prologue
    .line 186
    invoke-static {}, Lcom/games37/riversdk/core/login/manager/LoginManager;->hasLogin()Z

    move-result v0

    return v0
.end method
