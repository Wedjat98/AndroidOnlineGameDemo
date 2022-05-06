.class Lcom/games37/riversdk/gm99/floatview/FloatViewManager$3;
.super Ljava/lang/Object;
.source "FloatViewManager.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getFunctionList(Landroid/content/Context;)V
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
        "Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$3;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "FloatViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFunctionList onError msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "FloatViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFunctionList onFailure statusCode = "

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

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public onSuccess(ILcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "functionInfo"    # Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$3;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    # getter for: Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->access$300(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    move-result-object v0

    if-nez v0, :cond_12

    .line 211
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$3;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    # setter for: Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    invoke-static {v0, p2}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->access$302(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 212
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$3;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->show()V

    .line 214
    :cond_12
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$3;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    # setter for: Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;
    invoke-static {v0, p2}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->access$302(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    .line 217
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 207
    check-cast p2, Lcom/games37/riversdk/gm99/floatview/model/FunctionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$3;->onSuccess(ILcom/games37/riversdk/gm99/floatview/model/FunctionInfo;)V

    return-void
.end method
