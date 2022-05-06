.class public Lcom/games37/riversdk/gm99/webview/GM99JSMethod;
.super Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;
.source "GM99JSMethod.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mPresenter:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/games37/riversdk/core/webveiew/model/SDKJSMethod;-><init>()V

    .line 30
    new-instance v0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    invoke-direct {v0}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->mPresenter:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;)Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/webview/GM99JSMethod;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->mPresenter:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    return-object v0
.end method


# virtual methods
.method public closeWebview()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->mPresenter:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    if-eqz v0, :cond_16

    .line 36
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$1;

    invoke-direct {v1, p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$1;-><init>(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 43
    :cond_16
    return-void
.end method

.method public fbShare(Ljava/lang/String;)V
    .registers 5
    .param p1, "jsonParams"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fbShare params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->mPresenter:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$6;

    invoke-direct {v2, p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$6;-><init>(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->fbShare(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V

    .line 107
    return-void
.end method

.method public openBrowserWithURL(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->mPresenter:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    if-eqz v0, :cond_16

    .line 84
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$5;

    invoke-direct {v1, p0, p1}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$5;-><init>(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    :cond_16
    return-void
.end method

.method public openChatInBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->mPresenter:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    if-eqz v0, :cond_16

    .line 60
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$3;-><init>(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    :cond_16
    return-void
.end method

.method public openFaqInBrowser()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->mPresenter:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    if-eqz v0, :cond_16

    .line 48
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$2;

    invoke-direct {v1, p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$2;-><init>(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 55
    :cond_16
    return-void
.end method

.method public openVIPChatInBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 72
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/games37/riversdk/gm99/webview/GM99JSMethod$4;-><init>(Lcom/games37/riversdk/gm99/webview/GM99JSMethod;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    :cond_12
    return-void
.end method
