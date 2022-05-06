.class final Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;
.super Ljava/lang/Object;
.source "GM99LoginManagerImpl.java"

# interfaces
.implements Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->facebookAuth(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callBack:Lcom/games37/riversdk/core/callback/ResultCallback;

.field final synthetic val$isShowLoginView:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 4

    .prologue
    .line 336
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$isShowLoginView:Z

    iput-object p3, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$callBack:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    .prologue
    .line 365
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$activity:Landroid/app/Activity;

    const-string v3, "a1_sdk_cancel_text"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$callBack:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    .line 368
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 355
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$activity:Landroid/app/Activity;

    const-string v2, "a1_network_error_notice"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 359
    :cond_14
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "facebook"

    invoke-static {v0, v1, v2, p2}, Lcom/games37/riversdk/core/login/manager/LoginManager;->report(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$callBack:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    .line 361
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 340
    const-string v2, "accessToken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "accessToken":Ljava/lang/String;
    const-string v1, "businessToken"

    .line 343
    .local v1, "businessToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$activity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$isShowLoginView:Z

    iget-object v4, p0, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->val$callBack:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->facebookLogin(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 348
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 336
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl$4;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
