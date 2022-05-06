.class public Lcom/ledo/fantasy/game/LedowebviewActivity;
.super Landroid/app/Activity;
.source "LedowebviewActivity.java"


# static fields
.field private static final LOADTYPE_GET:Ljava/lang/String; = "get"

.field private static final LOADTYPE_LOAD:Ljava/lang/String; = "load"

.field private static ledoWebView:Landroid/webkit/WebView;

.field private static ledoWebViewBackBtn:Landroid/widget/Button;

.field private static ledoWebViewExtBtn:Landroid/widget/Button;

.field private static ledoWebViewForwardBtn:Landroid/widget/Button;

.field private static ledoWebViewReloadBtn:Landroid/widget/Button;

.field private static loadType:Ljava/lang/String;

.field private static postData:Ljava/lang/String;

.field private static preLoadUrl:Ljava/lang/String;

.field private static thisActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->thisActivity:Landroid/app/Activity;

    .line 19
    sput-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebView:Landroid/webkit/WebView;

    .line 20
    sput-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewExtBtn:Landroid/widget/Button;

    .line 21
    sput-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewBackBtn:Landroid/widget/Button;

    .line 22
    sput-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewForwardBtn:Landroid/widget/Button;

    .line 23
    sput-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewReloadBtn:Landroid/widget/Button;

    .line 24
    sput-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->preLoadUrl:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->postData:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->loadType:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->thisActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLoadType()Ljava/lang/String;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->loadType:Ljava/lang/String;

    return-object v0
.end method

.method public static getPostData()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->postData:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreLoadUrl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->preLoadUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static sendGETRequest(Ljava/lang/String;)Z
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 189
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 190
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1f

    .line 192
    const/4 v1, 0x1

    .line 193
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public static setLoadType(Ljava/lang/String;)V
    .registers 1
    .param p0, "loadType"    # Ljava/lang/String;

    .prologue
    .line 53
    sput-object p0, Lcom/ledo/fantasy/game/LedowebviewActivity;->loadType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static setPostData(Ljava/lang/String;)V
    .registers 1
    .param p0, "postData"    # Ljava/lang/String;

    .prologue
    .line 45
    sput-object p0, Lcom/ledo/fantasy/game/LedowebviewActivity;->postData:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static setPreLoadUrl(Ljava/lang/String;)V
    .registers 1
    .param p0, "preLoadUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    sput-object p0, Lcom/ledo/fantasy/game/LedowebviewActivity;->preLoadUrl:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static setThisActivity(Landroid/app/Activity;)V
    .registers 1
    .param p0, "thisActivity"    # Landroid/app/Activity;

    .prologue
    .line 57
    sput-object p0, Lcom/ledo/fantasy/game/LedowebviewActivity;->thisActivity:Landroid/app/Activity;

    .line 58
    return-void
.end method


# virtual methods
.method public getThisActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->thisActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected goBack()V
    .registers 3

    .prologue
    .line 139
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 141
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 147
    :goto_d
    return-void

    .line 145
    :cond_e
    sget v0, Lcom/ledo/fantasy/game/R$string;->firstpage:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method

.method protected goForward()V
    .registers 3

    .prologue
    .line 150
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 152
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 158
    :goto_d
    return-void

    .line 156
    :cond_e
    sget v0, Lcom/ledo/fantasy/game/R$string;->lastpage:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method

.method protected loadUrlWebview(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ledo/fantasy/game/LedoWebViewClient;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/LedoWebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v1, Lcom/ledo/fantasy/game/R$layout;->ledo_webview:I

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->setContentView(I)V

    .line 68
    sput-object p0, Lcom/ledo/fantasy/game/LedowebviewActivity;->thisActivity:Landroid/app/Activity;

    .line 69
    sget v1, Lcom/ledo/fantasy/game/R$id;->ledowebView:I

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    sput-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebView:Landroid/webkit/WebView;

    .line 70
    sget-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 73
    sget-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->loadType:Ljava/lang/String;

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 75
    :try_start_28
    sget-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->preLoadUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->sendGETRequest(Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_7e

    .line 85
    :cond_2d
    :goto_2d
    sget v1, Lcom/ledo/fantasy/game/R$id;->ledowebviewfinish:I

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewExtBtn:Landroid/widget/Button;

    .line 86
    sget-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewExtBtn:Landroid/widget/Button;

    new-instance v2, Lcom/ledo/fantasy/game/LedowebviewActivity$1;

    invoke-direct {v2, p0}, Lcom/ledo/fantasy/game/LedowebviewActivity$1;-><init>(Lcom/ledo/fantasy/game/LedowebviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v1, Lcom/ledo/fantasy/game/R$id;->ledowebviewBack:I

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewBackBtn:Landroid/widget/Button;

    .line 96
    sget-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewBackBtn:Landroid/widget/Button;

    new-instance v2, Lcom/ledo/fantasy/game/LedowebviewActivity$2;

    invoke-direct {v2, p0}, Lcom/ledo/fantasy/game/LedowebviewActivity$2;-><init>(Lcom/ledo/fantasy/game/LedowebviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v1, Lcom/ledo/fantasy/game/R$id;->ledowebviewForward:I

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewForwardBtn:Landroid/widget/Button;

    .line 106
    sget-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewForwardBtn:Landroid/widget/Button;

    new-instance v2, Lcom/ledo/fantasy/game/LedowebviewActivity$3;

    invoke-direct {v2, p0}, Lcom/ledo/fantasy/game/LedowebviewActivity$3;-><init>(Lcom/ledo/fantasy/game/LedowebviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v1, Lcom/ledo/fantasy/game/R$id;->ledowebviewReload:I

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewReloadBtn:Landroid/widget/Button;

    .line 116
    sget-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebViewReloadBtn:Landroid/widget/Button;

    new-instance v2, Lcom/ledo/fantasy/game/LedowebviewActivity$4;

    invoke-direct {v2, p0}, Lcom/ledo/fantasy/game/LedowebviewActivity$4;-><init>(Lcom/ledo/fantasy/game/LedowebviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void

    .line 76
    :catch_7e
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_83
    sget-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->loadType:Ljava/lang/String;

    const-string v2, "load"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 81
    sget-object v1, Lcom/ledo/fantasy/game/LedowebviewActivity;->preLoadUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->loadUrlWebview(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method protected reload()V
    .registers 2

    .prologue
    .line 161
    sget-object v0, Lcom/ledo/fantasy/game/LedowebviewActivity;->ledoWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 162
    return-void
.end method
