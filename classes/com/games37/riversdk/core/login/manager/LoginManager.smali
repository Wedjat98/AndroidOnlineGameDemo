.class public Lcom/games37/riversdk/core/login/manager/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field public static final AUTH_FAIL_FLAG:I = 0x1

.field public static final DIRECT_LOGIN_EVENTKEY:Ljava/lang/String; = "dirlogin"

.field public static final FACEBOOK_LOGIN_EVENTKEY:Ljava/lang/String; = "facebook"

.field public static final GOOGLE_LOGIN_EVENTKEY:Ljava/lang/String; = "google"

.field public static final HUAWEI_LOGIN_EVENTKEY:Ljava/lang/String; = "huawei"

.field public static final LOGIN_FAIL_FLAG:I = 0x2

.field public static final MIGRATE_CODE_LOGIN_EVENTKEY:Ljava/lang/String; = "migrate_code"

.field public static final NORMAL_LOGIN_EVENTKEY:Ljava/lang/String; = "login"

.field public static final REGISTER_EVENTKEY:Ljava/lang/String; = "register"

.field public static final TWITTER_LOGIN_EVENTKEY:Ljava/lang/String; = "twitter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasLogin()Z
    .registers 1

    .prologue
    .line 58
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginStatus()Z

    move-result v0

    return v0
.end method

.method public static isThirdPlatLogin(Lcom/games37/riversdk/core/login/model/UserType;)Z
    .registers 3
    .param p0, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p0, :cond_4

    .line 75
    :cond_3
    :goto_3
    return v0

    .line 70
    :cond_4
    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->FACEBOOK_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    if-eq v1, p0, :cond_10

    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->TWITTER_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    if-eq v1, p0, :cond_10

    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->GOOGLE_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    if-ne v1, p0, :cond_3

    .line 73
    :cond_10
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static report(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "eventKey"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/UserInformation;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v7

    const-string v8, "PRODUCTID"

    .line 96
    invoke-virtual {v7, v8}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v7

    const-string v8, "GAMECODE"

    .line 99
    invoke-virtual {v7, v8}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "gameCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/games37/riversdk/core/model/SDKInformation;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v5, "reportJson":Lorg/json/JSONObject;
    :try_start_39
    const-string v7, "msg"

    invoke-virtual {v5, v7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v7, "errorCode"

    invoke-virtual {v5, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string v7, "userId"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v7, "gameId"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v7, "gameCode"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v7, "packageName"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v7, "loginAccount"

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_5c} :catch_64

    .line 115
    :goto_5c
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p2, v7}, Lcom/games37/riversdk/core/purchase/dao/AFSDKHelper;->reportLoginErrorInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-void

    .line 112
    :catch_64
    move-exception v0

    .line 113
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5c
.end method
