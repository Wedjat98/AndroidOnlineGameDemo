.class public abstract Lonlysdk/framework/protocol/OnlySDKAgent;
.super Ljava/lang/Object;
.source "OnlySDKAgent.java"


# static fields
.field protected static _agent:Lonlysdk/framework/protocol/OnlySDKAgent; = null

.field public static final _agentkey_Language:Ljava/lang/String; = "language"

.field public static final _agentkey_channelID:Ljava/lang/String; = "channelID"

.field public static final _agentkey_channelIDName:Ljava/lang/String; = "channelIDName"

.field public static final _agentkey_cpID:Ljava/lang/String; = "cpID"

.field public static final _agentkey_floatWndID:Ljava/lang/String; = "floatWndID"

.field public static final _agentkey_floatWndSecret:Ljava/lang/String; = "floatWndSecret"

.field public static final _agentkey_gameID:Ljava/lang/String; = "gameID"

.field public static final _agentkey_merchantID:Ljava/lang/String; = "merchantID"

.field public static final _agentkey_msdkAppKey:Ljava/lang/String; = "msdkAppKey"

.field public static final _agentkey_payID:Ljava/lang/String; = "payID"

.field public static final _agentkey_payKey:Ljava/lang/String; = "payKey"

.field public static final _agentkey_payRsaPrivate:Ljava/lang/String; = "payRsaPrivate"

.field public static final _agentkey_payRsaPublic:Ljava/lang/String; = "payRsaPublic"

.field public static final _agentkey_permission:Ljava/lang/String; = "permission"

.field public static final _agentkey_pushKey:Ljava/lang/String; = "pushKey"

.field public static final _agentkey_qqAppId:Ljava/lang/String; = "qqAppId"

.field public static final _agentkey_qqAppKey:Ljava/lang/String; = "qqAppKey"

.field public static final _agentkey_sdkURL:Ljava/lang/String; = "sdkURL"

.field public static final _agentkey_serverSeqNum:Ljava/lang/String; = "serverSeqNum"

.field public static final _agentkey_wxAppId:Ljava/lang/String; = "wxAppId"

.field public static final _agentkey_wxAppKey:Ljava/lang/String; = "wxAppKey"

.field public static final _c_lang_Chinese_Simple:Ljava/lang/String; = "Chinese_Simple"

.field public static final _c_lang_Chinese_Tradition:Ljava/lang/String; = "Chinese_Tradition"

.field public static final _c_lang_English:Ljava/lang/String; = "English"

.field public static final _c_lang_French:Ljava/lang/String; = "French"

.field public static final _c_lang_German:Ljava/lang/String; = "German"

.field public static final _c_lang_Italian:Ljava/lang/String; = "Italian"

.field public static final _c_lang_Japanese:Ljava/lang/String; = "Japanese"

.field public static final _c_lang_Korean:Ljava/lang/String; = "Korean"

.field public static final _c_lang_Portuguese:Ljava/lang/String; = "Portuguese"

.field public static final _c_lang_Russian:Ljava/lang/String; = "Russian"

.field public static final _c_lang_Spanish:Ljava/lang/String; = "Spanish"

.field public static final _c_lang_Thai:Ljava/lang/String; = "Thai"

.field public static final _c_lang_Turkish:Ljava/lang/String; = "Turkish"


# instance fields
.field public _activity:Landroid/app/Activity;

.field protected _channelName:Ljava/lang/String;

.field protected _isBgTransparent:Z

.field protected _isDebugMode:Z

.field protected _isLandScape:Z

.field protected _lisenerSDKAct:Lonlysdk/framework/listener/SDKActionListener;

.field protected _pIAP:Lonlysdk/framework/protocol/OnlySDKIAP;

.field protected _pShare:Lonlysdk/framework/protocol/OnlySDKShare;

.field protected _pUser:Lonlysdk/framework/protocol/OnlySDKUser;

.field public _strAppID:Ljava/lang/String;

.field public _strAppKey:Ljava/lang/String;

.field public _strAppName:Ljava/lang/String;

.field public _strAppSecret:Ljava/lang/String;

.field public _strCPID:Ljava/lang/String;

.field public _strChannelID:Ljava/lang/String;

.field public _strChannelIDName:Ljava/lang/String;

.field public _strCurLanguage:Ljava/lang/String;

.field public _strFloatWndID:Ljava/lang/String;

.field public _strFloatWndSecret:Ljava/lang/String;

.field public _strGameID:Ljava/lang/String;

.field public _strMerchantID:Ljava/lang/String;

.field public _strPayID:Ljava/lang/String;

.field public _strPayKey:Ljava/lang/String;

.field public _strPayRsaPrivate:Ljava/lang/String;

.field public _strPayRsaPublic:Ljava/lang/String;

.field public _strPrivateKey:Ljava/lang/String;

.field public _strPushKey:Ljava/lang/String;

.field public _strSDKURL:Ljava/lang/String;

.field public _strServerSeqNum:Ljava/lang/String;

.field public _strmsdkAppkey:Ljava/lang/String;

.field public _strqqAppId:Ljava/lang/String;

.field public _strqqAppKey:Ljava/lang/String;

.field public _strwxAppId:Ljava/lang/String;

.field public _strwxAppKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lonlysdk/framework/protocol/OnlySDKAgent;->_agent:Lonlysdk/framework/protocol/OnlySDKAgent;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pUser:Lonlysdk/framework/protocol/OnlySDKUser;

    .line 60
    iput-object v1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pIAP:Lonlysdk/framework/protocol/OnlySDKIAP;

    .line 61
    iput-object v1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pShare:Lonlysdk/framework/protocol/OnlySDKShare;

    .line 62
    iput-boolean v2, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_isDebugMode:Z

    .line 63
    const-string v0, "not known channel"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_channelName:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_lisenerSDKAct:Lonlysdk/framework/listener/SDKActionListener;

    .line 66
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppName:Ljava/lang/String;

    .line 67
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppID:Ljava/lang/String;

    .line 68
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppKey:Ljava/lang/String;

    .line 69
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppSecret:Ljava/lang/String;

    .line 70
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPrivateKey:Ljava/lang/String;

    .line 71
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayID:Ljava/lang/String;

    .line 72
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayKey:Ljava/lang/String;

    .line 73
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndID:Ljava/lang/String;

    .line 74
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndSecret:Ljava/lang/String;

    .line 75
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPublic:Ljava/lang/String;

    .line 76
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPrivate:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_activity:Landroid/app/Activity;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_isLandScape:Z

    .line 80
    iput-boolean v2, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_isBgTransparent:Z

    .line 82
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelID:Ljava/lang/String;

    .line 83
    const-string v0, "default"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelIDName:Ljava/lang/String;

    .line 84
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strMerchantID:Ljava/lang/String;

    .line 85
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strServerSeqNum:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strSDKURL:Ljava/lang/String;

    .line 87
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCPID:Ljava/lang/String;

    .line 88
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strGameID:Ljava/lang/String;

    .line 89
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPushKey:Ljava/lang/String;

    .line 92
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppId:Ljava/lang/String;

    .line 93
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppKey:Ljava/lang/String;

    .line 94
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppId:Ljava/lang/String;

    .line 95
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppKey:Ljava/lang/String;

    .line 96
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strmsdkAppkey:Ljava/lang/String;

    .line 99
    const-string v0, "Chinese_Simple"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    .line 102
    sput-object p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_agent:Lonlysdk/framework/protocol/OnlySDKAgent;

    .line 103
    return-void
.end method

.method public constructor <init>(Lonlysdk/framework/protocol/OnlySDKUser;Lonlysdk/framework/protocol/OnlySDKIAP;Lonlysdk/framework/protocol/OnlySDKShare;)V
    .registers 7
    .param p1, "userSdk"    # Lonlysdk/framework/protocol/OnlySDKUser;
    .param p2, "iapSdk"    # Lonlysdk/framework/protocol/OnlySDKIAP;
    .param p3, "shareSDK"    # Lonlysdk/framework/protocol/OnlySDKShare;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pUser:Lonlysdk/framework/protocol/OnlySDKUser;

    .line 60
    iput-object v1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pIAP:Lonlysdk/framework/protocol/OnlySDKIAP;

    .line 61
    iput-object v1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pShare:Lonlysdk/framework/protocol/OnlySDKShare;

    .line 62
    iput-boolean v2, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_isDebugMode:Z

    .line 63
    const-string v0, "not known channel"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_channelName:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_lisenerSDKAct:Lonlysdk/framework/listener/SDKActionListener;

    .line 66
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppName:Ljava/lang/String;

    .line 67
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppID:Ljava/lang/String;

    .line 68
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppKey:Ljava/lang/String;

    .line 69
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppSecret:Ljava/lang/String;

    .line 70
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPrivateKey:Ljava/lang/String;

    .line 71
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayID:Ljava/lang/String;

    .line 72
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayKey:Ljava/lang/String;

    .line 73
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndID:Ljava/lang/String;

    .line 74
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndSecret:Ljava/lang/String;

    .line 75
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPublic:Ljava/lang/String;

    .line 76
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPrivate:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_activity:Landroid/app/Activity;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_isLandScape:Z

    .line 80
    iput-boolean v2, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_isBgTransparent:Z

    .line 82
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelID:Ljava/lang/String;

    .line 83
    const-string v0, "default"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelIDName:Ljava/lang/String;

    .line 84
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strMerchantID:Ljava/lang/String;

    .line 85
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strServerSeqNum:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strSDKURL:Ljava/lang/String;

    .line 87
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCPID:Ljava/lang/String;

    .line 88
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strGameID:Ljava/lang/String;

    .line 89
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPushKey:Ljava/lang/String;

    .line 92
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppId:Ljava/lang/String;

    .line 93
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppKey:Ljava/lang/String;

    .line 94
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppId:Ljava/lang/String;

    .line 95
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppKey:Ljava/lang/String;

    .line 96
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strmsdkAppkey:Ljava/lang/String;

    .line 99
    const-string v0, "Chinese_Simple"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pUser:Lonlysdk/framework/protocol/OnlySDKUser;

    .line 107
    iput-object p2, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pIAP:Lonlysdk/framework/protocol/OnlySDKIAP;

    .line 108
    iput-object p3, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pShare:Lonlysdk/framework/protocol/OnlySDKShare;

    .line 109
    sput-object p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_agent:Lonlysdk/framework/protocol/OnlySDKAgent;

    .line 110
    return-void
.end method

.method public static final getAgent()Lonlysdk/framework/protocol/OnlySDKAgent;
    .registers 1

    .prologue
    .line 125
    sget-object v0, Lonlysdk/framework/protocol/OnlySDKAgent;->_agent:Lonlysdk/framework/protocol/OnlySDKAgent;

    return-object v0
.end method


# virtual methods
.method public final getActionListener()Lonlysdk/framework/listener/SDKActionListener;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_lisenerSDKAct:Lonlysdk/framework/listener/SDKActionListener;

    return-object v0
.end method

.method public getChannelIDByQuick()I
    .registers 2

    .prologue
    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public final getChannelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_channelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIAPPlugin()Lonlysdk/framework/protocol/OnlySDKIAP;
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pIAP:Lonlysdk/framework/protocol/OnlySDKIAP;

    return-object v0
.end method

.method public abstract getSDKType()I
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public final getSharePlugin()Lonlysdk/framework/protocol/OnlySDKShare;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pShare:Lonlysdk/framework/protocol/OnlySDKShare;

    return-object v0
.end method

.method public final getUserPlugin()Lonlysdk/framework/protocol/OnlySDKUser;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pUser:Lonlysdk/framework/protocol/OnlySDKUser;

    return-object v0
.end method

.method public initSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ZZLjava/util/HashMap;)V
    .registers 12
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
    .line 143
    .local p9, "extraInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppName:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppID:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppKey:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strAppSecret:Ljava/lang/String;

    .line 147
    iput-object p5, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPrivateKey:Ljava/lang/String;

    .line 149
    iput-object p6, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_activity:Landroid/app/Activity;

    .line 150
    iput-boolean p7, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_isLandScape:Z

    .line 151
    iput-boolean p8, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_isBgTransparent:Z

    .line 153
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pUser:Lonlysdk/framework/protocol/OnlySDKUser;

    invoke-virtual {v0, p6, p7, p8}, Lonlysdk/framework/protocol/OnlySDKUser;->setDefaultData(Landroid/app/Activity;ZZ)V

    .line 154
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pIAP:Lonlysdk/framework/protocol/OnlySDKIAP;

    invoke-virtual {v0, p6, p7, p8}, Lonlysdk/framework/protocol/OnlySDKIAP;->setDefaultData(Landroid/app/Activity;ZZ)V

    .line 155
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pShare:Lonlysdk/framework/protocol/OnlySDKShare;

    invoke-virtual {v0, p6, p7, p8}, Lonlysdk/framework/protocol/OnlySDKShare;->setDefaultData(Landroid/app/Activity;ZZ)V

    .line 157
    if-eqz p9, :cond_df

    .line 158
    const-string v0, "channelID"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelID:Ljava/lang/String;

    .line 159
    const-string v0, "channelIDName"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelIDName:Ljava/lang/String;

    .line 160
    const-string v0, "merchantID"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strMerchantID:Ljava/lang/String;

    .line 161
    const-string v0, "serverSeqNum"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strServerSeqNum:Ljava/lang/String;

    .line 162
    const-string v0, "sdkURL"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strSDKURL:Ljava/lang/String;

    .line 163
    const-string v0, "payID"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayID:Ljava/lang/String;

    .line 164
    const-string v0, "payKey"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayKey:Ljava/lang/String;

    .line 165
    const-string v0, "floatWndID"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndID:Ljava/lang/String;

    .line 166
    const-string v0, "floatWndSecret"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndSecret:Ljava/lang/String;

    .line 167
    const-string v0, "payRsaPublic"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPublic:Ljava/lang/String;

    .line 168
    const-string v0, "payRsaPrivate"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPrivate:Ljava/lang/String;

    .line 169
    const-string v0, "cpID"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCPID:Ljava/lang/String;

    .line 170
    const-string v0, "gameID"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strGameID:Ljava/lang/String;

    .line 171
    const-string v0, "pushKey"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPushKey:Ljava/lang/String;

    .line 173
    const-string v0, "qqAppId"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppId:Ljava/lang/String;

    .line 174
    const-string v0, "qqAppKey"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppKey:Ljava/lang/String;

    .line 175
    const-string v0, "wxAppId"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppId:Ljava/lang/String;

    .line 176
    const-string v0, "wxAppKey"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppKey:Ljava/lang/String;

    .line 177
    const-string v0, "msdkAppKey"

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strmsdkAppkey:Ljava/lang/String;

    .line 179
    :cond_df
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelID:Ljava/lang/String;

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 180
    :cond_ed
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelID:Ljava/lang/String;

    .line 182
    :cond_f1
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelIDName:Ljava/lang/String;

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelIDName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 183
    :cond_ff
    const-string v0, "default"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strChannelIDName:Ljava/lang/String;

    .line 185
    :cond_103
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strMerchantID:Ljava/lang/String;

    if-eqz v0, :cond_111

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strMerchantID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 186
    :cond_111
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strMerchantID:Ljava/lang/String;

    .line 188
    :cond_115
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strServerSeqNum:Ljava/lang/String;

    if-eqz v0, :cond_123

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strServerSeqNum:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 189
    :cond_123
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strServerSeqNum:Ljava/lang/String;

    .line 191
    :cond_127
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strSDKURL:Ljava/lang/String;

    if-nez v0, :cond_12f

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strSDKURL:Ljava/lang/String;

    .line 194
    :cond_12f
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayID:Ljava/lang/String;

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 195
    :cond_13d
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayID:Ljava/lang/String;

    .line 197
    :cond_141
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayKey:Ljava/lang/String;

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 198
    :cond_14f
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayKey:Ljava/lang/String;

    .line 200
    :cond_153
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndID:Ljava/lang/String;

    if-eqz v0, :cond_161

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 201
    :cond_161
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndID:Ljava/lang/String;

    .line 203
    :cond_165
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndSecret:Ljava/lang/String;

    if-eqz v0, :cond_173

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndSecret:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 204
    :cond_173
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strFloatWndSecret:Ljava/lang/String;

    .line 206
    :cond_177
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPublic:Ljava/lang/String;

    if-eqz v0, :cond_185

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPublic:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 207
    :cond_185
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPublic:Ljava/lang/String;

    .line 209
    :cond_189
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPrivate:Ljava/lang/String;

    if-eqz v0, :cond_197

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPrivate:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 210
    :cond_197
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPayRsaPrivate:Ljava/lang/String;

    .line 212
    :cond_19b
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCPID:Ljava/lang/String;

    if-eqz v0, :cond_1a9

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCPID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 213
    :cond_1a9
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCPID:Ljava/lang/String;

    .line 215
    :cond_1ad
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strGameID:Ljava/lang/String;

    if-eqz v0, :cond_1bb

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strGameID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 216
    :cond_1bb
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strGameID:Ljava/lang/String;

    .line 218
    :cond_1bf
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPushKey:Ljava/lang/String;

    if-eqz v0, :cond_1cd

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPushKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 219
    :cond_1cd
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strPushKey:Ljava/lang/String;

    .line 222
    :cond_1d1
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppId:Ljava/lang/String;

    if-eqz v0, :cond_1df

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 223
    :cond_1df
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppId:Ljava/lang/String;

    .line 225
    :cond_1e3
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppKey:Ljava/lang/String;

    if-eqz v0, :cond_1f1

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 226
    :cond_1f1
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strqqAppKey:Ljava/lang/String;

    .line 228
    :cond_1f5
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppId:Ljava/lang/String;

    if-eqz v0, :cond_203

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_207

    .line 229
    :cond_203
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppId:Ljava/lang/String;

    .line 231
    :cond_207
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppKey:Ljava/lang/String;

    if-eqz v0, :cond_215

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_219

    .line 232
    :cond_215
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strwxAppKey:Ljava/lang/String;

    .line 234
    :cond_219
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strmsdkAppkey:Ljava/lang/String;

    if-eqz v0, :cond_227

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strmsdkAppkey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 235
    :cond_227
    const-string v0, "1"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strmsdkAppkey:Ljava/lang/String;

    .line 237
    :cond_22b
    return-void
.end method

.method public initializeGameForSDK()V
    .registers 1

    .prologue
    .line 240
    return-void
.end method

.method public isFirstPlay(Ljava/util/HashMap;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportFunction(Lonlysdk/framework/enumtype/AgentFuncType;)Z
    .registers 3
    .param p1, "type"    # Lonlysdk/framework/enumtype/AgentFuncType;

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultHandle(IILandroid/content/Intent;Ljava/util/HashMap;)V
    .registers 5
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
    .line 379
    .local p4, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onBackPressedHandle(Ljava/util/HashMap;)V
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
    .line 442
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
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
    .line 388
    .local p2, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onCreateHandle(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 415
    return-void
.end method

.method public onDestroyHandle(Ljava/util/HashMap;)V
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
    .line 370
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onNewIntentHandle(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 406
    return-void
.end method

.method public abstract onPauseHandle(Ljava/util/HashMap;)V
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
.end method

.method public onRequestPermissionsResultHandle(I[Ljava/lang/String;[ILjava/util/HashMap;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p4, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 332
    return-void
.end method

.method public abstract onResumeHandle(Ljava/util/HashMap;)V
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
    .line 397
    .local p2, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public abstract onStartHandle(Ljava/util/HashMap;)V
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
    .line 354
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public abstract onStopHandle(Ljava/util/HashMap;)V
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
.end method

.method public onWindowFocusChangedHandle(ZLjava/util/HashMap;)V
    .registers 3
    .param p1, "hasFocus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p2, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pUser:Lonlysdk/framework/protocol/OnlySDKUser;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pUser:Lonlysdk/framework/protocol/OnlySDKUser;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKUser;->releaseData()V

    .line 116
    :cond_9
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pIAP:Lonlysdk/framework/protocol/OnlySDKIAP;

    if-eqz v0, :cond_12

    .line 117
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pIAP:Lonlysdk/framework/protocol/OnlySDKIAP;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKIAP;->releaseData()V

    .line 119
    :cond_12
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pShare:Lonlysdk/framework/protocol/OnlySDKShare;

    if-eqz v0, :cond_1b

    .line 120
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pShare:Lonlysdk/framework/protocol/OnlySDKShare;

    invoke-virtual {v0}, Lonlysdk/framework/protocol/OnlySDKShare;->releaseData()V

    .line 122
    :cond_1b
    return-void
.end method

.method public final setActionListener(Lonlysdk/framework/listener/SDKActionListener;)V
    .registers 2
    .param p1, "listener"    # Lonlysdk/framework/listener/SDKActionListener;

    .prologue
    .line 449
    iput-object p1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_lisenerSDKAct:Lonlysdk/framework/listener/SDKActionListener;

    .line 450
    return-void
.end method

.method public setDebugMode(Z)V
    .registers 3
    .param p1, "bDebug"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_isDebugMode:Z

    .line 306
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pUser:Lonlysdk/framework/protocol/OnlySDKUser;

    if-eqz v0, :cond_b

    .line 307
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pUser:Lonlysdk/framework/protocol/OnlySDKUser;

    invoke-virtual {v0, p1}, Lonlysdk/framework/protocol/OnlySDKUser;->setDebugMode(Z)V

    .line 310
    :cond_b
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pIAP:Lonlysdk/framework/protocol/OnlySDKIAP;

    if-eqz v0, :cond_14

    .line 311
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pIAP:Lonlysdk/framework/protocol/OnlySDKIAP;

    invoke-virtual {v0, p1}, Lonlysdk/framework/protocol/OnlySDKIAP;->setDebugMode(Z)V

    .line 314
    :cond_14
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pShare:Lonlysdk/framework/protocol/OnlySDKShare;

    if-eqz v0, :cond_1d

    .line 315
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_pShare:Lonlysdk/framework/protocol/OnlySDKShare;

    invoke-virtual {v0, p1}, Lonlysdk/framework/protocol/OnlySDKShare;->setDebugMode(Z)V

    .line 317
    :cond_1d
    return-void
.end method

.method public setLanguage(Ljava/util/HashMap;)V
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
    .line 256
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_c

    .line 257
    const-string v0, "language"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    .line 259
    :cond_c
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 260
    :cond_1a
    const-string v0, "Chinese_Simple"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    .line 262
    :cond_1e
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 263
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "German"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 264
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "Portuguese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 265
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "French"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 266
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "Spanish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 267
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "Italian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 268
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "Russian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 269
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "Turkish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 270
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "Thai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 271
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "Chinese_Simple"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 272
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "Chinese_Tradition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 273
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 274
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 276
    const-string v0, "Chinese_Simple"

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKAgent;->_strCurLanguage:Ljava/lang/String;

    .line 278
    :cond_a4
    return-void
.end method
