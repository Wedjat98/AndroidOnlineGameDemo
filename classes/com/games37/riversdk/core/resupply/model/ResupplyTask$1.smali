.class Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;
.super Ljava/lang/Object;
.source "ResupplyTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->runTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$000(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 154
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$000(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    :cond_12
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mSupplyTimes:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$100(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 157
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mSupplyTimes:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$100(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 159
    :cond_23
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$200(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 160
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # getter for: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->mPurchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$200(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;->setRetry()V

    .line 162
    :cond_34
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/model/ResupplyTask$1;->this$0:Lcom/games37/riversdk/core/resupply/model/ResupplyTask;

    # invokes: Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->doRequest()V
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/model/ResupplyTask;->access$300(Lcom/games37/riversdk/core/resupply/model/ResupplyTask;)V

    .line 163
    return-void
.end method
