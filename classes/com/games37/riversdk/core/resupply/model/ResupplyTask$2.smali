.class Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;
.super Ljava/lang/Object;
.source "ResupplyTask.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->doRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/core/callback/NetCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$400(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 200
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$400(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    :cond_12
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$000(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 203
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$000(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 205
    :cond_23
    const-string v0, "ResupplyTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRequest callbackError error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # invokes: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->afterExecute()V
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$500(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V

    .line 208
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 180
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$400(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 185
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$400(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    :cond_12
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$000(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 188
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$000(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 190
    :cond_24
    const-string v1, "ResupplyTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRequest callbackSuccess result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    const-string v0, ""

    :goto_3d
    invoke-static {v1, v0}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$2;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # invokes: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->afterExecute()V
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$500(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V

    .line 194
    return-void

    .line 191
    :cond_46
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d
.end method
