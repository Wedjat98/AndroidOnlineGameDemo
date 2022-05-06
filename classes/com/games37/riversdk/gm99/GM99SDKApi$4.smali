.class Lcom/games37/riversdk/gm99/GM99SDKApi$4;
.super Ljava/lang/Object;
.source "GM99SDKApi.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/GM99SDKApi;->sqSDKLogout(Landroid/content/Context;Lcom/games37/riversdk/core/callback/SDKCallback;)V
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

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/GM99SDKApi;Landroid/content/Context;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/GM99SDKApi;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v0, "GM99SDKApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sqSDKLogout net error! msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/GM99SDKApi;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v0, p1, p2, v1}, Lcom/games37/riversdk/gm99/GM99SDKApi;->access$500(Lcom/games37/riversdk/gm99/GM99SDKApi;ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 356
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string v0, "GM99SDKApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sqSDKLogout fail! msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/GM99SDKApi;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v0, p1, p2, v1}, Lcom/games37/riversdk/gm99/GM99SDKApi;->access$400(Lcom/games37/riversdk/gm99/GM99SDKApi;ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 350
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 334
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->onSuccess(ILjava/util/Map;)V

    return-void
.end method

.method public onSuccess(ILjava/util/Map;)V
    .registers 6
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
    .line 337
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "GM99SDKApi"

    const-string v1, "sqSDKLogout success!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->destroy()V

    .line 341
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setFloatViewFunInfo(Landroid/content/Context;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V

    .line 342
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->val$context:Landroid/content/Context;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setWebFloatViewUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$4;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 344
    return-void
.end method
