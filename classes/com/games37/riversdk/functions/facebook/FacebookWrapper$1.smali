.class Lcom/games37/riversdk/functions/facebook/FacebookWrapper$1;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookLoginWithPermission(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

.field final synthetic val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$1;->this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    iput-object p2, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$1;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 223
    # getter for: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestAccessToken onCancel"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$1;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-interface {v0}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onCancel()V

    .line 225
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 5
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 229
    # getter for: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAccessToken onError message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    instance-of v0, p1, Lcom/facebook/FacebookAuthorizationException;

    if-eqz v0, :cond_2f

    .line 231
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 232
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 235
    :cond_2f
    # getter for: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAccessToken FacebookException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz p1, :cond_5a

    .line 237
    iget-object v0, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$1;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    sget-object v1, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->FAILED:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onFailed(ILjava/lang/String;)V

    .line 239
    :cond_5a
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .registers 6
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 213
    # getter for: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "requestAccessToken onSuccess"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "token":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "accessToken"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$1;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-interface {v2, v0}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 210
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
