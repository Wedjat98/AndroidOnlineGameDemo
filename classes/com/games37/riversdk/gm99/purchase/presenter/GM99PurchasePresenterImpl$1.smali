.class Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;
.super Ljava/lang/Object;
.source "GM99PurchasePresenterImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;->requestSDKServerGetOrderId(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;

.field final synthetic val$callback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;->this$0:Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;->val$callback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;->val$callback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    if-eqz v0, :cond_a

    .line 76
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;->val$callback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onError(ILjava/lang/String;Ljava/util/Map;)V

    .line 78
    :cond_a
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;->val$callback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;->val$callback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V

    .line 70
    :cond_9
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 53
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;->onSuccess(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "orderId"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;->val$callback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    if-eqz v1, :cond_13

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "orderId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;->val$callback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-interface {v1, v0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onSuccess(Ljava/util/Map;)V

    .line 62
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_13
    return-void
.end method
