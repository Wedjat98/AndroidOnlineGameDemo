.class Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;
.super Ljava/lang/Object;
.source "PurchasePresenter.java"

# interfaces
.implements Lcom/games37/riversdk/functions/callback/FunctionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->queryInventory(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/functions/callback/FunctionCallback",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

.field final synthetic val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iput-object p2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    iput-object p4, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retryTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, v1, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mQueryRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "reportMsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2711

    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->report(Landroid/content/Context;ILjava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V

    .line 217
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    iget-object v5, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->handleQueryFailure(Landroid/app/Activity;ILjava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    .line 218
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 210
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "queryResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->handleQuerySuccess(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Ljava/util/Map;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    .line 224
    return-void
.end method
