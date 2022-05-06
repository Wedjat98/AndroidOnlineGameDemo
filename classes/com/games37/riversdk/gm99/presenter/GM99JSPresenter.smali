.class public Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;
.super Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter;
.source "GM99JSPresenter.java"


# static fields
.field public static final CALLBACK:Ljava/lang/String; = "callback"

.field public static final FB_SHARE_LINK:Ljava/lang/String; = "link"

.field public static final MSG:Ljava/lang/String; = "msg"

.field public static final POSTID:Ljava/lang/String; = "postId"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final TAG:Ljava/lang/String; = "GM99JSPresenter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V
    .registers 7
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p6}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->shareCallback2JS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V

    return-void
.end method

.method private facebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentUrl"    # Ljava/lang/String;
    .param p3, "callbackMethod"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;

    .prologue
    .line 141
    const-string v0, "GM99JSPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facebookShare contentUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callbackMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 144
    const-string v0, "GM99JSPresenter"

    const-string v1, "facebookShare the contentUrl is empty!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_2f
    return-void

    .line 148
    :cond_30
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    move-result-object v0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    new-instance v6, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;

    invoke-direct {v6, p0, p1, p3, p4}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;-><init>(Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    goto :goto_2f
.end method

.method private shareCallback2JS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "postId"    # Ljava/lang/String;
    .param p5, "jsMethodName"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;

    .prologue
    .line 190
    invoke-static {p1, p3}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .local v1, "params":Lorg/json/JSONObject;
    const-string v2, "result"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v2, "postId"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v2, "msg"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p6, p5, v2}, Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;->onFinished(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1e} :catch_1f

    .line 200
    .end local v1    # "params":Lorg/json/JSONObject;
    :goto_1e
    return-void

    .line 197
    :catch_1f
    move-exception v0

    .line 198
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method


# virtual methods
.method public fbShare(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "jsonParams"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;

    .prologue
    .line 114
    const-string v4, "GM99JSPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fbShare params = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :try_start_18
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "callback"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "callbackMethod":Ljava/lang/String;
    const-string v4, "link"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "contentLink":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, p3}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->facebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_2d

    .line 126
    .end local v0    # "callbackMethod":Ljava/lang/String;
    .end local v1    # "contentLink":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_2c
    return-void

    .line 123
    :catch_2d
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "GM99JSPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fbShare Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public openBrowserWithURL(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1, p2}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public openChatInBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameId"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v0, "requestChatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "serverId"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "gameId"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->AUTOCHAT:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->wrapperSessionRequestURL(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "url":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public openFaqInBrowser(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->FAQ:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->wrapperSessionRequestURL(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "url":Ljava/lang/String;
    const-string v3, "GM99JSPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openFaqInBrowser the url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {v2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 59
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 63
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_36
    return-void
.end method

.method public openVIPChatInBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameId"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "requestChatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "serverId"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->CHATVIP:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->wrapperSessionRequestURL(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "url":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 94
    return-void
.end method
