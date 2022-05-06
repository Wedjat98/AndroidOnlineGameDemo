.class public Lcom/games37/riversdk/gm99/webview/GM99SDKWebview;
.super Lcom/games37/riversdk/core/webveiew/SDKWebView;
.source "GM99SDKWebview.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GM99SDKWebview"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/webveiew/SDKWebView;-><init>(Landroid/app/Activity;)V

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/games37/riversdk/gm99/webview/GM99SDKWebview;->init(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "progressDialog"    # Landroid/app/Dialog;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebView;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/gm99/webview/GM99SDKWebview;->init(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ProgressBar;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "progressBar"    # Landroid/widget/ProgressBar;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebView;-><init>(Landroid/app/Activity;Landroid/widget/ProgressBar;)V

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/games37/riversdk/gm99/webview/GM99SDKWebview;->init(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 30
    return-void
.end method

.method private init(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "progressDialog"    # Landroid/app/Dialog;

    .prologue
    .line 38
    if-eqz p2, :cond_14

    .line 39
    new-instance v0, Lcom/games37/riversdk/gm99/webview/GM99WebViewClient;

    invoke-direct {v0, p1, p2}, Lcom/games37/riversdk/gm99/webview/GM99WebViewClient;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99SDKWebview;->webViewClient:Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;

    .line 43
    :goto_9
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99SDKWebview;->webViewClient:Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->setSDKWebView(Lcom/games37/riversdk/core/webveiew/SDKWebView;)V

    .line 44
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99SDKWebview;->webViewClient:Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/webview/GM99SDKWebview;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 45
    return-void

    .line 41
    :cond_14
    new-instance v0, Lcom/games37/riversdk/gm99/webview/GM99WebViewClient;

    invoke-direct {v0, p1}, Lcom/games37/riversdk/gm99/webview/GM99WebViewClient;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99SDKWebview;->webViewClient:Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;

    goto :goto_9
.end method
