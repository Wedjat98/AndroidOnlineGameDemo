.class public Lcom/games37/riversdk/gm99/webview/GM99WebViewClient;
.super Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;
.source "GM99WebViewClient.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;-><init>(Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "progressDialog"    # Landroid/app/Dialog;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 30
    return-void
.end method

.method private hideExtendView(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "bbs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 49
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebViewClient;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->getExtendView()Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->setNeverShow(Z)V

    .line 50
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebViewClient;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->getExtendView()Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->hide()V

    .line 54
    :goto_21
    return-void

    .line 52
    :cond_22
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebViewClient;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->getExtendView()Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->setNeverShow(Z)V

    goto :goto_21
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 34
    if-eqz p2, :cond_d

    .line 35
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 36
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_12

    const-string v1, ""

    :goto_a
    invoke-direct {p0, v1}, Lcom/games37/riversdk/gm99/webview/GM99WebViewClient;->hideExtendView(Ljava/lang/String;)V

    .line 38
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v1

    return v1

    .line 36
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_12
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcom/games37/riversdk/gm99/webview/GM99WebViewClient;->hideExtendView(Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
