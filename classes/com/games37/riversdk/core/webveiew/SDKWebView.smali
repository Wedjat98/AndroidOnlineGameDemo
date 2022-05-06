.class public Lcom/games37/riversdk/core/webveiew/SDKWebView;
.super Landroid/webkit/WebView;
.source "SDKWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/webveiew/SDKWebView$CustomGestureDetector;,
        Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SDKWebView"


# instance fields
.field protected extendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

.field protected mActivity:Landroid/app/Activity;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected webChromeClient:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

.field protected webViewClient:Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0, p1, v0, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->init(Landroid/app/Activity;Landroid/widget/ProgressBar;Landroid/app/Dialog;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "progressDialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->init(Landroid/app/Activity;Landroid/widget/ProgressBar;Landroid/app/Dialog;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ProgressBar;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "progressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0, p1, p2, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->init(Landroid/app/Activity;Landroid/widget/ProgressBar;Landroid/app/Dialog;)V

    .line 59
    return-void
.end method

.method private static final removeJavascriptInterfaces(Landroid/webkit/WebView;)V
    .registers 4
    .param p0, "webView"    # Landroid/webkit/WebView;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 230
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1b

    .line 231
    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 232
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 233
    const-string v1, "accessibilityTraversal"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 238
    :cond_1b
    :goto_1b
    return-void

    .line 235
    :catch_1c
    move-exception v0

    .line 236
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b
.end method


# virtual methods
.method public closePage()V
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 290
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 292
    :cond_9
    return-void
.end method

.method public getExtendView()Lcom/games37/riversdk/core/webveiew/view/IExtendView;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->extendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    return-object v0
.end method

.method public goBackPage()V
    .registers 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 272
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->goBack()V

    .line 274
    :cond_9
    return-void
.end method

.method public goForwardPage()V
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 281
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->goForward()V

    .line 283
    :cond_9
    return-void
.end method

.method protected init(Landroid/app/Activity;Landroid/widget/ProgressBar;Landroid/app/Dialog;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "progressBar"    # Landroid/widget/ProgressBar;
    .param p3, "progressDialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->mActivity:Landroid/app/Activity;

    .line 75
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->initSetting()V

    .line 78
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setVerticalScrollBarEnabled(Z)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setVerticalScrollbarOverlay(Z)V

    .line 83
    if-eqz p2, :cond_3a

    .line 84
    new-instance v0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    invoke-direct {v0, p1, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;-><init>(Landroid/app/Activity;Landroid/widget/ProgressBar;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webChromeClient:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    .line 88
    :goto_19
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webChromeClient:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->setSDKWebView(Lcom/games37/riversdk/core/webveiew/SDKWebView;)V

    .line 89
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webChromeClient:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 91
    if-eqz p3, :cond_42

    .line 92
    new-instance v0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;

    invoke-direct {v0, p1, p3}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webViewClient:Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;

    .line 96
    :goto_2c
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webViewClient:Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;->setSDKWebView(Lcom/games37/riversdk/core/webveiew/SDKWebView;)V

    .line 97
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webViewClient:Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    invoke-static {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->removeJavascriptInterfaces(Landroid/webkit/WebView;)V

    .line 100
    return-void

    .line 86
    :cond_3a
    new-instance v0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    invoke-direct {v0, p1}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webChromeClient:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    goto :goto_19

    .line 94
    :cond_42
    new-instance v0, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;

    invoke-direct {v0, p1}, Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webViewClient:Lcom/games37/riversdk/core/webveiew/SDKWebViewClient;

    goto :goto_2c
.end method

.method protected initSetting()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 108
    .local v1, "settings":Landroid/webkit/WebSettings;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_f

    .line 109
    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 112
    :cond_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_18

    .line 113
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 121
    :cond_18
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 123
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 127
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 129
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 131
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 133
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 135
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 138
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 140
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_40

    .line 141
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 144
    :cond_40
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 146
    const-wide/32 v2, 0xa00000

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 148
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 149
    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "appCachePath":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 154
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 155
    return-void
.end method

.method public invokeJSMethod(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramsString"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string v1, "SDKWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeJSMethod methodName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " params ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 265
    :goto_28
    return-void

    .line 251
    :cond_29
    if-nez p2, :cond_2d

    const-string p2, ""

    .line 252
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "url":Ljava/lang/String;
    const-string v1, "SDKWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeJSMethod url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_77

    .line 256
    new-instance v1, Lcom/games37/riversdk/core/webveiew/SDKWebView$1;

    invoke-direct {v1, p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView$1;-><init>(Lcom/games37/riversdk/core/webveiew/SDKWebView;)V

    invoke-virtual {p0, v0, v1}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_28

    .line 263
    :cond_77
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public load(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 164
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setTag(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->loadUrl(Ljava/lang/String;)V

    .line 169
    :goto_c
    return-void

    .line 167
    :cond_d
    const-string v0, "SDKWebView"

    const-string v1, "loadUrl the url is empty!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public load(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 179
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setTag(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    :goto_c
    return-void

    .line 182
    :cond_d
    const-string v0, "SDKWebView"

    const-string v1, "loadUrl the url is empty!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public loadData(Ljava/lang/String;)V
    .registers 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 193
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setTag(Ljava/lang/Object;)V

    .line 194
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_14
    return-void

    .line 196
    :cond_15
    const-string v0, "SDKWebView"

    const-string v1, "loadData the data is empty!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webChromeClient:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webChromeClient:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 220
    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webChromeClient:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    if-eqz v0, :cond_a

    .line 202
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->webChromeClient:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->onDestory()V

    .line 205
    :cond_a
    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->clearHistory()V

    .line 208
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->removeAllViews()V

    .line 209
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->stopLoading()V

    .line 211
    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 212
    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 213
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->destroy()V

    .line 214
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_16

    .line 310
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    .line 312
    :goto_13
    return v0

    .line 310
    :cond_14
    const/4 v0, 0x0

    goto :goto_13

    .line 312
    :cond_16
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public reloadPage()V
    .registers 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->reload()V

    .line 299
    return-void
.end method

.method public setExtendView(Lcom/games37/riversdk/core/webveiew/view/IExtendView;)V
    .registers 2
    .param p1, "extendView"    # Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->extendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    .line 318
    return-void
.end method

.method public setWebviewScroolCallback(Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;

    .prologue
    .line 302
    if-eqz p1, :cond_e

    .line 303
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/games37/riversdk/core/webveiew/SDKWebView$CustomGestureDetector;

    invoke-direct {v1, p0, p1}, Lcom/games37/riversdk/core/webveiew/SDKWebView$CustomGestureDetector;-><init>(Lcom/games37/riversdk/core/webveiew/SDKWebView;Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/SDKWebView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 305
    :cond_e
    return-void
.end method
