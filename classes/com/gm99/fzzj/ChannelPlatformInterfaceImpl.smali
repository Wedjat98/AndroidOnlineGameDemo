.class public abstract Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;
.super Ljava/lang/Object;
.source "ChannelPlatformInterfaceImpl.java"

# interfaces
.implements Lcom/ledo/fantasy/game/ChannelPlatformInterface;


# static fields
.field protected static TAG:Ljava/lang/String;

.field protected static gameActivity:Landroid/app/Activity;

.field protected static m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

.field public static s_isInSDKRun:Z

.field protected static s_isLogoutByGame:Z


# instance fields
.field protected m_accessTokenForPay:Ljava/lang/String;

.field public m_isInitSDKSuccess:Z

.field protected m_payCallbackURLForPay:Ljava/lang/String;

.field protected m_userIDForPay:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    const-string v0, "not_known_sdk"

    sput-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->TAG:Ljava/lang/String;

    .line 28
    sput-object v2, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    .line 29
    sput-object v2, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    .line 31
    sput-boolean v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->s_isLogoutByGame:Z

    .line 33
    sput-boolean v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->s_isInSDKRun:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 34
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v1, ""

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_userIDForPay:Ljava/lang/String;

    .line 24
    const-string v1, ""

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_accessTokenForPay:Ljava/lang/String;

    .line 25
    const-string v1, "default"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_payCallbackURLForPay:Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_isInitSDKSuccess:Z

    .line 41
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ledo/fantasy/game/JniProxy;->usePlatformExit:Z

    .line 42
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ledo/fantasy/game/JniProxy;->usePlatformExitAfterOnKeyDownBackPressEvent:Z

    .line 43
    sput-object p1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    .line 44
    if-eqz p1, :cond_1c4

    .line 46
    const-string v3, "111111"

    .line 47
    .local v3, "appID":Ljava/lang/String;
    const-string v4, "111111111111"

    .line 48
    .local v4, "appKey":Ljava/lang/String;
    const-string v5, "111111"

    .line 49
    .local v5, "appSecret":Ljava/lang/String;
    const-string v6, "111111"

    .line 50
    .local v6, "privateKey":Ljava/lang/String;
    const-string v13, "111111"

    .line 51
    .local v13, "payID":Ljava/lang/String;
    const-string v14, "111111"

    .line 52
    .local v14, "payKey":Ljava/lang/String;
    const-string v11, "111111"

    .line 53
    .local v11, "floatWndID":Ljava/lang/String;
    const-string v12, "111111"

    .line 54
    .local v12, "floatWndSecret":Ljava/lang/String;
    const-string v16, "111111"

    .line 55
    .local v16, "payRsaPublic":Ljava/lang/String;
    const-string v15, "111111"

    .line 57
    .local v15, "payRsaPrivate":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    if-nez v1, :cond_52

    .line 58
    new-instance v1, Lsdkplugin/framework/protocol/PluginAgent;

    new-instance v7, Lsdkplugin/framework/protocol/PluginUser;

    invoke-direct {v7}, Lsdkplugin/framework/protocol/PluginUser;-><init>()V

    new-instance v8, Lsdkplugin/framework/protocol/PluginIAP;

    invoke-direct {v8}, Lsdkplugin/framework/protocol/PluginIAP;-><init>()V

    new-instance v9, Lsdkplugin/framework/protocol/PluginShare;

    invoke-direct {v9}, Lsdkplugin/framework/protocol/PluginShare;-><init>()V

    invoke-direct {v1, v7, v8, v9}, Lsdkplugin/framework/protocol/PluginAgent;-><init>(Lonlysdk/framework/protocol/OnlySDKUser;Lonlysdk/framework/protocol/OnlySDKIAP;Lonlysdk/framework/protocol/OnlySDKShare;)V

    sput-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    .line 61
    :cond_52
    invoke-virtual/range {p0 .. p0}, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->SetSDKRelatedListener()V

    .line 63
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f0600ea

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "appName":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f0600f8

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 65
    .local v18, "strChannelID":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f060136

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 66
    .local v19, "strChannelIDName":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f060138

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 67
    .local v24, "strMerchantID":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f060139

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 68
    .local v29, "strServerSeqNum":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f06013b

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 69
    .local v28, "strSDKURL":Ljava/lang/String;
    if-eqz v28, :cond_97

    const-string v1, "default"

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 70
    :cond_97
    const-string v28, ""

    .line 72
    :cond_99
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f06013c

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 73
    .local v17, "strCPID":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f06013d

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 74
    .local v20, "strGameID":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f06013e

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 76
    .local v25, "strPushKey":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f060140

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 77
    .local v26, "strQQAppId":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f060141

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 78
    .local v27, "strQQAppKey":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f060142

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 79
    .local v30, "strWXAppId":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f060143

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 80
    .local v31, "strWXAppKey":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f060144

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 81
    .local v23, "strMSDKAppKey":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f06012c

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 82
    .local v21, "strKeyDataID":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v7, 0x7f06012d

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 85
    .local v22, "strKeyDataKey":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v10, "extraInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "channelID"

    move-object/from16 v0, v18

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "channelIDName"

    move-object/from16 v0, v19

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "merchantID"

    move-object/from16 v0, v24

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "serverSeqNum"

    move-object/from16 v0, v29

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "sdkURL"

    move-object/from16 v0, v28

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "payID"

    invoke-virtual {v10, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "payKey"

    invoke-virtual {v10, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "floatWndID"

    invoke-virtual {v10, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "floatWndSecret"

    invoke-virtual {v10, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "payRsaPublic"

    move-object/from16 v0, v16

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "payRsaPrivate"

    invoke-virtual {v10, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "cpID"

    move-object/from16 v0, v17

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "gameID"

    move-object/from16 v0, v20

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "pushKey"

    move-object/from16 v0, v25

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "qqAppId"

    move-object/from16 v0, v26

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "qqAppKey"

    move-object/from16 v0, v27

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "wxAppId"

    move-object/from16 v0, v30

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "wxAppKey"

    move-object/from16 v0, v31

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "msdkAppKey"

    move-object/from16 v0, v23

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "Platform_InitSDK"

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    sget-object v7, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v10}, Lonlysdk/framework/protocol/OnlySDKAgent;->initSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ZZLjava/util/HashMap;)V

    .line 108
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lonlysdk/framework/protocol/OnlySDKAgent;->setDebugMode(Z)V

    .line 113
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getChannelName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->TAG:Ljava/lang/String;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "channel_name_is_"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 121
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "appID":Ljava/lang/String;
    .end local v4    # "appKey":Ljava/lang/String;
    .end local v5    # "appSecret":Ljava/lang/String;
    .end local v6    # "privateKey":Ljava/lang/String;
    .end local v10    # "extraInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "floatWndID":Ljava/lang/String;
    .end local v12    # "floatWndSecret":Ljava/lang/String;
    .end local v13    # "payID":Ljava/lang/String;
    .end local v14    # "payKey":Ljava/lang/String;
    .end local v15    # "payRsaPrivate":Ljava/lang/String;
    .end local v16    # "payRsaPublic":Ljava/lang/String;
    .end local v17    # "strCPID":Ljava/lang/String;
    .end local v18    # "strChannelID":Ljava/lang/String;
    .end local v19    # "strChannelIDName":Ljava/lang/String;
    .end local v20    # "strGameID":Ljava/lang/String;
    .end local v21    # "strKeyDataID":Ljava/lang/String;
    .end local v22    # "strKeyDataKey":Ljava/lang/String;
    .end local v23    # "strMSDKAppKey":Ljava/lang/String;
    .end local v24    # "strMerchantID":Ljava/lang/String;
    .end local v25    # "strPushKey":Ljava/lang/String;
    .end local v26    # "strQQAppId":Ljava/lang/String;
    .end local v27    # "strQQAppKey":Ljava/lang/String;
    .end local v28    # "strSDKURL":Ljava/lang/String;
    .end local v29    # "strServerSeqNum":Ljava/lang/String;
    .end local v30    # "strWXAppId":Ljava/lang/String;
    .end local v31    # "strWXAppKey":Ljava/lang/String;
    :goto_1a3
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    if-eqz v1, :cond_1c3

    .line 122
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v1

    sget-object v7, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeShowExitScreen:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1, v7}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v1

    sput-boolean v1, Lcom/ledo/fantasy/game/JniProxy;->usePlatformExit:Z

    .line 123
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v1

    sget-object v7, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeShowExitScreenAfterOnKeyDownBackPressEvent:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1, v7}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v1

    sput-boolean v1, Lcom/ledo/fantasy/game/JniProxy;->usePlatformExitAfterOnKeyDownBackPressEvent:Z

    .line 125
    :cond_1c3
    return-void

    .line 118
    :cond_1c4
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v7, "game activity is null!!"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a3
.end method

.method public static loginForMSDKWithParam(Ljava/lang/String;)V
    .registers 4
    .param p0, "par_loginType"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_14

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 280
    const-string v1, "loginType"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_14
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v1

    sget-object v2, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeLogIn:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1, v2}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 283
    const/4 v1, 0x1

    sput-boolean v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->s_isInSDKRun:Z

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Platform_login_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 286
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lonlysdk/framework/protocol/OnlySDKUser;->login(Ljava/util/HashMap;)V

    .line 288
    :cond_42
    return-void
.end method


# virtual methods
.method public abstract SetSDKRelatedListener()V
.end method

.method public changeAccount()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 292
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeLogIn:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 293
    sput-boolean v2, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->s_isInSDKRun:Z

    .line 294
    sput-boolean v2, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->s_isLogoutByGame:Z

    .line 295
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->switchAccount(Ljava/util/HashMap;)V

    .line 297
    :cond_1d
    return-void
.end method

.method public enterPlatformCenter()V
    .registers 3

    .prologue
    .line 595
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeEnterPlatformCenter:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 596
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->enterPlatformCenter(Ljava/util/HashMap;)V

    .line 598
    :cond_18
    return-void
.end method

.method public enterPlatformFeedback()V
    .registers 3

    .prologue
    .line 610
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeFeedback:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 611
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->enterPlatformFeedback(Ljava/util/HashMap;)V

    .line 613
    :cond_18
    return-void
.end method

.method public enterPlatformForum()V
    .registers 3

    .prologue
    .line 602
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeEnterForum:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 603
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->enterPlatformForum(Ljava/util/HashMap;)V

    .line 605
    :cond_18
    return-void
.end method

.method public enterService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "roleID"    # Ljava/lang/String;
    .param p3, "roleName"    # Ljava/lang/String;

    .prologue
    .line 698
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v1

    sget-object v2, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeEnterService:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1, v2}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "zoneName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v1, "roleID"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v1, "roleName"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lonlysdk/framework/protocol/OnlySDKUser;->enterService(Ljava/util/HashMap;)V

    .line 706
    .end local v0    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2b
    return-void
.end method

.method public getChannelID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 626
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 627
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v1, 0x7f0600f8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    :goto_d
    return-object v0

    :cond_e
    const-string v0, "0"

    goto :goto_d
.end method

.method public getPlatformCenterName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 579
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v1, 0x7f060132

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformFeedbackName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 590
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v1, 0x7f060134

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformForumName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 584
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v1, 0x7f060133

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformHockeyAppID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 756
    const-string v0, ""

    return-object v0
.end method

.method public getPlatformID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 617
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 618
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v1, 0x7f06012a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 620
    :goto_d
    return-object v0

    :cond_e
    const-string v0, "aaaa"

    goto :goto_d
.end method

.method public getPlatformName()I
    .registers 5

    .prologue
    .line 640
    sget-object v2, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    if-eqz v2, :cond_16

    .line 641
    sget-object v2, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v3, 0x7f060130

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "strPlatformName":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 645
    .end local v1    # "strPlatformName":Ljava/lang/String;
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getSDKAgent()Lonlysdk/framework/protocol/OnlySDKAgent;
    .registers 2

    .prologue
    .line 128
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 518
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v1

    sget-object v2, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeLogIn:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v1, v2}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 519
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getSDKType()I

    move-result v1

    sget-object v2, Lonlysdk/framework/enumtype/EnumSDKType;->kSDKType_Iwan:Lonlysdk/framework/enumtype/EnumSDKType;

    invoke-virtual {v2}, Lonlysdk/framework/enumtype/EnumSDKType;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_2a

    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getSDKType()I

    move-result v1

    sget-object v2, Lonlysdk/framework/enumtype/EnumSDKType;->kSDKType_Iwplay:Lonlysdk/framework/enumtype/EnumSDKType;

    invoke-virtual {v2}, Lonlysdk/framework/enumtype/EnumSDKType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_75

    .line 521
    :cond_2a
    const-string v0, ""

    .line 522
    .local v0, "strSessionId":Ljava/lang/String;
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    if-eqz v1, :cond_5b

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v3, 0x7f06013d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v2}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v2

    invoke-virtual {v2}, Lonlysdk/framework/protocol/OnlySDKUser;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .end local v0    # "strSessionId":Ljava/lang/String;
    :goto_5a
    return-object v0

    .line 525
    .restart local v0    # "strSessionId":Ljava/lang/String;
    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "6$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v2}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v2

    invoke-virtual {v2}, Lonlysdk/framework/protocol/OnlySDKUser;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 529
    .end local v0    # "strSessionId":Ljava/lang/String;
    :cond_75
    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v1

    invoke-virtual {v1}, Lonlysdk/framework/protocol/OnlySDKUser;->getSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 532
    :cond_80
    const-string v0, ""

    goto :goto_5a
.end method

.method public getUserID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 554
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeLogIn:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 555
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKUser;->getUserID()Ljava/lang/String;

    move-result-object v0

    .line 557
    :goto_18
    return-object v0

    :cond_19
    const-string v0, ""

    goto :goto_18
.end method

.method public getUserName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 545
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeLogIn:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 546
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKUser;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_18
    return-object v0

    :cond_19
    const-string v0, ""

    goto :goto_18
.end method

.method public guestRegister()V
    .registers 3

    .prologue
    .line 538
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeGuestRegister:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 539
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->doGuestRegister(Ljava/util/HashMap;)V

    .line 541
    :cond_18
    return-void
.end method

.method public hasFeedback()Z
    .registers 3

    .prologue
    .line 574
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeFeedback:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    return v0
.end method

.method public hasPlatformCenter()Z
    .registers 3

    .prologue
    .line 563
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeEnterPlatformCenter:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    return v0
.end method

.method public hasPlatformForum()Z
    .registers 3

    .prologue
    .line 568
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeEnterForum:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    return v0
.end method

.method public isGuest()Z
    .registers 3

    .prologue
    .line 255
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeLogIn:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 256
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKUser;->isGuest()Z

    move-result v0

    .line 258
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isLogined()Z
    .registers 3

    .prologue
    .line 247
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeLogIn:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 248
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKUser;->isLogined()Z

    move-result v0

    .line 250
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public login()V
    .registers 3

    .prologue
    .line 263
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeLogIn:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 264
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->s_isInSDKRun:Z

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Platform_login_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->login(Ljava/util/HashMap;)V

    .line 269
    :cond_2f
    return-void
.end method

.method public loginGameCallback()V
    .registers 1

    .prologue
    .line 652
    return-void
.end method

.method public logoutPlatform()V
    .registers 3

    .prologue
    .line 301
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeLogIn:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 302
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->s_isInSDKRun:Z

    .line 303
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->logout(Ljava/util/HashMap;)V

    .line 305
    :cond_1b
    return-void
.end method

.method public purchaseWithJsonStrParam(Ljava/lang/String;)I
    .registers 24
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 310
    sget-object v19, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual/range {v19 .. v19}, Lonlysdk/framework/protocol/OnlySDKAgent;->getIAPPlugin()Lonlysdk/framework/protocol/OnlySDKIAP;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lonlysdk/framework/protocol/OnlySDKIAP;->isSupportFunction()Z

    move-result v19

    if-eqz v19, :cond_17a

    .line 312
    const/4 v4, 0x0

    .line 315
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_d
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_14} :catch_1a

    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .local v5, "jsonObject":Lorg/json/JSONObject;
    move-object v4, v5

    .line 321
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_15
    if-nez v4, :cond_1f

    .line 322
    const/16 v19, 0x0

    .line 428
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_19
    return v19

    .line 316
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_1a
    move-exception v2

    .line 318
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15

    .line 325
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1f
    const-string v10, ""

    .line 326
    .local v10, "par_orderNo":Ljava/lang/String;
    const-string v6, ""

    .line 327
    .local v6, "par_itemId":Ljava/lang/String;
    const-string v8, ""

    .line 328
    .local v8, "par_itemName":Ljava/lang/String;
    const-string v9, ""

    .line 329
    .local v9, "par_itemNum":Ljava/lang/String;
    const-string v12, ""

    .line 330
    .local v12, "par_price":Ljava/lang/String;
    const-string v17, ""

    .line 331
    .local v17, "par_serviceID":Ljava/lang/String;
    const-string v11, ""

    .line 332
    .local v11, "par_payType":Ljava/lang/String;
    const-string v16, ""

    .line 333
    .local v16, "par_roleName":Ljava/lang/String;
    const-string v14, ""

    .line 334
    .local v14, "par_roleID":Ljava/lang/String;
    const-string v13, ""

    .line 335
    .local v13, "par_rate":Ljava/lang/String;
    const-string v15, ""

    .line 336
    .local v15, "par_roleLevel":Ljava/lang/String;
    const-string v7, ""

    .line 339
    .local v7, "par_itemKind":Ljava/lang/String;
    :try_start_37
    const-string v19, "orderNo"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 340
    const-string v19, "itemId"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    const-string v19, "itemName"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 342
    const-string v19, "itemNum"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 343
    const-string v19, "price"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 344
    const-string v19, "serviceID"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 345
    const-string v19, "payType"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 346
    const-string v19, "roleName"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 347
    const-string v19, "roleID"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 348
    const-string v19, "rate"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 349
    const-string v19, "roleLevel"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_8e} :catch_17e

    move-result-object v15

    .line 355
    :goto_8f
    :try_start_8f
    const-string v19, "itemKind"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_96} :catch_184

    move-result-object v7

    .line 362
    :goto_97
    if-nez v10, :cond_9b

    .line 363
    :try_start_99
    const-string v10, ""

    .line 365
    :cond_9b
    if-nez v6, :cond_9f

    .line 366
    const-string v6, ""

    .line 368
    :cond_9f
    if-nez v8, :cond_a3

    .line 369
    const-string v8, ""

    .line 371
    :cond_a3
    if-nez v9, :cond_a7

    .line 372
    const-string v9, ""

    .line 374
    :cond_a7
    if-nez v12, :cond_ab

    .line 375
    const-string v12, ""

    .line 377
    :cond_ab
    if-nez v17, :cond_af

    .line 378
    const-string v17, ""

    .line 380
    :cond_af
    if-nez v11, :cond_b3

    .line 381
    const-string v11, ""

    .line 383
    :cond_b3
    if-nez v16, :cond_b7

    .line 384
    const-string v16, ""

    .line 386
    :cond_b7
    if-nez v14, :cond_bb

    .line 387
    const-string v14, ""

    .line 389
    :cond_bb
    if-nez v13, :cond_bf

    .line 390
    const-string v13, ""

    .line 392
    :cond_bf
    if-nez v15, :cond_c3

    .line 393
    const-string v15, ""

    .line 395
    :cond_c3
    if-nez v7, :cond_c7

    .line 396
    const-string v7, ""

    .line 399
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_payCallbackURLForPay:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 400
    .local v18, "strPayCallbackURL":Ljava/lang/String;
    if-eqz v18, :cond_d7

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d9

    .line 401
    :cond_d7
    const-string v18, "default"

    .line 404
    :cond_d9
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 405
    .local v3, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "orderNo"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v19, "itemId"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v19, "itemName"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v19, "itemNum"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v19, "price"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v19, "serviceID"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v19, "payType"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v19, "roleName"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v19, "roleID"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v19, "rate"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v19, "roleLevel"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v19, "userID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_userIDForPay:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v19, "accessToken"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_accessTokenForPay:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v19, "payCallbackURL"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v19, "appName"

    sget-object v20, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    const v21, 0x7f0600ea

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v19, "itemKind"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v19, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual/range {v19 .. v19}, Lonlysdk/framework/protocol/OnlySDKAgent;->getIAPPlugin()Lonlysdk/framework/protocol/OnlySDKIAP;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lonlysdk/framework/protocol/OnlySDKIAP;->payForProduct(Ljava/util/HashMap;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_17a} :catch_18a

    .line 428
    .end local v3    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "par_itemId":Ljava/lang/String;
    .end local v7    # "par_itemKind":Ljava/lang/String;
    .end local v8    # "par_itemName":Ljava/lang/String;
    .end local v9    # "par_itemNum":Ljava/lang/String;
    .end local v10    # "par_orderNo":Ljava/lang/String;
    .end local v11    # "par_payType":Ljava/lang/String;
    .end local v12    # "par_price":Ljava/lang/String;
    .end local v13    # "par_rate":Ljava/lang/String;
    .end local v14    # "par_roleID":Ljava/lang/String;
    .end local v15    # "par_roleLevel":Ljava/lang/String;
    .end local v16    # "par_roleName":Ljava/lang/String;
    .end local v17    # "par_serviceID":Ljava/lang/String;
    .end local v18    # "strPayCallbackURL":Ljava/lang/String;
    :cond_17a
    :goto_17a
    const/16 v19, 0x0

    goto/16 :goto_19

    .line 350
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "par_itemId":Ljava/lang/String;
    .restart local v7    # "par_itemKind":Ljava/lang/String;
    .restart local v8    # "par_itemName":Ljava/lang/String;
    .restart local v9    # "par_itemNum":Ljava/lang/String;
    .restart local v10    # "par_orderNo":Ljava/lang/String;
    .restart local v11    # "par_payType":Ljava/lang/String;
    .restart local v12    # "par_price":Ljava/lang/String;
    .restart local v13    # "par_rate":Ljava/lang/String;
    .restart local v14    # "par_roleID":Ljava/lang/String;
    .restart local v15    # "par_roleLevel":Ljava/lang/String;
    .restart local v16    # "par_roleName":Ljava/lang/String;
    .restart local v17    # "par_serviceID":Ljava/lang/String;
    :catch_17e
    move-exception v2

    .line 352
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8f

    .line 356
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_184
    move-exception v2

    .line 358
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_97

    .line 422
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_18a
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17a
.end method

.method public release()V
    .registers 2

    .prologue
    .line 635
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->release()V

    .line 636
    return-void
.end method

.method public setValues(Ljava/lang/String;)V
    .registers 8
    .param p1, "jsonContent"    # Ljava/lang/String;

    .prologue
    .line 713
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 714
    .local v2, "jsonRes":Lorg/json/JSONObject;
    const-string v3, "userId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 716
    const-string v3, "userId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_userIDForPay:Ljava/lang/String;

    .line 717
    sget-object v3, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setValues: userID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_userIDForPay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_2b
    const-string v3, "accessToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 720
    const-string v3, "accessToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_accessTokenForPay:Ljava/lang/String;

    .line 721
    sget-object v3, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setValues: accessToken: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_accessTokenForPay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_51
    const-string v3, "callbackURL"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 724
    const-string v3, "callbackURL"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_payCallbackURLForPay:Ljava/lang/String;

    .line 725
    sget-object v3, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setValues: callbackURL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_payCallbackURLForPay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_77} :catch_a2

    .line 733
    .end local v2    # "jsonRes":Lorg/json/JSONObject;
    :cond_77
    :goto_77
    sget-object v3, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v3}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v3

    sget-object v4, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeAntiAddictionQuery:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v3, v4}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 735
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 736
    .local v1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "userid"

    iget-object v4, p0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_userIDForPay:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v3, "accesstoken"

    iget-object v4, p0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_accessTokenForPay:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v3, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v3}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v3

    invoke-virtual {v3, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->doAntiAddictionQuery(Ljava/util/HashMap;)V

    .line 741
    .end local v1    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a1
    return-void

    .line 728
    :catch_a2
    move-exception v0

    .line 730
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_77
.end method

.method public shareOut(Ljava/lang/String;)V
    .registers 2
    .param p1, "paramsWithJson"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->socialShareWithJsonParam(Ljava/lang/String;)I

    .line 747
    return-void
.end method

.method public showExitScreen()Z
    .registers 7

    .prologue
    .line 663
    sget-object v4, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v4}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v4

    sget-object v5, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeShowExitScreen:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v4, v5}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 665
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    const v5, 0x7f0600ee

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "strExitMsg":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    const v5, 0x7f0600ef

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, "strYesTip":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    const v5, 0x7f0600f0

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "strNoTip":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 670
    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "exitMsg"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string v4, "yesTip"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v4, "noTip"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v4, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v4}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v4

    invoke-virtual {v4, v0}, Lonlysdk/framework/protocol/OnlySDKUser;->showExitScreen(Ljava/util/HashMap;)V

    .line 676
    .end local v0    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "strExitMsg":Ljava/lang/String;
    .end local v2    # "strNoTip":Ljava/lang/String;
    .end local v3    # "strYesTip":Ljava/lang/String;
    :cond_4c
    const/4 v4, 0x0

    return v4
.end method

.method public showExitScreenAfterOnKeyDownBackPressEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 680
    sget-object v4, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v4}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v4

    sget-object v5, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeShowExitScreenAfterOnKeyDownBackPressEvent:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v4, v5}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 682
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    const v5, 0x7f0600ee

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "strExitMsg":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    const v5, 0x7f0600ef

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, "strYesTip":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    const v5, 0x7f0600f0

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "strNoTip":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 687
    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "exitMsg"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v4, "yesTip"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v4, "noTip"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v4, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v4}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lonlysdk/framework/protocol/OnlySDKUser;->showExitScreenAfterOnKeyDownBackPressEvent(Landroid/view/KeyEvent;Ljava/util/HashMap;)Z

    move-result v4

    .line 693
    .end local v0    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "strExitMsg":Ljava/lang/String;
    .end local v2    # "strNoTip":Ljava/lang/String;
    .end local v3    # "strYesTip":Ljava/lang/String;
    :goto_4d
    return v4

    :cond_4e
    const/4 v4, 0x0

    goto :goto_4d
.end method

.method public showPauseScreen()V
    .registers 3

    .prologue
    .line 656
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserFunctionType;->kUserFuncTypeShowPauseScreen:Lonlysdk/framework/enumtype/UserFunctionType;

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 657
    sget-object v0, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lonlysdk/framework/protocol/OnlySDKUser;->showPauseScreen(Ljava/util/HashMap;)V

    .line 659
    :cond_18
    return-void
.end method

.method public socialShareWithJsonParam(Ljava/lang/String;)I
    .registers 14
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 433
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 513
    :cond_9
    :goto_9
    return v11

    .line 437
    :cond_a
    const-string v7, ""

    .line 438
    .local v7, "par_shareType":Ljava/lang/String;
    const-string v9, ""

    .line 439
    .local v9, "par_title":Ljava/lang/String;
    const-string v8, ""

    .line 440
    .local v8, "par_subTitle":Ljava/lang/String;
    const-string v4, ""

    .line 441
    .local v4, "par_content":Ljava/lang/String;
    const-string v5, ""

    .line 442
    .local v5, "par_link":Ljava/lang/String;
    const-string v6, ""

    .line 445
    .local v6, "par_picUrl":Ljava/lang/String;
    :try_start_16
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 446
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "shareType"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 447
    const-string v10, "title"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 448
    const-string v10, "subTitle"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 449
    const-string v10, "content"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    const-string v10, "link"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 451
    const-string v10, "picUrl"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_3e} :catch_9c

    move-result-object v6

    .line 457
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_3f
    if-eqz v7, :cond_45

    const-string v10, ""

    if-ne v7, v10, :cond_47

    .line 458
    :cond_45
    const-string v7, "all"

    .line 460
    :cond_47
    if-nez v9, :cond_4b

    .line 461
    const-string v9, ""

    .line 463
    :cond_4b
    if-nez v8, :cond_4f

    .line 464
    const-string v8, ""

    .line 466
    :cond_4f
    if-nez v4, :cond_53

    .line 467
    const-string v4, ""

    .line 469
    :cond_53
    if-nez v5, :cond_57

    .line 470
    const-string v5, ""

    .line 472
    :cond_57
    if-nez v6, :cond_5b

    .line 473
    const-string v6, ""

    .line 476
    :cond_5b
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeAll:Lonlysdk/framework/enumtype/ShareType;

    .line 477
    .local v0, "curShareType":Lonlysdk/framework/enumtype/ShareType;
    const-string v10, "SinaWeibo"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a1

    .line 478
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeSinaWeibo:Lonlysdk/framework/enumtype/ShareType;

    .line 503
    :cond_67
    :goto_67
    sget-object v10, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v10}, Lonlysdk/framework/protocol/OnlySDKAgent;->getSharePlugin()Lonlysdk/framework/protocol/OnlySDKShare;

    move-result-object v10

    invoke-virtual {v10, v0}, Lonlysdk/framework/protocol/OnlySDKShare;->isSupportFunction(Lonlysdk/framework/enumtype/ShareType;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 504
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 505
    .local v2, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "title"

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v10, "subTitle"

    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v10, "content"

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v10, "link"

    invoke-virtual {v2, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v10, "picUrl"

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v10, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual {v10}, Lonlysdk/framework/protocol/OnlySDKAgent;->getSharePlugin()Lonlysdk/framework/protocol/OnlySDKShare;

    move-result-object v10

    invoke-virtual {v10, v0, v2}, Lonlysdk/framework/protocol/OnlySDKShare;->share(Lonlysdk/framework/enumtype/ShareType;Ljava/util/HashMap;)V

    goto/16 :goto_9

    .line 452
    .end local v0    # "curShareType":Lonlysdk/framework/enumtype/ShareType;
    .end local v2    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_9c
    move-exception v1

    .line 454
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3f

    .line 479
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "curShareType":Lonlysdk/framework/enumtype/ShareType;
    :cond_a1
    const-string v10, "QQZone"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 480
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeQQZone:Lonlysdk/framework/enumtype/ShareType;

    .line 481
    goto :goto_67

    :cond_ac
    const-string v10, "Weixin"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 482
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeWeixin:Lonlysdk/framework/enumtype/ShareType;

    .line 483
    goto :goto_67

    :cond_b7
    const-string v10, "QQFriend"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 484
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeQQFriend:Lonlysdk/framework/enumtype/ShareType;

    .line 485
    goto :goto_67

    :cond_c2
    const-string v10, "TecentWeibo"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cd

    .line 486
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeTecentWeibo:Lonlysdk/framework/enumtype/ShareType;

    .line 487
    goto :goto_67

    :cond_cd
    const-string v10, "Renren"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 488
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeRenren:Lonlysdk/framework/enumtype/ShareType;

    .line 489
    goto :goto_67

    :cond_d8
    const-string v10, "Yixin"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e3

    .line 490
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeYixin:Lonlysdk/framework/enumtype/ShareType;

    .line 491
    goto :goto_67

    :cond_e3
    const-string v10, "LineForText"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ef

    .line 492
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeLineForText:Lonlysdk/framework/enumtype/ShareType;

    .line 493
    goto/16 :goto_67

    :cond_ef
    const-string v10, "LineForPic"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fb

    .line 494
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeLineForPic:Lonlysdk/framework/enumtype/ShareType;

    .line 495
    goto/16 :goto_67

    :cond_fb
    const-string v10, "FacebookForLink"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_107

    .line 496
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeFacebookForLink:Lonlysdk/framework/enumtype/ShareType;

    .line 497
    goto/16 :goto_67

    :cond_107
    const-string v10, "FacebookForText"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_113

    .line 498
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeFacebookForText:Lonlysdk/framework/enumtype/ShareType;

    .line 499
    goto/16 :goto_67

    :cond_113
    const-string v10, "FacebookForPic"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 500
    sget-object v0, Lonlysdk/framework/enumtype/ShareType;->kShareTypeFacebookForPic:Lonlysdk/framework/enumtype/ShareType;

    goto/16 :goto_67
.end method

.method public submitExtendDataToSDKJsonStr(Ljava/lang/String;)V
    .registers 21
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v4, 0x0

    .line 135
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_8} :catch_c

    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .local v5, "jsonObject":Lorg/json/JSONObject;
    move-object v4, v5

    .line 141
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_9
    if-nez v4, :cond_11

    .line 242
    :cond_b
    :goto_b
    return-void

    .line 136
    :catch_c
    move-exception v2

    .line 138
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    .line 145
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_11
    const-string v7, ""

    .line 146
    .local v7, "par_gameFlowType":Ljava/lang/String;
    const-string v13, ""

    .line 147
    .local v13, "par_userID":Ljava/lang/String;
    const-string v10, ""

    .line 148
    .local v10, "par_roleID":Ljava/lang/String;
    const-string v12, ""

    .line 149
    .local v12, "par_roleName":Ljava/lang/String;
    const-string v11, ""

    .line 150
    .local v11, "par_roleLevel":Ljava/lang/String;
    const-string v15, ""

    .line 151
    .local v15, "par_vipLevel":Ljava/lang/String;
    const-string v14, ""

    .line 152
    .local v14, "par_vipExp":Ljava/lang/String;
    const-string v16, ""

    .line 153
    .local v16, "par_zoneID":Ljava/lang/String;
    const-string v17, ""

    .line 154
    .local v17, "par_zoneName":Ljava/lang/String;
    const-string v9, ""

    .line 155
    .local v9, "par_roleCreateTime":Ljava/lang/String;
    const-string v6, ""

    .line 156
    .local v6, "par_firstCurrency":Ljava/lang/String;
    const-string v8, ""

    .line 159
    .local v8, "par_power":Ljava/lang/String;
    :try_start_29
    const-string v18, "gameFlowType"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    const-string v18, "userID"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 161
    const-string v18, "roleID"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 162
    const-string v18, "roleName"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 163
    const-string v18, "roleLevel"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 164
    const-string v18, "vipLevel"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 165
    const-string v18, "vipExp"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 167
    const-string v18, "zoneID"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 168
    const-string v18, "zoneName"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 169
    const-string v18, "roleCreateTime"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 170
    const-string v18, "money"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    const-string v18, "power"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_88} :catch_138

    move-result-object v8

    .line 179
    :goto_89
    if-nez v7, :cond_8d

    .line 180
    :try_start_8b
    const-string v7, ""

    .line 182
    :cond_8d
    if-nez v13, :cond_91

    .line 183
    const-string v13, ""

    .line 185
    :cond_91
    if-nez v10, :cond_95

    .line 186
    const-string v10, ""

    .line 188
    :cond_95
    if-nez v12, :cond_99

    .line 189
    const-string v12, ""

    .line 191
    :cond_99
    if-nez v11, :cond_9d

    .line 192
    const-string v11, ""

    .line 194
    :cond_9d
    if-nez v15, :cond_a1

    .line 195
    const-string v15, ""

    .line 197
    :cond_a1
    if-nez v14, :cond_a5

    .line 198
    const-string v14, ""

    .line 200
    :cond_a5
    if-nez v16, :cond_a9

    .line 201
    const-string v16, ""

    .line 203
    :cond_a9
    if-nez v17, :cond_ad

    .line 204
    const-string v17, ""

    .line 206
    :cond_ad
    if-nez v9, :cond_b1

    .line 207
    const-string v9, ""

    .line 210
    :cond_b1
    if-nez v6, :cond_b5

    .line 211
    const-string v6, ""

    .line 213
    :cond_b5
    if-nez v8, :cond_b9

    .line 214
    const-string v8, ""

    .line 217
    :cond_b9
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v3, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "gameFlowType"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v18, "userid"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v18, "roleID"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v18, "roleName"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v18, "roleLevel"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v18, "vipLevel"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v18, "vipExp"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v18, "zoneID"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v18, "zoneName"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v18, "roleCreateTime"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v18, "firstCurrency"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v18, "fightpower"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v18, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual/range {v18 .. v18}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 232
    sget-object v18, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->m_agentSDK:Lonlysdk/framework/protocol/OnlySDKAgent;

    invoke-virtual/range {v18 .. v18}, Lonlysdk/framework/protocol/OnlySDKAgent;->getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lonlysdk/framework/protocol/OnlySDKUser;->submitExtendDataToSDK(Ljava/util/HashMap;)V

    .line 234
    sget-object v18, Lcom/gm99/fzzj/ChannelPlatformInterfaceImpl;->gameActivity:Landroid/app/Activity;

    move-object/from16 v0, v18

    invoke-static {v0, v7, v3}, Lcom/ledo/fantasy/game/YunDingData;->YunDingUpdateUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_130} :catch_132

    goto/16 :goto_b

    .line 238
    .end local v3    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_132
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_138
    move-exception v2

    .line 175
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_89
.end method
