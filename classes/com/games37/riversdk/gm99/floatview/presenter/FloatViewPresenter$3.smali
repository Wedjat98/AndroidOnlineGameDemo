.class Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;
.super Ljava/lang/Object;
.source "FloatViewPresenter.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->getFunsList(Landroid/content/Context;Lcom/games37/riversdk/core/callback/ResultCallback;)V
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;Landroid/content/Context;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->this$0:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 380
    const-string v0, "FloatViewPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFunsList onError code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    .line 382
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v0, "FloatViewPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFunsList onFailure statusCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    .line 376
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 348
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->onSuccess(ILorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 351
    const-string v4, "FloatViewPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFunsList onSuccess statusCode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " jsonObject = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5c

    const-string v3, "null"

    :goto_23
    invoke-static {v4, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 356
    .local v2, "gson":Lcom/google/gson/Gson;
    :try_start_2b
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 357
    .local v1, "functionInfo":Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    if-eqz v1, :cond_5a

    .line 358
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->this$0:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    # invokes: Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->handleFunctionInfo(Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V
    invoke-static {v3, v1}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->access$000(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V

    .line 360
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v3

    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;->getSdk_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setWebFloatViewUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->getInstance()Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v3

    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setFloatViewFunInfo(Landroid/content/Context;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V

    .line 363
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5a} :catch_61
    .catchall {:try_start_2b .. :try_end_5a} :catchall_6e

    .line 368
    :cond_5a
    const/4 v2, 0x0

    .line 370
    .end local v1    # "functionInfo":Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    :goto_5b
    return-void

    .line 352
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :cond_5c
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    .line 365
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    :catch_61
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    :try_start_62
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6e

    .line 368
    const/4 v2, 0x0

    .line 369
    goto :goto_5b

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_6e
    move-exception v3

    const/4 v2, 0x0

    throw v3
.end method
