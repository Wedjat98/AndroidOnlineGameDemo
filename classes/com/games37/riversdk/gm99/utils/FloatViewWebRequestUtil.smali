.class public Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil;
.super Ljava/lang/Object;
.source "FloatViewWebRequestUtil.java"


# static fields
.field public static final CLEAR_RED_POINT:Ljava/lang/String; = "clear_red_point"

.field public static final FB_SHARE:Ljava/lang/String; = "fb_share"

.field public static final GET_SDK_PARAM:Ljava/lang/String; = "get_sdk_param"

.field public static final TAG:Ljava/lang/String; = "FloatViewRequestUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFunctionList(Landroid/content/Context;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v6

    .line 119
    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v6

    const-string v7, "PRODUCTID"

    invoke-virtual {v6, v7}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "gameId":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v3, "requestBundle":Landroid/os/Bundle;
    const-string v6, "game_id"

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_1d
    const-string v6, "device"

    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v6, "user"

    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_37} :catch_5f

    .line 128
    :goto_37
    const-string v6, "params"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v6, "action"

    const-string v7, "get_sdk_param"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v5, "https://eventsapi.gm99.com/river_sdk/execute"

    .line 132
    .local v5, "url":Ljava/lang/String;
    new-instance v1, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil$2;

    invoke-direct {v1, p1}, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil$2;-><init>(Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 165
    .local v1, "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    new-instance v4, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v4, v3}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 166
    .local v4, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v6

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v4, v1}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doGetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/games37/riversdk/core/callback/NetCallback;)V

    .line 168
    return-void

    .line 126
    .end local v1    # "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    .end local v4    # "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    .end local v5    # "url":Ljava/lang/String;
    :catch_5f
    move-exception v6

    goto :goto_37
.end method

.method public static getShareReward(Landroid/content/Context;Lcom/games37/riversdk/core/model/RoleData;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roleData"    # Lcom/games37/riversdk/core/model/RoleData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/games37/riversdk/core/model/RoleData;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p2, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v6

    .line 246
    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v6

    const-string v7, "PRODUCTID"

    invoke-virtual {v6, v7}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "gameId":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v3, "requestBundle":Landroid/os/Bundle;
    const-string v6, "game_id"

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_1d
    const-string v6, "device"

    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v6, "user"

    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v7, "role_name"

    if-nez p1, :cond_83

    const-string v6, ""

    :goto_3d
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v7, "role_id"

    if-nez p1, :cond_88

    const-string v6, ""

    :goto_46
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v7, "role_level"

    if-nez p1, :cond_8d

    const-string v6, ""

    :goto_4f
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v7, "sid"

    if-nez p1, :cond_92

    const-string v6, ""

    :goto_58
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5b} :catch_97

    .line 259
    :goto_5b
    const-string v6, "params"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v6, "action"

    const-string v7, "fb_share"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v5, "https://eventsapi.gm99.com/river_sdk/execute"

    .line 263
    .local v5, "url":Ljava/lang/String;
    new-instance v1, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil$4;

    invoke-direct {v1, p2}, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil$4;-><init>(Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 297
    .local v1, "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    new-instance v4, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v4, v3}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 298
    .local v4, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v6

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v4, v1}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doGetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/games37/riversdk/core/callback/NetCallback;)V

    .line 300
    return-void

    .line 253
    .end local v1    # "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    .end local v4    # "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    .end local v5    # "url":Ljava/lang/String;
    :cond_83
    :try_start_83
    invoke-virtual {p1}, Lcom/games37/riversdk/core/model/RoleData;->getRoleName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    .line 254
    :cond_88
    invoke-virtual {p1}, Lcom/games37/riversdk/core/model/RoleData;->getRoleId()Ljava/lang/String;

    move-result-object v6

    goto :goto_46

    .line 255
    :cond_8d
    invoke-virtual {p1}, Lcom/games37/riversdk/core/model/RoleData;->getRoleLevel()Ljava/lang/String;

    move-result-object v6

    goto :goto_4f

    .line 256
    :cond_92
    invoke-virtual {p1}, Lcom/games37/riversdk/core/model/RoleData;->getServerId()Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_95} :catch_97

    move-result-object v6

    goto :goto_58

    .line 257
    :catch_97
    move-exception v6

    goto :goto_5b
.end method

.method public static reportClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ext"    # Ljava/lang/String;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "functionType"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v5

    .line 184
    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v5

    const-string v6, "PRODUCTID"

    invoke-virtual {v5, v6}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "gameId":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v2, "requestBundle":Landroid/os/Bundle;
    const-string v5, "gid"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v5, "la"

    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v5, "id"

    const-string v6, "10"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v5, "ext"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v5, "e1"

    invoke-virtual {v2, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v5, "e2"

    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v4, "https://collectdata.gm99.com/ps.gif"

    .line 200
    .local v4, "url":Ljava/lang/String;
    new-instance v1, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil$3;

    invoke-direct {v1}, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil$3;-><init>()V

    .line 229
    .local v1, "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    new-instance v3, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v3, v2}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 230
    .local v3, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v5

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "https://collectdata.gm99.com/ps.gif"

    invoke-virtual {v5, v6, v7, v3, v1}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doGetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/games37/riversdk/core/callback/NetCallback;)V

    .line 232
    return-void
.end method

.method public static setUnreadState(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "configId"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v6

    .line 58
    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v6

    const-string v7, "PRODUCTID"

    invoke-virtual {v6, v7}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "gameId":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v3, "requestBundle":Landroid/os/Bundle;
    const-string v6, "game_id"

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_1d
    const-string v6, "device"

    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v6, "user"

    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v6, "config_id"

    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3c} :catch_60

    .line 70
    :goto_3c
    const-string v6, "params"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v6, "action"

    const-string v7, "clear_red_point"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v5, "https://eventsapi.gm99.com/river_sdk/execute"

    .line 75
    .local v5, "url":Ljava/lang/String;
    new-instance v1, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil$1;

    invoke-direct {v1, p1}, Lcom/games37/riversdk/gm99/utils/FloatViewWebRequestUtil$1;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    new-instance v4, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v4, v3}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 105
    .local v4, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v6

    .line 106
    invoke-virtual {v6, p0, v5, v4, v1}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doGetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/games37/riversdk/core/callback/NetCallback;)V

    .line 107
    return-void

    .line 67
    .end local v1    # "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    .end local v4    # "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    .end local v5    # "url":Ljava/lang/String;
    :catch_60
    move-exception v6

    goto :goto_3c
.end method
