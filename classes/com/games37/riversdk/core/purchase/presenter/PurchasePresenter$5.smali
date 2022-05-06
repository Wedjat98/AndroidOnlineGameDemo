.class Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;
.super Ljava/lang/Object;
.source "PurchasePresenter.java"

# interfaces
.implements Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->sendGoods(Landroid/app/Activity;ZLcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$isLast:Z

.field final synthetic val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

.field final synthetic val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Landroid/app/Activity;ZLcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V
    .registers 6
    .param p1, "this$0"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iput-object p2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$isLast:Z

    iput-object p4, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    iput-object p5, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, p3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->handleSendGoodsFailure(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    .line 497
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    if-eqz v0, :cond_10

    .line 498
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onError(ILjava/lang/String;Ljava/util/Map;)V

    .line 500
    :cond_10
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2714

    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->report(Landroid/content/Context;ILjava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    .line 487
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    if-eqz v0, :cond_18

    .line 488
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V

    .line 490
    :cond_18
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
    .line 480
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$isLast:Z

    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->handleSendGoodsSuccess(Landroid/app/Activity;ZLjava/util/Map;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    .line 481
    return-void
.end method
