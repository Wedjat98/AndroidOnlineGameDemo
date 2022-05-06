.class public Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;
.super Ljava/lang/Object;
.source "SDKJSMethod.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SDKJSMethod"


# instance fields
.field public mActivityWF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mWebViewWF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public callSDKMethodWithParameters(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 58
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod$1;-><init>(Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    :cond_12
    return-void
.end method

.method public close()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->mActivityWF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->mWebViewWF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public invokeJSMethod(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "jsMethodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    instance-of v1, v1, Lcom/games37/riversdk/core/webveiew/SDKWebView;

    if-eqz v1, :cond_17

    .line 97
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .line 98
    .local v0, "sdkWebView":Lcom/games37/riversdk/core/webveiew/SDKWebView;
    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->invokeJSMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "sdkWebView":Lcom/games37/riversdk/core/webveiew/SDKWebView;
    :cond_17
    return-void
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v2, "SDKJSMethod"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeMethod methodName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 87
    :goto_28
    return-void

    .line 81
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_42} :catch_43

    goto :goto_28

    .line 84
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_43
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SDKJSMethod"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeMethod Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->mActivityWF:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .registers 3
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->mWebViewWF:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method
