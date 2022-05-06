.class public Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SDKWebViewClient.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SDKWebViewClient"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mProgressDialog:Landroid/app/Dialog;

.field protected mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "progressDialog"    # Landroid/app/Dialog;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->mProgressDialog:Landroid/app/Dialog;

    .line 42
    return-void
.end method


# virtual methods
.method protected dismissDialog()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 90
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 92
    :cond_11
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "SDKWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKWebViewClient onPageFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->dismissDialog()V

    .line 74
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 47
    const-string v0, "SDKWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKWebViewClient onPageStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->showProgressDialog()V

    .line 49
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "SDKWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKWebViewClient onReceivedError url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 54
    const-string v1, "SDKWebViewClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDKWebViewClient onReceivedSslError error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    const-string v0, ""

    :goto_19
    invoke-static {v1, v0}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    .line 58
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 60
    :cond_23
    return-void

    .line 55
    :cond_24
    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public setSDKWebView(Lcom/games37/riversdk/core/webveiew/SDKWebView;)V
    .registers 2
    .param p1, "sdkWebView"    # Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .line 96
    return-void
.end method

.method protected showProgressDialog()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 81
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 83
    :cond_11
    return-void
.end method
