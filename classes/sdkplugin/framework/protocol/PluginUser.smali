.class public final Lsdkplugin/framework/protocol/PluginUser;
.super Lonlysdk/framework/protocol/OnlySDKUser;
.source "PluginUser.java"


# static fields
.field private static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$UserFunctionType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$UserFunctionType()[I
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lsdkplugin/framework/protocol/PluginUser;->$SWITCH_TABLE$onlysdk$framework$enumtype$UserFunctionType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lonlysdk/framework/enumtype/UserFunctionType;->values()[Lonlysdk/framework/enumtype/UserFunctionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeAntiAddictionQuery:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_a4

    :goto_16
    :try_start_16
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeEnterForum:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1f} :catch_a1

    :goto_1f
    :try_start_1f
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeEnterPlatformCenter:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_28} :catch_9f

    :goto_28
    :try_start_28
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeEnterService:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_9d

    :goto_32
    :try_start_32
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeFeedback:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_9b

    :goto_3b
    :try_start_3b
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeFloatWnd:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_99

    :goto_44
    :try_start_44
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeGuestRegister:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_97

    :goto_4e
    :try_start_4e
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeIsRealName:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_95

    :goto_58
    :try_start_58
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeLogIn:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_61} :catch_93

    :goto_61
    :try_start_61
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeRealNameRegister:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_91

    :goto_6b
    :try_start_6b
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeShowExitScreen:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_74} :catch_8f

    :goto_74
    :try_start_74
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeShowExitScreenAfterOnKeyDownBackPressEvent:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_7e} :catch_8d

    :goto_7e
    :try_start_7e
    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeShowPauseScreen:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_87} :catch_8b

    :goto_87
    sput-object v0, Lsdkplugin/framework/protocol/PluginUser;->$SWITCH_TABLE$onlysdk$framework$enumtype$UserFunctionType:[I

    goto/16 :goto_4

    :catch_8b
    move-exception v1

    goto :goto_87

    :catch_8d
    move-exception v1

    goto :goto_7e

    :catch_8f
    move-exception v1

    goto :goto_74

    :catch_91
    move-exception v1

    goto :goto_6b

    :catch_93
    move-exception v1

    goto :goto_61

    :catch_95
    move-exception v1

    goto :goto_58

    :catch_97
    move-exception v1

    goto :goto_4e

    :catch_99
    move-exception v1

    goto :goto_44

    :catch_9b
    move-exception v1

    goto :goto_3b

    :catch_9d
    move-exception v1

    goto :goto_32

    :catch_9f
    move-exception v1

    goto :goto_28

    :catch_a1
    move-exception v1

    goto/16 :goto_1f

    :catch_a4
    move-exception v1

    goto/16 :goto_16
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lonlysdk/framework/protocol/OnlySDKUser;-><init>()V

    .line 28
    const-string v0, "gm99"

    iput-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_strCurUserID:Ljava/lang/String;

    .line 29
    const-string v0, "gm99\u9422\u3126\u57db"

    iput-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_strCurUserName:Ljava/lang/String;

    .line 30
    const-string v0, "gm99"

    iput-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_channelName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lsdkplugin/framework/protocol/PluginUser;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lsdkplugin/framework/protocol/PluginUser;Ljava/util/Map;)V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lsdkplugin/framework/protocol/PluginUser;->loginSuccess(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2(Lsdkplugin/framework/protocol/PluginUser;)V
    .registers 1

    .prologue
    .line 134
    invoke-direct {p0}, Lsdkplugin/framework/protocol/PluginUser;->startSDKLoginView()V

    return-void
.end method

.method static synthetic access$3(Lsdkplugin/framework/protocol/PluginUser;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_channelName:Ljava/lang/String;

    return-object v0
.end method

.method private loginSuccess(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "userType"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/games37/riversdk/core/login/model/UserType;->toUserType(Ljava/lang/String;)Lcom/games37/riversdk/core/login/model/UserType;

    move-result-object v7

    .line 88
    .local v7, "userType":Lcom/games37/riversdk/core/login/model/UserType;
    const-string v8, "userId"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 89
    .local v6, "userId":Ljava/lang/String;
    const-string v8, "sign"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    .local v3, "sign":Ljava/lang/String;
    const-string v8, "timeStamp"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .local v5, "timeStamp":Ljava/lang/String;
    const-string v8, "device"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "dev":Ljava/lang/String;
    const-string v8, "gameCode"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    .local v2, "gameCode":Ljava/lang/String;
    const-string v8, "channelId"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "channelId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "userType:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "userId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 100
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sign:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "timeStamp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 101
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "dev:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "gameCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 102
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "channelId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 99
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "str":Ljava/lang/String;
    iget-object v8, p0, Lsdkplugin/framework/protocol/PluginUser;->_channelName:Ljava/lang/String;

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method private startSDKLoginView()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;

    new-instance v1, Lsdkplugin/framework/protocol/PluginUser$3;

    invoke-direct {v1, p0}, Lsdkplugin/framework/protocol/PluginUser$3;-><init>(Lsdkplugin/framework/protocol/PluginUser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method


# virtual methods
.method public doAntiAddictionQuery(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public doGuestRegister(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public doRealNameRegister(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public enterPlatformCenter(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;

    new-instance v1, Lsdkplugin/framework/protocol/PluginUser$6;

    invoke-direct {v1, p0}, Lsdkplugin/framework/protocol/PluginUser$6;-><init>(Lsdkplugin/framework/protocol/PluginUser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method

.method public enterPlatformFeedback(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public enterPlatformForum(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/RiverSDKApi;->sqSDKPresentOnlineChatView(Landroid/app/Activity;)V

    .line 388
    return-void
.end method

.method public enterService(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public getPluginVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "2.0.0"

    return-object v0
.end method

.method public isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z
    .registers 5
    .param p1, "type"    # Lonlysdk/framework/enumtype/UserFunctionType;

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "bSupport":Z
    invoke-static {}, Lsdkplugin/framework/protocol/PluginUser;->$SWITCH_TABLE$onlysdk$framework$enumtype$UserFunctionType()[I

    move-result-object v1

    invoke-virtual {p1}, Lonlysdk/framework/enumtype/UserFunctionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_12

    .line 457
    :goto_e
    :pswitch_e
    return v0

    .line 451
    :pswitch_f
    const/4 v0, 0x1

    .line 453
    goto :goto_e

    .line 442
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public login(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;

    new-instance v1, Lsdkplugin/framework/protocol/PluginUser$1;

    invoke-direct {v1, p0}, Lsdkplugin/framework/protocol/PluginUser$1;-><init>(Lsdkplugin/framework/protocol/PluginUser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public logout(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;

    new-instance v1, Lsdkplugin/framework/protocol/PluginUser$2;

    invoke-direct {v1, p0}, Lsdkplugin/framework/protocol/PluginUser$2;-><init>(Lsdkplugin/framework/protocol/PluginUser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public openSDKFloatWnd(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_isOpenedFloatWnd:Z

    if-nez v0, :cond_7

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_isOpenedFloatWnd:Z

    .line 355
    :cond_7
    return-void
.end method

.method public releaseData()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Lonlysdk/framework/protocol/OnlySDKUser;->releaseData()V

    .line 46
    return-void
.end method

.method public showExitScreen(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lcom/ledo/fantasy/game/GameApp;->s_GameJniInited:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;

    if-nez v0, :cond_d

    .line 224
    :cond_c
    :goto_c
    return-void

    .line 209
    :cond_d
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lsdkplugin/framework/protocol/PluginUser$5;

    invoke-direct {v1, p0}, Lsdkplugin/framework/protocol/PluginUser$5;-><init>(Lsdkplugin/framework/protocol/PluginUser;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public showPauseScreen(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public submitExtendDataToSDK(Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 342
    :cond_2
    :goto_2
    return-void

    .line 307
    :cond_3
    const-string v1, ""

    .line 309
    .local v1, "gameFlowType":Ljava/lang/String;
    if-eqz p1, :cond_f

    .line 310
    const-string v6, "gameFlowType"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "gameFlowType":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 313
    .restart local v1    # "gameFlowType":Ljava/lang/String;
    :cond_f
    const-string v6, "roleID"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 314
    .local v3, "str_roleID":Ljava/lang/String;
    const-string v6, "roleName"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 316
    .local v4, "str_roleName":Ljava/lang/String;
    const-string v6, "loginGame"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 318
    const-string v6, "zoneID"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 320
    .local v5, "str_zoneID":Ljava/lang/String;
    sget-object v6, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    .line 321
    iget-object v7, p0, Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;

    .line 320
    invoke-virtual {v6, v7, v5, v3, v4}, Lcom/games37/riversdk/core/RiverSDKApi;->sqSDKReportServerCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 330
    .end local v5    # "str_zoneID":Ljava/lang/String;
    :cond_37
    const-string v6, "upgradeLevel"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 332
    const-string v2, ""

    .line 333
    .local v2, "roleLevel":Ljava/lang/String;
    const-string v6, "roleLevel"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5f

    const-string v6, ""

    const-string v7, "roleLevel"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 334
    const-string v6, "roleLevel"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "roleLevel":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 336
    .restart local v2    # "roleLevel":Ljava/lang/String;
    :cond_5f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v0, "eventValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "af_level"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v6

    iget-object v7, p0, Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;

    .line 340
    const-string v8, "af_level_achieved"

    .line 339
    invoke-virtual {v6, v7, v8, v0}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public switchAccount(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;

    new-instance v1, Lsdkplugin/framework/protocol/PluginUser$4;

    invoke-direct {v1, p0}, Lsdkplugin/framework/protocol/PluginUser$4;-><init>(Lsdkplugin/framework/protocol/PluginUser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method
