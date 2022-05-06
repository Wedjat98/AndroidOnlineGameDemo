.class public Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;
.super Ljava/lang/Object;
.source "GM99LoginPresenterImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/login/presenter/IloginPresenter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 63
    :cond_b
    return-void
.end method

.method public doRegisterAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 35
    invoke-static {p1, p2, p3, p4}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->doRegisterAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 36
    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/games37/riversdk/core/login/model/UserType;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/games37/riversdk/core/callback/ResultCallback;

    .prologue
    .line 48
    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->doLoginAction(Landroid/app/Activity;ZLcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 49
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-static {p1, p2, p3, p4}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    return-void
.end method

.method public showFindPwdDialog(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    sget-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->FIND_PWD:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openWebView(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public showPrivacy(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    const-string v0, "https://service.gm99.com/about/privacypolicy.html"

    invoke-static {p1, v0}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openWebView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public showService(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    const-string v0, "https://msupport.gm99.com/About/termsofuse"

    invoke-static {p1, v0}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openWebView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 43
    return-void
.end method
