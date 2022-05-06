.class public abstract Lonlysdk/framework/protocol/OnlySDKUser;
.super Lonlysdk/framework/protocol/OnlySDKProtocol;
.source "OnlySDKUser.java"


# static fields
.field public static final _c_userkey_gameFlowType_CreateRole:Ljava/lang/String; = "createRole"

.field public static final _c_userkey_gameFlowType_ExitGame:Ljava/lang/String; = "exitGame"

.field public static final _c_userkey_gameFlowType_LoginGame:Ljava/lang/String; = "loginGame"

.field public static final _c_userkey_gameFlowType_OnLogout:Ljava/lang/String; = "onlogout"

.field public static final _c_userkey_gameFlowType_OnStop:Ljava/lang/String; = "onstop"

.field public static final _c_userkey_gameFlowType_UpgradeLevel:Ljava/lang/String; = "upgradeLevel"

.field public static final _c_userkey_gameFlowType_UpgradeLevelTo:Ljava/lang/String; = "upgradeLevelTo"

.field public static final _c_userkey_gameFlowType_enterWorld:Ljava/lang/String; = "enterWorld"

.field public static final _userkey_accesstoken:Ljava/lang/String; = "accesstoken"

.field public static final _userkey_balance:Ljava/lang/String; = "balance"

.field public static final _userkey_expSum:Ljava/lang/String; = "expSum"

.field public static final _userkey_extra:Ljava/lang/String; = "extra"

.field public static final _userkey_fightpower:Ljava/lang/String; = "fightpower"

.field public static final _userkey_firstCurrency:Ljava/lang/String; = "firstCurrency"

.field public static final _userkey_friendlist:Ljava/lang/String; = "friendlist"

.field public static final _userkey_gameFlowType:Ljava/lang/String; = "gameFlowType"

.field public static final _userkey_gender:Ljava/lang/String; = "gender"

.field public static final _userkey_lastLogoutTime:Ljava/lang/String; = "lastLogoutTime"

.field public static final _userkey_lastOperation:Ljava/lang/String; = "lastOperation"

.field public static final _userkey_lastScene:Ljava/lang/String; = "lastScene"

.field public static final _userkey_loginTime:Ljava/lang/String; = "loginTime"

.field public static final _userkey_loginType:Ljava/lang/String; = "loginType"

.field public static final _userkey_money:Ljava/lang/String; = "money"

.field public static final _userkey_moneySum:Ljava/lang/String; = "moneySum"

.field public static final _userkey_msgType:Ljava/lang/String; = "msgType"

.field public static final _userkey_newAccount:Ljava/lang/String; = "newAccount"

.field public static final _userkey_onlineTime:Ljava/lang/String; = "onlineTime"

.field public static final _userkey_partyid:Ljava/lang/String; = "partyid"

.field public static final _userkey_partyname:Ljava/lang/String; = "partyname"

.field public static final _userkey_partyroleid:Ljava/lang/String; = "partyroleid"

.field public static final _userkey_partyrolename:Ljava/lang/String; = "partyrolename"

.field public static final _userkey_power:Ljava/lang/String; = "power"

.field public static final _userkey_profession:Ljava/lang/String; = "profession"

.field public static final _userkey_professionid:Ljava/lang/String; = "professionid"

.field public static final _userkey_professionroleid:Ljava/lang/String; = "professionroleid"

.field public static final _userkey_professionrolename:Ljava/lang/String; = "professionrolename"

.field public static final _userkey_ranking:Ljava/lang/String; = "ranking"

.field public static final _userkey_roleCreateTime:Ljava/lang/String; = "roleCreateTime"

.field public static final _userkey_roleExp:Ljava/lang/String; = "roleExp"

.field public static final _userkey_roleFactionName:Ljava/lang/String; = "factionName"

.field public static final _userkey_roleID:Ljava/lang/String; = "roleID"

.field public static final _userkey_roleLevel:Ljava/lang/String; = "roleLevel"

.field public static final _userkey_roleName:Ljava/lang/String; = "roleName"

.field public static final _userkey_secondCurrency:Ljava/lang/String; = "secondCurrency"

.field public static final _userkey_serviceName:Ljava/lang/String; = "serviceName"

.field public static final _userkey_sex:Ljava/lang/String; = "sex"

.field public static final _userkey_type:Ljava/lang/String; = "type"

.field public static final _userkey_userid:Ljava/lang/String; = "userid"

.field public static final _userkey_vip:Ljava/lang/String; = "vip"

.field public static final _userkey_vipExp:Ljava/lang/String; = "vipExp"

.field public static final _userkey_vipLevel:Ljava/lang/String; = "vipLevel"

.field public static final _userkey_zoneID:Ljava/lang/String; = "zoneID"

.field public static final _userkey_zoneName:Ljava/lang/String; = "zoneName"


# instance fields
.field protected _exitGameCallBack:Lonlysdk/framework/listener/ExitGameCallBack;

.field protected _isLogin:Z

.field public _isOpenedFloatWnd:Z

.field protected _lisenerUserAct:Lonlysdk/framework/listener/UserActionListener;

.field public _strCurUserID:Ljava/lang/String;

.field public _strCurUserName:Ljava/lang/String;

.field public _strSessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lonlysdk/framework/protocol/OnlySDKProtocol;-><init>()V

    .line 14
    iput-boolean v1, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_isLogin:Z

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_strCurUserID:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_strCurUserName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_strSessionID:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_isOpenedFloatWnd:Z

    .line 19
    iput-object v2, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_lisenerUserAct:Lonlysdk/framework/listener/UserActionListener;

    .line 20
    iput-object v2, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_exitGameCallBack:Lonlysdk/framework/listener/ExitGameCallBack;

    .line 12
    return-void
.end method


# virtual methods
.method public final SetLoginState(Z)V
    .registers 2
    .param p1, "bLogin"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_isLogin:Z

    .line 147
    return-void
.end method

.method public final SetUserID(Ljava/lang/String;)V
    .registers 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_strCurUserID:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public abstract doAntiAddictionQuery(Ljava/util/HashMap;)V
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

.method public abstract doGuestRegister(Ljava/util/HashMap;)V
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

.method public abstract doRealNameRegister(Ljava/util/HashMap;)V
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

.method public abstract enterPlatformCenter(Ljava/util/HashMap;)V
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

.method public abstract enterPlatformFeedback(Ljava/util/HashMap;)V
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

.method public abstract enterPlatformForum(Ljava/util/HashMap;)V
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

.method public abstract enterService(Ljava/util/HashMap;)V
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

.method public final getActionListener()Lonlysdk/framework/listener/UserActionListener;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_lisenerUserAct:Lonlysdk/framework/listener/UserActionListener;

    return-object v0
.end method

.method public final getExitGameCallBack()Lonlysdk/framework/listener/ExitGameCallBack;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_exitGameCallBack:Lonlysdk/framework/listener/ExitGameCallBack;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string v0, "UserPlugin"

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_isLogin:Z

    if-eqz v0, :cond_7

    .line 165
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_strSessionID:Ljava/lang/String;

    .line 167
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_isLogin:Z

    if-eqz v0, :cond_7

    .line 177
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_strCurUserID:Ljava/lang/String;

    .line 179
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_isLogin:Z

    if-eqz v0, :cond_7

    .line 197
    iget-object v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_strCurUserName:Ljava/lang/String;

    .line 199
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public isGuest()Z
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public isLogined()Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_isLogin:Z

    return v0
.end method

.method public isSupportFunction(Lonlysdk/framework/enumtype/UserFunctionType;)Z
    .registers 3
    .param p1, "type"    # Lonlysdk/framework/enumtype/UserFunctionType;

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public abstract login(Ljava/util/HashMap;)V
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

.method public abstract logout(Ljava/util/HashMap;)V
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

.method public abstract openSDKFloatWnd(Ljava/util/HashMap;)V
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

.method public releaseData()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lonlysdk/framework/protocol/OnlySDKUser;->SetLoginState(Z)V

    .line 100
    iput-boolean v0, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_isOpenedFloatWnd:Z

    .line 101
    return-void
.end method

.method public final setActionListener(Lonlysdk/framework/listener/UserActionListener;)V
    .registers 2
    .param p1, "listener"    # Lonlysdk/framework/listener/UserActionListener;

    .prologue
    .line 279
    iput-object p1, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_lisenerUserAct:Lonlysdk/framework/listener/UserActionListener;

    .line 280
    return-void
.end method

.method public final setExitGameCallBack(Lonlysdk/framework/listener/ExitGameCallBack;)V
    .registers 2
    .param p1, "callBack"    # Lonlysdk/framework/listener/ExitGameCallBack;

    .prologue
    .line 295
    iput-object p1, p0, Lonlysdk/framework/protocol/OnlySDKUser;->_exitGameCallBack:Lonlysdk/framework/listener/ExitGameCallBack;

    .line 296
    return-void
.end method

.method public abstract showExitScreen(Ljava/util/HashMap;)V
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

.method public showExitScreenAfterOnKeyDownBackPressEvent(Landroid/view/KeyEvent;Ljava/util/HashMap;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract showPauseScreen(Ljava/util/HashMap;)V
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

.method public submitExtendDataToSDK(Ljava/util/HashMap;)V
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
    .line 228
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public abstract switchAccount(Ljava/util/HashMap;)V
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
