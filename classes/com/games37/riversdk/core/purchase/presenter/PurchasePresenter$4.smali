.class Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;
.super Ljava/lang/Object;
.source "PurchasePresenter.java"

# interfaces
.implements Lcom/games37/riversdk/functions/callback/FunctionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->launchGPPurchase(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Ljava/lang/String;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
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
        "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
        ">;"
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
    .line 413
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iput-object p2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    iput-object p4, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2714

    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->report(Landroid/content/Context;ILjava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V

    .line 419
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    if-eqz v0, :cond_18

    .line 420
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V

    .line 422
    :cond_18
    return-void
.end method

.method public onSuccess(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V
    .registers 6
    .param p1, "purchase"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->sendGoods(Landroid/app/Activity;ZLcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    .line 429
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->comsumeAsyn(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    .line 430
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 413
    check-cast p1, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;->onSuccess(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    return-void
.end method
