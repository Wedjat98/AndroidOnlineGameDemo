.class public Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;
.super Ljava/lang/Object;
.source "WebRequestUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WebRequestUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;
    .registers 21
    .param p1, "secretKey"    # Ljava/lang/String;
    .param p2, "paramsBundle"    # Landroid/os/Bundle;

    .prologue
    .line 134
    new-instance v9, Lcom/games37/riversdk/core/model/RequestEntity;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 136
    .local v9, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v2, v14, v16

    .line 138
    .local v2, "currTimestamp":J
    const-string v11, "difference"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 139
    .local v4, "diff":J
    add-long v12, v2, v4

    .line 140
    .local v12, "timestamp":J
    const-string v11, "timestamp"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v11, v14}, Lcom/games37/riversdk/core/model/RequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "loginAccount":Ljava/lang/String;
    const-string v11, "loginAccount"

    invoke-virtual {v9, v11, v8}, Lcom/games37/riversdk/core/model/RequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v11

    const-string v14, "GAMECODE"

    .line 148
    invoke-virtual {v11, v14}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "gameCode":Ljava/lang/String;
    const-string v11, "gameCode"

    invoke-virtual {v9, v11, v6}, Lcom/games37/riversdk/core/model/RequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v11

    const-string v14, "PRODUCTID"

    .line 153
    invoke-virtual {v11, v14}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "gameId":Ljava/lang/String;
    const-string v11, "gameId"

    invoke-virtual {v9, v11, v7}, Lcom/games37/riversdk/core/model/RequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;->getSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "sign":Ljava/lang/String;
    const-string v11, "sign"

    invoke-virtual {v9, v11, v10}, Lcom/games37/riversdk/core/model/RequestEntity;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object v9
.end method

.method protected getSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p2, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 91
    .local v3, "sortedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 94
    .local v1, "entrys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, "basestring":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    .local v2, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 98
    .end local v2    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected paraseResultAndCallback(Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)Z
    .registers 9
    .param p1, "paramObject"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    if-nez p1, :cond_5

    .line 122
    :cond_4
    :goto_4
    return v2

    .line 113
    :cond_5
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "result":I
    if-ne v3, v1, :cond_f

    move v2, v3

    .line 115
    goto :goto_4

    .line 117
    :cond_f
    const-string v3, "msg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "message":Ljava/lang/String;
    const-string v3, "WebRequestUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "paraseJsonData message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz p2, :cond_4

    .line 120
    invoke-interface {p2, v2, v0}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_4
.end method

.method public requestServerTimestamp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p5, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/lang/Long;>;"
    invoke-virtual {p0, p3, p4}, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;->getRequestEntity(Ljava/lang/String;Landroid/os/Bundle;)Lcom/games37/riversdk/core/model/RequestEntity;

    move-result-object v3

    .line 54
    .local v3, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v5, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil$1;

    invoke-direct {v5, p0, p5}, Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil$1;-><init>(Lcom/games37/riversdk/core/facebook/utils/WebRequestUtil;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object v1, p1

    move-object v2, p2

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 79
    return-void
.end method
