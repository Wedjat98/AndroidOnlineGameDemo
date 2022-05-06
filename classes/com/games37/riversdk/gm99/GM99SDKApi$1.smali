.class Lcom/games37/riversdk/gm99/GM99SDKApi$1;
.super Ljava/lang/Object;
.source "GM99SDKApi.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/GM99SDKApi;->sqSDKAutoLogin(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/core/callback/ResultCallback",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/GM99SDKApi;Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/GM99SDKApi;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "GM99SDKApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autologin error! statusCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/GM99SDKApi;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v0, p1, p2, v1}, Lcom/games37/riversdk/gm99/GM99SDKApi;->access$100(Lcom/games37/riversdk/gm99/GM99SDKApi;ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 168
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "GM99SDKApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autologin fail! statusCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/GM99SDKApi;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v0, p1, p2, v1}, Lcom/games37/riversdk/gm99/GM99SDKApi;->access$000(Lcom/games37/riversdk/gm99/GM99SDKApi;ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 162
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 146
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->onSuccess(ILjava/util/Map;)V

    return-void
.end method

.method public onSuccess(ILjava/util/Map;)V
    .registers 5
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "GM99SDKApi"

    const-string v1, "sqSDKAutoLogin success!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/manager/GM99LoginManagerImpl;->showWelcomeToast(Landroid/app/Activity;)V

    .line 152
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->show()V

    .line 154
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getFunctionList(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 156
    return-void
.end method
