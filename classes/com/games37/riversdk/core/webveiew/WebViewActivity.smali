.class public Lcom/games37/riversdk/core/webveiew/WebViewActivity;
.super Lcom/games37/riversdk/core/activity/BaseActivity;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;


# static fields
.field public static final ACTIVITY_PRESENTER_CLASS_PATH:Ljava/lang/String; = "ACTIVITY_PRESENTER_CLASS_PATH"

.field public static final EXTEND_VIEW_PATH:Ljava/lang/String; = "EXTEND_VIEW_PATH"

.field public static final INJECT_OBJECT_NAME:Ljava/lang/String; = "INJECT_OBJECT_NAME"

.field public static final JS_METHOD_CLASS_PATH:Ljava/lang/String; = "JS_METHOD_CLASS_PATH"

.field public static final TAG:Ljava/lang/String;

.field public static final URL:Ljava/lang/String; = "URL"

.field public static final WEBVIEW_PATH:Ljava/lang/String; = "WEBVIEW_PATH"


# instance fields
.field protected mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

.field protected mContentView:Landroid/widget/FrameLayout;

.field protected mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

.field protected mSdkJsMethod:Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private createExtendView(Ljava/lang/String;)V
    .registers 8
    .param p1, "fullPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 144
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v1, v3

    const-class v2, Lcom/games37/riversdk/core/webveiew/SDKWebView;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    iget-object v3, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    aput-object v3, v2, v4

    invoke-static {p1, v1, v2}, Lcom/games37/riversdk/common/utils/ReflectUtil;->getObject(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_30

    .line 148
    check-cast v0, Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    .end local v0    # "obj":Ljava/lang/Object;
    iput-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    .line 149
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_30

    .line 150
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 154
    :cond_30
    return-void
.end method

.method private createWebView(Ljava/lang/String;)Lcom/games37/riversdk/core/webveiew/SDKWebView;
    .registers 8
    .param p1, "fullPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 123
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v1, v3

    const-class v2, Landroid/widget/ProgressBar;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    iget-object v3, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    aput-object v3, v2, v4

    invoke-static {p1, v1, v2}, Lcom/games37/riversdk/common/utils/ReflectUtil;->getObject(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_24

    .line 127
    check-cast v0, Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .line 132
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_23
    return-object v0

    .line 129
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_24
    new-instance v0, Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .end local v0    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {v0, p0, v1}, Lcom/games37/riversdk/core/webveiew/SDKWebView;-><init>(Landroid/app/Activity;Landroid/widget/ProgressBar;)V

    goto :goto_23

    .line 132
    :cond_2c
    new-instance v0, Lcom/games37/riversdk/core/webveiew/SDKWebView;

    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {v0, p0, v1}, Lcom/games37/riversdk/core/webveiew/SDKWebView;-><init>(Landroid/app/Activity;Landroid/widget/ProgressBar;)V

    goto :goto_23
.end method

.method private dissmissCallback()V
    .registers 4

    .prologue
    .line 308
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v1

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->WEBVIEW:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 309
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;)Lcom/games37/riversdk/core/callback/BaseCallback;

    move-result-object v0

    .line 310
    .local v0, "callback":Lcom/games37/riversdk/core/callback/BaseCallback;
    if-eqz v0, :cond_f

    .line 311
    invoke-virtual {v0}, Lcom/games37/riversdk/core/callback/BaseCallback;->onViewDismiss()V

    .line 313
    :cond_f
    return-void
.end method

.method private initActivityPresenter()V
    .registers 5

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ACTIVITY_PRESENTER_CLASS_PATH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "acprClassPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 178
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/ReflectUtil;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1a

    .line 180
    check-cast v1, Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    .end local v1    # "obj":Ljava/lang/Object;
    iput-object v1, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    .line 183
    :cond_1a
    return-void
.end method

.method private initView()V
    .registers 5

    .prologue
    .line 96
    const-string v2, "fl_content"

    .line 97
    invoke-static {p0, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 96
    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 98
    const-string v2, "pb_progress"

    .line 99
    invoke-static {p0, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 98
    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 101
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "WEBVIEW_PATH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "webViewPath":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->createWebView(Ljava/lang/String;)Lcom/games37/riversdk/core/webveiew/SDKWebView;

    move-result-object v2

    iput-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .line 103
    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v2, p0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setWebviewScroolCallback(Lcom/games37/riversdk/core/webveiew/SDKWebView$WebviewScroolCallback;)V

    .line 104
    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTEND_VIEW_PATH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "extendViewPath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->createExtendView(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v2, :cond_50

    .line 111
    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    iget-object v3, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->setExtendView(Lcom/games37/riversdk/core/webveiew/view/IExtendView;)V

    .line 113
    :cond_50
    return-void
.end method

.method private loadUrl()V
    .registers 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadUrl url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 194
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->onDestroy()V

    .line 195
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->finish()V

    .line 202
    :cond_2e
    :goto_2e
    return-void

    .line 199
    :cond_2f
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    if-eqz v1, :cond_2e

    .line 200
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v1, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->load(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method private showCallback()V
    .registers 4

    .prologue
    .line 300
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v1

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->WEBVIEW:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 301
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;)Lcom/games37/riversdk/core/callback/BaseCallback;

    move-result-object v0

    .line 302
    .local v0, "callback":Lcom/games37/riversdk/core/callback/BaseCallback;
    if-eqz v0, :cond_f

    .line 303
    invoke-virtual {v0}, Lcom/games37/riversdk/core/callback/BaseCallback;->onViewShow()V

    .line 305
    :cond_f
    return-void
.end method


# virtual methods
.method protected initData()V
    .registers 6

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "JS_METHOD_CLASS_PATH"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "jsClassPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "INJECT_OBJECT_NAME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "injectObjName":Ljava/lang/String;
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 164
    :cond_20
    invoke-static {v1}, Lcom/games37/riversdk/common/utils/ReflectUtil;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 165
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3d

    .line 166
    check-cast v2, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;

    .end local v2    # "obj":Ljava/lang/Object;
    iput-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSdkJsMethod:Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;

    .line 167
    iget-object v3, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSdkJsMethod:Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;

    invoke-virtual {v3, p0}, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->setActivity(Landroid/app/Activity;)V

    .line 168
    iget-object v3, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSdkJsMethod:Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;

    iget-object v4, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;->setWebView(Landroid/webkit/WebView;)V

    .line 169
    iget-object v3, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    iget-object v4, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSdkJsMethod:Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;

    invoke-virtual {v3, v4, v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :cond_3d
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 317
    sget-object v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-super {p0, p1, p2, p3}, Lcom/games37/riversdk/core/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 319
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    if-eqz v0, :cond_13

    .line 320
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 322
    :cond_13
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    if-eqz v0, :cond_1c

    .line 323
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/games37/riversdk/core/presenter/IActivityPresenter;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 325
    :cond_1c
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v0, :cond_25

    .line 326
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 328
    :cond_25
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 293
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->goBack()V

    .line 297
    :goto_11
    return-void

    .line 295
    :cond_12
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->finish()V

    goto :goto_11
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 333
    sget-object v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget-object v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "r1_plat_core_view_webview_activity"

    invoke-static {p0, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->initView()V

    .line 78
    invoke-virtual {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->initData()V

    .line 79
    invoke-direct {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->initActivityPresenter()V

    .line 80
    invoke-direct {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->showCallback()V

    .line 81
    invoke-direct {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->loadUrl()V

    .line 83
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    if-eqz v0, :cond_2b

    .line 84
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    invoke-interface {v0, p0}, Lcom/games37/riversdk/core/presenter/IActivityPresenter;->onCreate(Landroid/app/Activity;)V

    .line 87
    :cond_2b
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v0, :cond_34

    .line 88
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->onCreate(Landroid/app/Activity;)V

    .line 90
    :cond_34
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onDestroy()V

    .line 273
    sget-object v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->dissmissCallback()V

    .line 275
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    if-eqz v0, :cond_1c

    .line 276
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->removeAllViews()V

    .line 277
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->onDestroy()V

    .line 279
    :cond_1c
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->destroy()V

    .line 280
    iput-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .line 281
    iput-object v2, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 282
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    if-eqz v0, :cond_2e

    .line 283
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    invoke-interface {v0, p0}, Lcom/games37/riversdk/core/presenter/IActivityPresenter;->onDestroy(Landroid/app/Activity;)V

    .line 285
    :cond_2e
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v0, :cond_37

    .line 286
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->onDestroy(Landroid/app/Activity;)V

    .line 288
    :cond_37
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 233
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onPause()V

    .line 234
    sget-object v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    if-eqz v0, :cond_13

    .line 236
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->onPause()V

    .line 238
    :cond_13
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    if-eqz v0, :cond_1c

    .line 239
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    invoke-interface {v0, p0}, Lcom/games37/riversdk/core/presenter/IActivityPresenter;->onPause(Landroid/app/Activity;)V

    .line 241
    :cond_1c
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v0, :cond_25

    .line 242
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->onPause(Landroid/app/Activity;)V

    .line 244
    :cond_25
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 260
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onRestart()V

    .line 261
    sget-object v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    if-eqz v0, :cond_13

    .line 263
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    invoke-interface {v0, p0}, Lcom/games37/riversdk/core/presenter/IActivityPresenter;->onRestart(Landroid/app/Activity;)V

    .line 265
    :cond_13
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v0, :cond_1c

    .line 266
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->onRestart(Landroid/app/Activity;)V

    .line 268
    :cond_1c
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 218
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onResume()V

    .line 219
    sget-object v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    if-eqz v0, :cond_13

    .line 221
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mSDKWebView:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->onResume()V

    .line 223
    :cond_13
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    if-eqz v0, :cond_1c

    .line 224
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    invoke-interface {v0, p0}, Lcom/games37/riversdk/core/presenter/IActivityPresenter;->onResume(Landroid/app/Activity;)V

    .line 226
    :cond_1c
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v0, :cond_25

    .line 227
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->onResume(Landroid/app/Activity;)V

    .line 229
    :cond_25
    return-void
.end method

.method public onScrollDown()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v0, :cond_9

    .line 339
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->show()V

    .line 341
    :cond_9
    return-void
.end method

.method public onScrollUp()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v0, :cond_9

    .line 346
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->hide()V

    .line 348
    :cond_9
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 206
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onStart()V

    .line 207
    sget-object v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    if-eqz v0, :cond_13

    .line 209
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    invoke-interface {v0, p0}, Lcom/games37/riversdk/core/presenter/IActivityPresenter;->onStart(Landroid/app/Activity;)V

    .line 211
    :cond_13
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v0, :cond_1c

    .line 212
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->onStart(Landroid/app/Activity;)V

    .line 214
    :cond_1c
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 248
    invoke-super {p0}, Lcom/games37/riversdk/core/activity/BaseActivity;->onStop()V

    .line 249
    sget-object v0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    if-eqz v0, :cond_13

    .line 251
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mActivityPresenter:Lcom/games37/riversdk/core/presenter/IActivityPresenter;

    invoke-interface {v0, p0}, Lcom/games37/riversdk/core/presenter/IActivityPresenter;->onStop(Landroid/app/Activity;)V

    .line 253
    :cond_13
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    if-eqz v0, :cond_1c

    .line 254
    iget-object v0, p0, Lcom/games37/riversdk/core/webveiew/WebViewActivity;->mExtendView:Lcom/games37/riversdk/core/webveiew/view/IExtendView;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;->onStop(Landroid/app/Activity;)V

    .line 256
    :cond_1c
    return-void
.end method
