.class public Lcom/games37/riversdk/gm99/utils/GM99WebParamsWrapper;
.super Ljava/lang/Object;
.source "GM99WebParamsWrapper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GM99WebParamsWrapper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getACParamsMap(Landroid/app/Activity;Landroid/os/Bundle;)Ljava/util/Map;
    .registers 22
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "roleParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    const-string v12, ""

    .line 236
    .local v12, "roleId":Ljava/lang/String;
    const-string v13, ""

    .line 238
    .local v13, "roleName":Ljava/lang/String;
    const-string v14, ""

    .line 240
    .local v14, "serverId":Ljava/lang/String;
    if-eqz p1, :cond_26

    .line 241
    const-string v18, "role_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 242
    const-string v18, "roleName"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 243
    const-string v18, "sid"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 246
    :cond_26
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v10, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v18

    const-string v19, "GAMECODE"

    .line 249
    invoke-virtual/range {v18 .. v19}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "gameCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v18

    const-string v19, "PRODUCTID"

    .line 252
    invoke-virtual/range {v18 .. v19}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/games37/riversdk/core/model/UserInformation;->getUserId()Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v15

    .line 260
    .local v15, "timeStamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "deviceType":Ljava/lang/String;
    const-string v18, "url"

    const-string v19, "https://events.gm99.com/sdk"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v18, "game_id"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v18, "gameCode"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v18, "userId"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v18, "role_id"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v18, "sid"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v18, "plat"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v18, "roleName"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v18, "loginAccount"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v18, "timeStamp"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v11, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v11, v2}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 276
    .local v11, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/RequestEntity;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 277
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_c1
    :goto_c1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e3

    .line 278
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 279
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 280
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 281
    .local v17, "value":Ljava/lang/Object;
    if-eqz v17, :cond_c1

    .line 282
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    .line 285
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/Object;
    :cond_e3
    return-object v10
.end method

.method public static getAutoOnlineChatInfo(Landroid/app/Activity;)Ljava/util/Map;
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/UserInformation;->getServerId()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "severCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v4

    const-string v5, "PRODUCTID"

    .line 78
    invoke-virtual {v4, v5}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "gameId":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "url"

    const-string v5, "http://mchatkf.gm99.com/v2/"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v4, "loginAccount"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v4, "gameId"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v4, "sdkToken"

    const-string v5, "android-app"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v4, "serverId"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v4, "sdkTokenData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/http/www.gm99.com/kfchat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object v2
.end method

.method public static getCSMap(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "includeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v11

    const-string v12, "PTCODE"

    .line 331
    invoke-virtual {v11, v12}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "ptCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v11

    const-string v12, "GAMECODE"

    .line 334
    invoke-virtual {v11, v12}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "gameCode":Ljava/lang/String;
    invoke-static {v7}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/UserInformation;->getUserId()Ljava/lang/String;

    move-result-object v10

    .line 340
    .local v10, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "language":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "country":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, "timeStamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "devicePlate":Ljava/lang/String;
    const-string v11, "url"

    const-string v12, "http://182.160.13.233:99/toService.do"

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v11, "includeName"

    invoke-interface {v6, v11, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/4 v8, 0x0

    .line 356
    .local v8, "sign":Ljava/lang/String;
    invoke-static {v10}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 357
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 363
    :goto_79
    const-string v11, "language"

    invoke-interface {v6, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v11, "country"

    invoke-interface {v6, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v11, "gameCode"

    invoke-interface {v6, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v11, "sign"

    invoke-interface {v6, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v11, "timeStamp"

    invoke-interface {v6, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v11, "devicePlate"

    invoke-interface {v6, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v11, "userName"

    invoke-interface {v6, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-object v6

    .line 360
    :cond_9d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 361
    const-string v11, "userId"

    invoke-interface {v6, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79
.end method

.method public static getChatInfo(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/UserInformation;->getServerId()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "severCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v4

    const-string v5, "PRODUCTID"

    .line 50
    invoke-virtual {v4, v5}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "gameId":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "url"

    const-string v5, "http://mchatkf.gm99.com/v2/"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v4, "loginAccount"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v4, "gameId"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v4, "serverId"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v4, "domain"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v4, "sdkToken"

    const-string v5, "android-app"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v4, "sdkTokenData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/http/www.gm99.com/kfchat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v2
.end method

.method public static getFAQMap(Landroid/app/Activity;)Ljava/util/Map;
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 298
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/UserInformation;->getServerId()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "serverId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v5

    const-string v6, "PRODUCTID"

    .line 301
    invoke-virtual {v5, v6}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/UserInformation;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "loginAccount":Ljava/lang/String;
    const-string v5, "url"

    const-string v6, "https://msupport.gm99.com/SupportOrder/create"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v5, "origin"

    const-string v6, "sdk"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v5, "gameId"

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v5, "serverId"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v5, "loginAccount"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v5, "sdkToken"

    const-string v6, "android-app"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v5, "sdkTokenData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/http/www.gm99.com/kfchat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-object v2
.end method

.method public static getFloatViewMenuMap(Landroid/app/Activity;Landroid/os/Bundle;)Ljava/util/Map;
    .registers 26
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 455
    .local v11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v21

    const-string v22, "PRODUCTID"

    .line 456
    invoke-virtual/range {v21 .. v22}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v21

    const-string v22, "GAMECODE"

    .line 459
    invoke-virtual/range {v21 .. v22}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 461
    .local v7, "gameCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/games37/riversdk/core/model/UserInformation;->getAppLanguage()Ljava/lang/String;

    move-result-object v9

    .line 463
    .local v9, "language":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/games37/riversdk/core/model/SDKInformation;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "country":Ljava/lang/String;
    const-string v21, "serverId"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 467
    .local v17, "serverId":Ljava/lang/String;
    const-string v21, "roleId"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 469
    .local v14, "roleId":Ljava/lang/String;
    const-string v21, "roleLevel"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 471
    .local v15, "roleLevel":Ljava/lang/String;
    const-string v21, "roleName"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 473
    .local v16, "roleName":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v19

    .line 475
    .local v19, "timeStamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "devicePlate":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v10

    .line 479
    .local v10, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v21

    const-string v22, "PASSPORTKEY"

    .line 480
    invoke-virtual/range {v21 .. v22}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 482
    .local v13, "passortKey":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 484
    .local v12, "paramsData":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/games37/riversdk/core/model/UserInformation;->getUserId()Ljava/lang/String;

    move-result-object v20

    .line 487
    .local v20, "userId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v21, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 489
    .local v5, "forwardSb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 491
    .local v4, "forwardParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "devicePlate"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v21, "plat"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v21, "gameId"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v21, "serverId"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v21, "zone"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v21, "country"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v21, "userName"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v21, "origin"

    const-string v22, "sdk"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v21, "loginAccount"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v21, "sdkToken"

    const-string v22, "android-app"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v21, "sdkTokenData"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/http/www.gm99.com/kfchat"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v21, "params"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v21, "game_id"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v21, "gameCode"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v21, "userId"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v21, "sid"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v21, "plat"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v21, "roleName"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v21, "roleLevel"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v21, "role_id"

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v21, "timeStamp"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v21, "cid"

    const-string v22, "sdk"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v21, "scid"

    const-string v22, "sdk"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil;->parseMap2URL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 534
    .local v6, "forwardUrl":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 535
    const/4 v4, 0x0

    .line 537
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 539
    .local v18, "sign":Ljava/lang/String;
    const-string v21, "url"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "https://passport.gm99.com/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/games37/riversdk/gm99/constant/GM99URLConstant;->DIRLOGIN:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v21, "loginName"

    move-object/from16 v0, v21

    invoke-interface {v11, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v21, "token"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v21, "timeStamp"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v21, "zone"

    move-object/from16 v0, v21

    invoke-interface {v11, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v21, "forward"

    move-object/from16 v0, v21

    invoke-interface {v11, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    return-object v11
.end method

.method public static getRechargeMap(Landroid/app/Activity;)Ljava/util/Map;
    .registers 23
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-static {}, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->getInstance()Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    move-result-object v10

    .line 381
    .local v10, "purchaseDao":Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 383
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v20

    const-string v21, "GAMECODE"

    .line 384
    invoke-virtual/range {v20 .. v21}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "gameCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v20

    const-string v21, "PRODUCTID"

    .line 387
    invoke-virtual/range {v20 .. v21}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "gameId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getServerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 391
    .local v15, "serverCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getRoleId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 393
    .local v12, "roleId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getRoleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 395
    .local v14, "roleName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getRoleLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 397
    .local v13, "roleLevel":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/games37/riversdk/core/model/UserInformation;->getUserId()Ljava/lang/String;

    move-result-object v18

    .line 399
    .local v18, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v17

    .line 403
    .local v17, "timeStamp":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 405
    .local v16, "sign":Ljava/lang/String;
    const-string v20, "url"

    const-string v21, "https://mstore.gm99.com/mobile"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v20, "gameId"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v20, "gameCode"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v20, "serverId"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v20, "roleId"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v20, "roleName"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v20, "roleLevel"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v20, "loginAccount"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v20, "timeStamp"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v20, "sign"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v11, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v11, v2}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 420
    .local v11, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/RequestEntity;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 421
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_da
    :goto_da
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_fc

    .line 422
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 423
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 424
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    .line 425
    .local v19, "value":Ljava/lang/Object;
    if-eqz v19, :cond_da

    .line 426
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_da

    .line 429
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_fc
    return-object v9
.end method

.method public static getRetrievePasswordMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 439
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "url"

    const-string v2, "https://passport.gm99.com/center/m_forgot_pwd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v1, "origin"

    const-string v2, "sdk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-object v0
.end method

.method public static getUpdateMap(Landroid/app/Activity;)Ljava/util/Map;
    .registers 17
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v13

    const-string v14, "PRODUCTID"

    .line 102
    invoke-virtual {v13, v14}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/games37/riversdk/core/model/UserInformation;->getAppLanguage()Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "language":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/games37/riversdk/core/model/SDKInformation;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "country":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/games37/riversdk/core/model/UserInformation;->getServerId()Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, "serverId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, "timeStamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "devicePlate":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v13

    const-string v14, "PASSPORTKEY"

    .line 117
    invoke-virtual {v13, v14}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "passortKey":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v2, "forwardParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v13, "https://passport.gm99.com/bind/view"

    invoke-direct {v3, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, "forwardSb":Ljava/lang/StringBuffer;
    const-string v13, "devicePlate"

    invoke-interface {v2, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v13, "gameId"

    invoke-interface {v2, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v13, "serverId"

    invoke-interface {v2, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v13, "zone"

    invoke-interface {v2, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v13, "country"

    invoke-interface {v2, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v13, "userName"

    invoke-interface {v2, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil;->parseMap2URL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "forwardUrl":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 133
    const/4 v2, 0x0

    .line 136
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 138
    .local v11, "sign":Ljava/lang/String;
    const-string v13, "url"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "https://passport.gm99.com/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/games37/riversdk/gm99/constant/GM99URLConstant;->DIRLOGIN:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v13, "loginName"

    invoke-interface {v8, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v13, "token"

    invoke-interface {v8, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v13, "timeStamp"

    invoke-interface {v8, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v13, "zone"

    invoke-interface {v8, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v13, "forward"

    invoke-interface {v8, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-object v8
.end method

.method public static getUserCenterMap(Landroid/app/Activity;)Ljava/util/Map;
    .registers 23
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v10, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v19

    const-string v20, "PRODUCTID"

    .line 165
    invoke-virtual/range {v19 .. v20}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/games37/riversdk/core/model/UserInformation;->getAppLanguage()Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "language":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/games37/riversdk/core/model/SDKInformation;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "country":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/games37/riversdk/core/model/UserInformation;->getServerId()Ljava/lang/String;

    move-result-object v16

    .line 172
    .local v16, "serverId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/games37/riversdk/core/model/UserInformation;->getRoleId()Ljava/lang/String;

    move-result-object v13

    .line 173
    .local v13, "roleId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/games37/riversdk/core/model/UserInformation;->getRoleName()Ljava/lang/String;

    move-result-object v15

    .line 174
    .local v15, "roleName":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/games37/riversdk/core/model/UserInformation;->getRoleLevel()Ljava/lang/String;

    move-result-object v14

    .line 176
    .local v14, "roleLevel":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v18

    .line 178
    .local v18, "timeStamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "devicePlate":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v19

    const-string v20, "PASSPORTKEY"

    .line 183
    invoke-virtual/range {v19 .. v20}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 185
    .local v12, "passortKey":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "*"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, "paramsData":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v19, "https://passport.gm99.com/center/mobile"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 191
    .local v5, "forwardSb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v4, "forwardParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v19, "devicePlate"

    move-object/from16 v0, v19

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v19, "gameId"

    move-object/from16 v0, v19

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v19, "serverId"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v19, "roleId"

    move-object/from16 v0, v19

    invoke-interface {v4, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v19, "roleName"

    move-object/from16 v0, v19

    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v19, "roleLevel"

    move-object/from16 v0, v19

    invoke-interface {v4, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v19, "zone"

    move-object/from16 v0, v19

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v19, "country"

    move-object/from16 v0, v19

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v19, "userName"

    move-object/from16 v0, v19

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v19, "params"

    move-object/from16 v0, v19

    invoke-interface {v4, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil;->parseMap2URL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "forwardUrl":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 211
    const/4 v4, 0x0

    .line 213
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 215
    .local v17, "sign":Ljava/lang/String;
    const-string v19, "url"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "https://passport.gm99.com/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/games37/riversdk/gm99/constant/GM99URLConstant;->DIRLOGIN:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v19, "loginName"

    move-object/from16 v0, v19

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v19, "token"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v19, "timeStamp"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v19, "zone"

    move-object/from16 v0, v19

    invoke-interface {v10, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v19, "forward"

    move-object/from16 v0, v19

    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-object v10
.end method
