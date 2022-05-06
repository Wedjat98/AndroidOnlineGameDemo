.class public Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;
.super Lcom/games37/riversdk/core/login/manager/LoginManager;
.source "GM99LoginManagerImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GM99LoginManagerImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/games37/riversdk/core/login/manager/LoginManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;ZLcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 7
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/games37/riversdk/core/login/model/UserType;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lorg/json/JSONObject;
    .param p6, "x6"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 48
    invoke-static/range {p0 .. p6}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->handleCallbackSuccess(Landroid/app/Activity;ZLcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;ZLjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 4
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->netErrorCallback(Landroid/app/Activity;ZLjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    return-void
.end method

.method public static canAutoLogin(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 615
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getAutoLoginFlag(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized directLogin(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 22
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isShowLoginView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
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
    .line 273
    .local p2, "loginCallback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-class v18, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;

    monitor-enter v18

    :try_start_3
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v3

    const-string v4, "mac"

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/UserInformation;->setThirdPlatform(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v17

    .line 277
    .local v17, "timestamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getMac()Ljava/lang/String;

    move-result-object v13

    .line 279
    .local v13, "loginId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v3

    const-string v4, "GAMECODE"

    .line 280
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 282
    .local v10, "gameCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v3

    const-string v4, "PRODUCTID"

    .line 283
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 285
    .local v11, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v3

    const-string v4, "SECRETKEY"

    .line 286
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 288
    .local v15, "secretKey":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getGpid()Ljava/lang/String;

    move-result-object v12

    .line 290
    .local v12, "gpid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 291
    .local v16, "sign":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, "encryptionSign":Ljava/lang/String;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v14, "requestBundle":Landroid/os/Bundle;
    const-string v3, "loginId"

    invoke-virtual {v14, v3, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v3, "timeStamp"

    move-object/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v3, "gpid"

    invoke-virtual {v14, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v3, "gameCode"

    invoke-virtual {v14, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v3, "gameId"

    invoke-virtual {v14, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v3, "sign"

    invoke-virtual {v14, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v6, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v6, v14}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 303
    .local v6, "httpRequestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://182.160.13.233:99/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/games37/riversdk/gm99/constant/GM99URLConstant;->DIRECT_LOGIN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "url":Ljava/lang/String;
    new-instance v8, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v8, v0, v1, v2}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$3;-><init>(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 321
    .local v8, "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v4, p0

    .line 322
    invoke-virtual/range {v3 .. v8}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V
    :try_end_bd
    .catchall {:try_start_3 .. :try_end_bd} :catchall_bf

    .line 323
    monitor-exit v18

    return-void

    .line 273
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "httpRequestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    .end local v8    # "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    .end local v9    # "encryptionSign":Ljava/lang/String;
    .end local v10    # "gameCode":Ljava/lang/String;
    .end local v11    # "gameId":Ljava/lang/String;
    .end local v12    # "gpid":Ljava/lang/String;
    .end local v13    # "loginId":Ljava/lang/String;
    .end local v14    # "requestBundle":Landroid/os/Bundle;
    .end local v15    # "secretKey":Ljava/lang/String;
    .end local v16    # "sign":Ljava/lang/String;
    .end local v17    # "timestamp":Ljava/lang/String;
    :catchall_bf
    move-exception v3

    monitor-exit v18

    throw v3
.end method

.method public static doAutoLoginAction(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "showLoginView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
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
    .line 63
    .local p2, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->canAutoLogin(Landroid/content/Context;)Z

    move-result v6

    .line 64
    .local v6, "canAutoLogin":Z
    if-nez v6, :cond_22

    .line 66
    const-string v0, "GM99LoginManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doAutoLoginAction canAutoLogin="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->presentLoginView(Landroid/app/Activity;)V

    .line 81
    :goto_21
    return-void

    .line 71
    :cond_22
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getUserType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "curUserTypeStr":Ljava/lang/String;
    sget-object v2, Lcom/games37/riversdk/core/login/model/UserType;->NULL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    .line 73
    .local v2, "curUserType":Lcom/games37/riversdk/core/login/model/UserType;
    invoke-static {v7}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 74
    invoke-static {v7}, Lcom/games37/riversdk/core/login/model/UserType;->toUserType(Ljava/lang/String;)Lcom/games37/riversdk/core/login/model/UserType;

    move-result-object v2

    .line 77
    :cond_36
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getLastLoginAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "userName":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getLastLoginPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .local v4, "pwd":Ljava/lang/String;
    move-object v0, p0

    move v1, p1

    move-object v5, p2

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->doLoginAction(Landroid/app/Activity;ZLcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_21
.end method

.method public static doLoginAction(Landroid/app/Activity;ZLcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isShowLoginView"    # Z
    .param p2, "loginType"    # Lcom/games37/riversdk/core/login/model/UserType;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/games37/riversdk/core/login/model/UserType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 100
    .local p5, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v1, "GM99LoginManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLoginAction loginType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " username = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pwd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->NORMAL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    if-ne v1, p2, :cond_47

    .line 104
    invoke-static {p3}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {p4}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 105
    :cond_3c
    const-string v1, "GM99LoginManagerImpl"

    const-string v2, "doLoginAction the username or pwd is empty!"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p0}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->presentLoginView(Landroid/app/Activity;)V

    .line 133
    :goto_46
    return-void

    .line 111
    :cond_47
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/NetUtil;->hasNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 112
    const-string v1, "a1_network_error_notice"

    invoke-static {p0, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "msg":Ljava/lang/String;
    const/16 v1, 0x2711

    invoke-interface {p5, v1, v0}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    goto :goto_46

    .line 117
    .end local v0    # "msg":Ljava/lang/String;
    :cond_5d
    sget-object v1, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$6;->$SwitchMap$com$games37$riversdk$core$login$model$UserType:[I

    invoke-virtual {p2}, Lcom/games37/riversdk/core/login/model/UserType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_76

    goto :goto_46

    .line 120
    :pswitch_69
    invoke-static {p0, p1, p3, p4, p5}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->normalLogin(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_46

    .line 124
    :pswitch_6d
    invoke-static {p0, p1, p5}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->directLogin(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_46

    .line 128
    :pswitch_71
    invoke-static {p0, p1, p5}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->facebookAuth(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_46

    .line 117
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_69
        :pswitch_6d
        :pswitch_71
    .end packed-switch
.end method

.method public static doRegisterAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 21
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 148
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v16

    .line 150
    .local v16, "timestamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v4

    const-string v5, "GAMECODE"

    .line 151
    invoke-virtual {v4, v5}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "gameCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v4

    const-string v5, "PRODUCTID"

    .line 154
    invoke-virtual {v4, v5}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v4

    const-string v5, "SECRETKEY"

    .line 157
    invoke-virtual {v4, v5}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 159
    .local v14, "secretKey":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 160
    .local v15, "sign":Ljava/lang/String;
    invoke-static {v15}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "encryptionSign":Ljava/lang/String;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v13, "requestBundle":Landroid/os/Bundle;
    const-string v4, "gameId"

    invoke-virtual {v13, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v4, "gameCode"

    invoke-virtual {v13, v4, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v4, "timeStamp"

    move-object/from16 v0, v16

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v4, "sign"

    invoke-virtual {v13, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "loginName"

    move-object/from16 v0, p1

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "loginPwd"

    move-object/from16 v0, p2

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v7, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v7, v13}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 177
    .local v7, "httpRequestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    const-string v6, "http://182.160.13.233:99/register"

    .line 178
    .local v6, "url":Ljava/lang/String;
    new-instance v9, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 194
    .local v9, "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v4

    const/4 v8, 0x1

    move-object/from16 v5, p0

    .line 195
    invoke-virtual/range {v4 .. v9}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 196
    return-void
.end method

.method public static declared-synchronized facebookAuth(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isShowLoginView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
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
    .line 335
    .local p2, "callBack":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-class v1, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;-><init>(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookLogin(Landroid/app/Activity;ZILcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 370
    monitor-exit v1

    return-void

    .line 335
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized facebookLogin(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 23
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isShowLoginView"    # Z
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "businessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 387
    .local p4, "callBack":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-class v17, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;

    monitor-enter v17

    :try_start_3
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v3

    const-string v4, "fb"

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/UserInformation;->setThirdPlatform(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v16

    .line 391
    .local v16, "timestamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v3

    const-string v4, "FACEBOOK_APP_ID"

    .line 392
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, "facebook_appid":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v3

    const-string v4, "GAMECODE"

    .line 395
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 397
    .local v11, "gameCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v3

    const-string v4, "PRODUCTID"

    .line 398
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 400
    .local v12, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v3

    const-string v4, "SECRETKEY"

    .line 401
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 403
    .local v14, "secretKey":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 404
    .local v15, "sign":Ljava/lang/String;
    invoke-static {v15}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 406
    .local v9, "encryptionSign":Ljava/lang/String;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v13, "requestBundle":Landroid/os/Bundle;
    const-string v3, "accessToken"

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v3, "appId"

    invoke-virtual {v13, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v3, "businessToken"

    move-object/from16 v0, p3

    invoke-virtual {v13, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v3, "timeStamp"

    move-object/from16 v0, v16

    invoke-virtual {v13, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v3, "gameCode"

    invoke-virtual {v13, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v3, "gameId"

    invoke-virtual {v13, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v3, "sign"

    invoke-virtual {v13, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v6, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v6, v13}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 417
    .local v6, "httpRequestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    const-string v5, "http://182.160.13.233:99/facebook"

    .line 419
    .local v5, "url":Ljava/lang/String;
    new-instance v8, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$5;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v8, v0, v1, v2}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$5;-><init>(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 435
    .local v8, "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v4, p0

    .line 436
    invoke-virtual/range {v3 .. v8}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V
    :try_end_b9
    .catchall {:try_start_3 .. :try_end_b9} :catchall_bb

    .line 437
    monitor-exit v17

    return-void

    .line 387
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "httpRequestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    .end local v8    # "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    .end local v9    # "encryptionSign":Ljava/lang/String;
    .end local v10    # "facebook_appid":Ljava/lang/String;
    .end local v11    # "gameCode":Ljava/lang/String;
    .end local v12    # "gameId":Ljava/lang/String;
    .end local v13    # "requestBundle":Landroid/os/Bundle;
    .end local v14    # "secretKey":Ljava/lang/String;
    .end local v15    # "sign":Ljava/lang/String;
    .end local v16    # "timestamp":Ljava/lang/String;
    :catchall_bb
    move-exception v3

    monitor-exit v17

    throw v3
.end method

.method private static handleCallbackSuccess(Landroid/app/Activity;ZLcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isShowLoginView"    # Z
    .param p2, "type"    # Lcom/games37/riversdk/core/login/model/UserType;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .param p5, "paramObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/games37/riversdk/core/login/model/UserType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
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
    .line 506
    .local p6, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v4, "GM99LoginManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handleCallbackSuccess isShowLoginView = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " userType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " username = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_63

    const-string v3, "null"

    :goto_37
    invoke-static {v4, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    if-eqz p5, :cond_62

    .line 511
    const-string v3, "result"

    invoke-virtual {p5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 513
    .local v0, "code":I
    const-string v3, "msg"

    invoke-virtual {p5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "message":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_68

    .line 516
    const-string v3, "data"

    invoke-virtual {p5, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 518
    .local v1, "data":Lorg/json/JSONObject;
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v3

    invoke-virtual {v3, p0, p2, v1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->updateUserProfileInApps(Landroid/content/Context;Lcom/games37/riversdk/core/login/model/UserType;Lorg/json/JSONObject;)V

    .line 520
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v3

    invoke-virtual {v3, p0, p3, p4, p2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->updateUserProfileInMemory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/login/model/UserType;)V

    .line 522
    invoke-static {p2, v2, v1, p6}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->loginSuccessCallback(Lcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 528
    .end local v0    # "code":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    :cond_62
    :goto_62
    return-void

    .line 508
    :cond_63
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    .line 525
    .restart local v0    # "code":I
    .restart local v2    # "message":Ljava/lang/String;
    :cond_68
    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v2, p6}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->loginFailedCallback(Landroid/app/Activity;ZILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_62
.end method

.method private static loginFailedCallback(Landroid/app/Activity;ZILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isShowLoginView"    # Z
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "ZI",
            "Ljava/lang/String;",
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
    .line 579
    .local p4, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_9

    .line 580
    invoke-static {p0, p3}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 581
    invoke-static {p0}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->presentLoginView(Landroid/app/Activity;)V

    .line 585
    :goto_8
    return-void

    .line 583
    :cond_9
    invoke-interface {p4, p2, p3}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_8
.end method

.method private static loginSuccessCallback(Lcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Lorg/json/JSONObject;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 8
    .param p0, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "content"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/games37/riversdk/core/login/model/UserType;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
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
    .line 542
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 544
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userType"

    invoke-virtual {p0}, Lcom/games37/riversdk/core/login/model/UserType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "msg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "userId"

    const-string v2, "ID"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v1, "sign"

    const-string v2, "GAME_TOKEN"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v1, "timeStamp"

    const-string v2, "TIMESTAMP"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v1, "device"

    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/SDKInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v1, "gameCode"

    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v2

    const-string v3, "GAMECODE"

    .line 557
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v1, "channelId"

    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/SDKInformation;->getMetaDataBundle()Lcom/games37/riversdk/core/model/DataBundle;

    move-result-object v2

    const-string v3, "RiverSDK.PublishPlatform"

    .line 560
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/model/DataBundle;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const/4 v1, 0x1

    invoke-interface {p3, v1, v0}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 562
    return-void
.end method

.method public static logout(Landroid/content/Context;Lcom/games37/riversdk/core/login/model/UserType;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/games37/riversdk/core/login/model/UserType;",
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
    .line 472
    .local p2, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v0, Lcom/games37/riversdk/core/login/model/UserType;->FACEBOOK_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    if-ne v0, p1, :cond_b

    .line 474
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->logoutByFB()V

    .line 477
    :cond_b
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/core/model/UserInformation;->resetUserInformation()V

    .line 479
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->clearRealtimeLoginData(Landroid/content/Context;)V

    .line 481
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setAutoLoginFlag(Landroid/content/Context;Z)V

    .line 483
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    sget-object v1, Lcom/games37/riversdk/core/login/model/UserType;->NULL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    invoke-virtual {v0, p0, v1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setUserType(Landroid/content/Context;Lcom/games37/riversdk/core/login/model/UserType;)V

    .line 485
    const/4 v0, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v0, v1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 486
    return-void
.end method

.method private static netErrorCallback(Landroid/app/Activity;ZLjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isShowLoginView"    # Z
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/lang/String;",
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
    .line 600
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_9

    .line 601
    invoke-static {p0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 602
    invoke-static {p0}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->presentLoginView(Landroid/app/Activity;)V

    .line 606
    :goto_8
    return-void

    .line 604
    :cond_9
    const/16 v0, 0x2711

    invoke-interface {p3, v0, p2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    goto :goto_8
.end method

.method public static declared-synchronized normalLogin(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 23
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isShowLoginView"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 213
    .local p4, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-class v17, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;

    monitor-enter v17

    :try_start_3
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v2

    .line 214
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v3

    const-string v4, "PTCODE"

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/model/UserInformation;->setThirdPlatform(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, "timestamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v2

    const-string v3, "GAMECODE"

    .line 219
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "gameCode":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v2

    const-string v3, "PRODUCTID"

    .line 222
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 224
    .local v10, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v2

    const-string v3, "SECRETKEY"

    .line 225
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, "secretKey":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, "sign":Ljava/lang/String;
    invoke-static {v14}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, "encryptionSign":Ljava/lang/String;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v12, "requestBundle":Landroid/os/Bundle;
    const-string v2, "timeStamp"

    invoke-virtual {v12, v2, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v2, "gameCode"

    invoke-virtual {v12, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "loginName"

    move-object/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v2, "loginPwd"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "gameId"

    invoke-virtual {v12, v2, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "sign"

    invoke-virtual {v12, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v11, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v11, v12}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 241
    .local v11, "httpRequestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    const-string v16, "http://182.160.13.233:99/login"

    .line 242
    .local v16, "url":Ljava/lang/String;
    new-instance v1, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$2;

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$2;-><init>(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 258
    .local v1, "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v2

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object v5, v11

    move-object v7, v1

    .line 259
    invoke-virtual/range {v2 .. v7}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V
    :try_end_b6
    .catchall {:try_start_3 .. :try_end_b6} :catchall_b8

    .line 260
    monitor-exit v17

    return-void

    .line 213
    .end local v1    # "netCallback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    .end local v8    # "encryptionSign":Ljava/lang/String;
    .end local v9    # "gameCode":Ljava/lang/String;
    .end local v10    # "gameId":Ljava/lang/String;
    .end local v11    # "httpRequestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    .end local v12    # "requestBundle":Landroid/os/Bundle;
    .end local v13    # "secretKey":Ljava/lang/String;
    .end local v14    # "sign":Ljava/lang/String;
    .end local v15    # "timestamp":Ljava/lang/String;
    .end local v16    # "url":Ljava/lang/String;
    :catchall_b8
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 622
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->onActivityResult(IILandroid/content/Intent;)V

    .line 623
    return-void
.end method

.method public static presentLoginView(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 445
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/games37/riversdk/core/login/activity/SDKLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "IVIEW_CLASS_PATH"

    const-string v2, "com.games37.riversdk.gm99.login.view.GM99LoginView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 448
    return-void
.end method

.method public static showWelcomeToast(Landroid/app/Activity;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 457
    new-instance v0, Lcom/games37/riversdk/core/login/view/WelcomeToast;

    const-string v2, "a1_sdk_dialog_welcome"

    const-string v3, "tvAccount"

    invoke-direct {v0, p0, v2, v3}, Lcom/games37/riversdk/core/login/view/WelcomeToast;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .local v0, "toast":Lcom/games37/riversdk/core/login/view/WelcomeToast;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "welcomeMsg":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/view/WelcomeToast;->show(Ljava/lang/String;)V

    .line 462
    return-void
.end method
