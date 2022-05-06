.class public final Lsdkplugin/framework/protocol/PluginAgent;
.super Lonlysdk/framework/protocol/OnlySDKAgent;
.source "PluginAgent.java"


# static fields
.field private static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$AgentFuncType:[I

.field public static riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;


# direct methods
.method static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$AgentFuncType()[I
    .registers 3

    .prologue
    .line 23
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->$SWITCH_TABLE$onlysdk$framework$enumtype$AgentFuncType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lonlysdk/framework/enumtype/AgentFuncType;->values()[Lonlysdk/framework/enumtype/AgentFuncType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeGameWillNotShowInSDKRun:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_cb

    :goto_15
    :try_start_15
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnActivityResultHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_c8

    :goto_1e
    :try_start_1e
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnBackPressedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_c5

    :goto_28
    :try_start_28
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnConfigurationChangedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_31} :catch_c2

    :goto_31
    :try_start_31
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnCreateHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_bf

    :goto_3b
    :try_start_3b
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnDestroyHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_45} :catch_bd

    :goto_45
    :try_start_45
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnNewIntentHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_bb

    :goto_4f
    :try_start_4f
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnPauseHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_58} :catch_b9

    :goto_58
    :try_start_58
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnRestartHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_b7

    :goto_62
    :try_start_62
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnResumeHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6b} :catch_b5

    :goto_6b
    :try_start_6b
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnSaveInstanceStateHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_b3

    :goto_75
    :try_start_75
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStartHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7e} :catch_b1

    :goto_7e
    :try_start_7e
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStopBeforeSuperHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_88} :catch_af

    :goto_88
    :try_start_88
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnStopHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_91} :catch_ad

    :goto_91
    :try_start_91
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeOnWindowFocusChangedHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9b} :catch_ab

    :goto_9b
    :try_start_9b
    sget-object v1, Lonlysdk/framework/enumtype/AgentFuncType;->kAgentFuncTypeonRequestPermissionsResultHandle:Lonlysdk/framework/enumtype/AgentFuncType;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a5} :catch_a9

    :goto_a5
    sput-object v0, Lsdkplugin/framework/protocol/PluginAgent;->$SWITCH_TABLE$onlysdk$framework$enumtype$AgentFuncType:[I

    goto/16 :goto_4

    :catch_a9
    move-exception v1

    goto :goto_a5

    :catch_ab
    move-exception v1

    goto :goto_9b

    :catch_ad
    move-exception v1

    goto :goto_91

    :catch_af
    move-exception v1

    goto :goto_88

    :catch_b1
    move-exception v1

    goto :goto_7e

    :catch_b3
    move-exception v1

    goto :goto_75

    :catch_b5
    move-exception v1

    goto :goto_6b

    :catch_b7
    move-exception v1

    goto :goto_62

    :catch_b9
    move-exception v1

    goto :goto_58

    :catch_bb
    move-exception v1

    goto :goto_4f

    :catch_bd
    move-exception v1

    goto :goto_45

    :catch_bf
    move-exception v1

    goto/16 :goto_3b

    :catch_c2
    move-exception v1

    goto/16 :goto_31

    :catch_c5
    move-exception v1

    goto/16 :goto_28

    :catch_c8
    move-exception v1

    goto/16 :goto_1e

    :catch_cb
    move-exception v1

    goto/16 :goto_15
.end method

.method public constructor <init>(Lonlysdk/framework/protocol/OnlySDKUser;Lonlysdk/framework/protocol/OnlySDKIAP;Lonlysdk/framework/protocol/OnlySDKShare;)V
    .registers 5
    .param p1, "userSdk"    # Lonlysdk/framework/protocol/OnlySDKUser;
    .param p2, "iapSdk"    # Lonlysdk/framework/protocol/OnlySDKIAP;
    .param p3, "shareSDK"    # Lonlysdk/framework/protocol/OnlySDKShare;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lonlysdk/framework/protocol/OnlySDKAgent;-><init>(Lonlysdk/framework/protocol/OnlySDKUser;Lonlysdk/framework/protocol/OnlySDKIAP;Lonlysdk/framework/protocol/OnlySDKShare;)V

    .line 45
    const-string v0, "gm99"

    iput-object v0, p0, Lsdkplugin/framework/protocol/PluginAgent;->_channelName:Ljava/lang/String;

    .line 46
    sput-object p0, Lsdkplugin/framework/protocol/PluginAgent;->_agent:Lonlysdk/framework/protocol/OnlySDKAgent;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lsdkplugin/framework/protocol/PluginAgent;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginAgent;->_channelName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getSDKType()I
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lonlysdk/framework/enumtype/EnumSDKType;->kSDKType_gm99:Lonlysdk/framework/enumtype/EnumSDKType;

    invoke-virtual {v0}, Lonlysdk/framework/enumtype/EnumSDKType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const-string v0, "2.0.0"

    return-object v0
.end method

.method public initSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ZZLjava/util/HashMap;)V
    .registers 14
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "appSecret"    # Ljava/lang/String;
    .param p5, "privateKey"    # Ljava/lang/String;
    .param p6, "act"    # Landroid/app/Activity;
    .param p7, "isLandScape"    # Z
    .param p8, "isBgTransparent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p9, "extraInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super/range {p0 .. p9}, Lonlysdk/framework/protocol/OnlySDKAgent;->initSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ZZLjava/util/HashMap;)V

    .line 74
    new-instance v0, Lcom/games37/riversdk/core/RiverSDKApi;

    const-string v1, "gm99"

    invoke-direct {v0, v1}, Lcom/games37/riversdk/core/RiverSDKApi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    .line 76
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    new-instance v1, Lsdkplugin/framework/protocol/PluginAgent$1;

    invoke-direct {v1, p0}, Lsdkplugin/framework/protocol/PluginAgent$1;-><init>(Lsdkplugin/framework/protocol/PluginAgent;)V

    invoke-virtual {v0, p6, v1}, Lcom/games37/riversdk/core/RiverSDKApi;->sqSDKInit(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 93
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    invoke-virtual {v0, p6}, Lcom/games37/riversdk/core/RiverSDKApi;->onCreate(Landroid/app/Activity;)V

    .line 95
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginAgent;->_lisenerSDKAct:Lonlysdk/framework/listener/SDKActionListener;

    if-eqz v0, :cond_29

    .line 96
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginAgent;->_lisenerSDKAct:Lonlysdk/framework/listener/SDKActionListener;

    sget-object v1, Lonlysdk/framework/enumtype/SDKActionResultCode;->kSDKActionInitSuccess:Lonlysdk/framework/enumtype/SDKActionResultCode;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lonlysdk/framework/listener/SDKActionListener;->onSDKActionResult(Lonlysdk/framework/enumtype/SDKActionResultCode;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 98
    :cond_29
    return-void
.end method

.method public isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z
    .registers 5
    .param p1, "type"    # Lonlysdk/framework/enumtype/AgentFuncType;

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "bSupport":Z
    invoke-static {}, Lsdkplugin/framework/protocol/PluginAgent;->$SWITCH_TABLE$onlysdk$framework$enumtype$AgentFuncType()[I

    move-result-object v1

    invoke-virtual {p1}, Lonlysdk/framework/enumtype/AgentFuncType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_12

    .line 264
    :goto_e
    :pswitch_e
    return v0

    .line 259
    :pswitch_f
    const/4 v0, 0x1

    .line 260
    goto :goto_e

    .line 251
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public onActivityResultHandle(IILandroid/content/Intent;Ljava/util/HashMap;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p4, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginAgent;->_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/games37/riversdk/core/RiverSDKApi;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 201
    return-void
.end method

.method public onConfigurationChangedHandle(Landroid/content/res/Configuration;Ljava/util/HashMap;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onDestroyHandle(Ljava/util/HashMap;)V
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
    .line 190
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginAgent;->_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/RiverSDKApi;->onDestroy(Landroid/app/Activity;)V

    .line 191
    return-void
.end method

.method public onNewIntentHandle(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    return-void
.end method

.method public onPauseHandle(Ljava/util/HashMap;)V
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
    .line 160
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginAgent;->_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/RiverSDKApi;->onPause(Landroid/app/Activity;)V

    .line 161
    return-void
.end method

.method public onRestart()V
    .registers 3

    .prologue
    .line 138
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginAgent;->_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/RiverSDKApi;->onRestart(Landroid/app/Activity;)V

    .line 139
    return-void
.end method

.method public onResumeHandle(Ljava/util/HashMap;)V
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
    .line 149
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginAgent;->_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/RiverSDKApi;->onResume(Landroid/app/Activity;)V

    .line 150
    return-void
.end method

.method public onSaveInstanceStateHandle(Landroid/os/Bundle;Ljava/util/HashMap;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p2, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onStartHandle(Ljava/util/HashMap;)V
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
    .line 129
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginAgent;->_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/RiverSDKApi;->onStart(Landroid/app/Activity;)V

    .line 130
    return-void
.end method

.method public onStopBeforeSuperHandle(Ljava/util/HashMap;)V
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
    .line 170
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onStopHandle(Ljava/util/HashMap;)V
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
    .line 180
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginAgent;->_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/RiverSDKApi;->onStop(Landroid/app/Activity;)V

    .line 181
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 50
    invoke-super {p0}, Lonlysdk/framework/protocol/OnlySDKAgent;->release()V

    .line 53
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginAgent;->_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/RiverSDKApi;->onDestroy(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method public setDebugMode(Z)V
    .registers 2
    .param p1, "bDebug"    # Z

    .prologue
    .line 116
    invoke-super {p0, p1}, Lonlysdk/framework/protocol/OnlySDKAgent;->setDebugMode(Z)V

    .line 119
    return-void
.end method

.method public setLanguage(Ljava/util/HashMap;)V
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
    .line 105
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lonlysdk/framework/protocol/OnlySDKAgent;->setLanguage(Ljava/util/HashMap;)V

    .line 110
    return-void
.end method
