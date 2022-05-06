.class public Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;
.super Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil;
.source "GM99WebViewUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil;-><init>()V

    return-void
.end method

.method public static getParams(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/util/Map;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "webType"    # Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;",
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
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil$1;->$SwitchMap$com$games37$riversdk$core$webveiew$utils$WebViewUtil$WebType:[I

    invoke-virtual {p1}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 141
    :goto_c
    return-object v0

    .line 102
    :pswitch_d
    invoke-static {p0}, Lcom/games37/riversdk/gm99/utils/GM99WebParamsWrapper;->getFAQMap(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v0

    .line 103
    goto :goto_c

    .line 106
    :pswitch_12
    invoke-static {p0}, Lcom/games37/riversdk/gm99/utils/GM99WebParamsWrapper;->getRechargeMap(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v0

    .line 107
    goto :goto_c

    .line 110
    :pswitch_17
    invoke-static {p0}, Lcom/games37/riversdk/gm99/utils/GM99WebParamsWrapper;->getUpdateMap(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v0

    .line 111
    goto :goto_c

    .line 114
    :pswitch_1c
    invoke-static {p0}, Lcom/games37/riversdk/gm99/utils/GM99WebParamsWrapper;->getUserCenterMap(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v0

    .line 115
    goto :goto_c

    .line 118
    :pswitch_21
    invoke-static {p0}, Lcom/games37/riversdk/gm99/utils/GM99WebParamsWrapper;->getAutoOnlineChatInfo(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v0

    .line 119
    goto :goto_c

    .line 122
    :pswitch_26
    invoke-static {}, Lcom/games37/riversdk/gm99/utils/GM99WebParamsWrapper;->getRetrievePasswordMap()Ljava/util/Map;

    move-result-object v0

    .line 123
    goto :goto_c

    .line 126
    :pswitch_2b
    const-string v1, "4"

    invoke-static {p0, v1}, Lcom/games37/riversdk/gm99/utils/GM99WebParamsWrapper;->getChatInfo(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 127
    goto :goto_c

    .line 130
    :pswitch_32
    invoke-static {p0, p2}, Lcom/games37/riversdk/gm99/utils/GM99WebParamsWrapper;->getACParamsMap(Landroid/app/Activity;Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    .line 131
    goto :goto_c

    .line 134
    :pswitch_37
    invoke-static {p0, p2}, Lcom/games37/riversdk/gm99/utils/GM99WebParamsWrapper;->getFloatViewMenuMap(Landroid/app/Activity;Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    .line 135
    goto :goto_c

    .line 99
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_17
        :pswitch_1c
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_32
        :pswitch_37
    .end packed-switch
.end method

.method public static getUrl(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "webType"    # Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->getParams(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    .line 155
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 157
    const-string v3, "url"

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "urlPart":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->parseMap2URL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .end local v2    # "urlPart":Ljava/lang/String;
    :goto_1a
    return-object v0

    :cond_1b
    const-string v0, ""

    goto :goto_1a
.end method

.method public static openBrowser(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    sget-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->FLOATVIEW_MENU:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    invoke-static {p0, v0, p1}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->getUrl(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static openWebView(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "webType"    # Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->getUrl(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openWebView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static openWebView(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 66
    sget-object v1, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->TAG:Ljava/lang/String;

    const-string v2, "openWebView the url is empty!"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_d
    return-void

    .line 69
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/games37/riversdk/core/webveiew/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "WEBVIEW_PATH"

    const-string v2, "com.games37.riversdk.gm99.webview.GM99SDKWebview"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "JS_METHOD_CLASS_PATH"

    const-string v2, "com.games37.riversdk.gm99.webview.GM99JSMethod"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "ACTIVITY_PRESENTER_CLASS_PATH"

    const-string v2, "com.games37.riversdk.gm99.webview.GM99WebviewActivityPresenter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "INJECT_OBJECT_NAME"

    const-string v2, "sdkCtrl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "EXTEND_VIEW_PATH"

    const-string v2, "com.games37.riversdk.gm99.webview.GM99WebviewToolBar"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method public static wrapperSessionRequestURL(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 16
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "webType"    # Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->getUrl(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "forwordURL":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "timeStamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v11

    const-string v12, "PASSPORTKEY"

    .line 177
    invoke-virtual {v11, v12}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "passportKey":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v11

    const-string v12, "PRODUCTID"

    .line 180
    invoke-virtual {v11, v12}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/games37/riversdk/core/model/UserInformation;->getServerId()Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "serverId":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "token":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v9, "userInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "loginName"

    invoke-virtual {v9, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v11, "token"

    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v11, "timeStamp"

    invoke-virtual {v9, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v11, "gameId"

    invoke-virtual {v9, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v11, "serverId"

    invoke-virtual {v9, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v10, "1"

    .line 193
    .local v10, "version":Ljava/lang/String;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_75

    .line 194
    const-string v10, "0"

    .line 197
    :cond_75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v0, "forwardParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "mtimestamp"

    invoke-virtual {v0, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v11, "mtoken"

    invoke-virtual {v0, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v11, "version"

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v11, "forward"

    .line 203
    invoke-static {v1, v0}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil;->parseMap2URL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 202
    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://passport.gm99.com/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/games37/riversdk/gm99/constant/GM99URLConstant;->DIRLOGIN:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "sessionRedirectURL":Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil;->parseMap2URL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method
