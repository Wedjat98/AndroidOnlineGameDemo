.class public Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;
.super Lcom/games37/riversdk/core/webveiew/view/IExtendView;
.source "GM99WebviewToolBar.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WebviewToolBar"


# instance fields
.field private mIvClose:Landroid/widget/ImageView;

.field private mIvGoback:Landroid/widget/ImageView;

.field private mIvGofoward:Landroid/widget/ImageView;

.field private mIvReload:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/SDKWebView;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Lcom/games37/riversdk/core/webveiew/SDKWebView;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/webveiew/view/IExtendView;-><init>(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/SDKWebView;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->init(Landroid/app/Activity;)V

    .line 44
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    const-string v1, "a1_sdk_webview_tool_bar"

    .line 52
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 51
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    const-string v1, "iv_goback"

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvGoback:Landroid/widget/ImageView;

    .line 54
    const-string v1, "iv_gofoward"

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvGofoward:Landroid/widget/ImageView;

    .line 55
    const-string v1, "iv_reload"

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvReload:Landroid/widget/ImageView;

    .line 56
    const-string v1, "iv_close"

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvClose:Landroid/widget/ImageView;

    .line 58
    iget-object v1, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvGoback:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvGofoward:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvReload:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->addView(Landroid/view/View;)V

    .line 64
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 98
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->setVisibility(I)V

    .line 99
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mSDKWebview:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    if-eqz v0, :cond_58

    .line 69
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvGoback:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 70
    const-string v0, "WebviewToolBar"

    const-string v1, "onClick goBackPage"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mSDKWebview:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->goBackPage()V

    .line 85
    :cond_18
    :goto_18
    return-void

    .line 72
    :cond_19
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvGofoward:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 73
    const-string v0, "WebviewToolBar"

    const-string v1, "onClick goForwardPage"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mSDKWebview:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->goForwardPage()V

    goto :goto_18

    .line 75
    :cond_2e
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvReload:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 76
    const-string v0, "WebviewToolBar"

    const-string v1, "onClick reloadPage"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mSDKWebview:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->reloadPage()V

    goto :goto_18

    .line 78
    :cond_43
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 79
    const-string v0, "WebviewToolBar"

    const-string v1, "onClick closePage"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->mSDKWebview:Lcom/games37/riversdk/core/webveiew/SDKWebView;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/webveiew/SDKWebView;->closePage()V

    goto :goto_18

    .line 83
    :cond_58
    const-string v0, "WebviewToolBar"

    const-string v1, "onClick webview is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 124
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->isNeverShow:Z

    if-eqz v0, :cond_8

    .line 90
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->hide()V

    .line 94
    :goto_7
    return-void

    .line 92
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/webview/GM99WebviewToolBar;->setVisibility(I)V

    goto :goto_7
.end method
