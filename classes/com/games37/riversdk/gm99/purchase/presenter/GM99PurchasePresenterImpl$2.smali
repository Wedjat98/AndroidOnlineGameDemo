.class Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;
.super Ljava/lang/Object;
.source "GM99PurchasePresenterImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;->requestSDKServerSendGoods(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
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

.field final synthetic val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

.field final synthetic val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

.field final synthetic val$requestEntity:Lcom/games37/riversdk/core/model/RequestEntity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->this$0:Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    iput-object p4, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$requestEntity:Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    if-eqz v0, :cond_13

    .line 138
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->this$0:Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$requestEntity:Lcom/games37/riversdk/core/model/RequestEntity;

    .line 139
    # invokes: Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;->getCallbackParams(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;)Ljava/util/Map;
    invoke-static {v1, v2, v3}, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;->access$000(Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;)Ljava/util/Map;

    move-result-object v1

    .line 138
    invoke-interface {v0, p1, p2, v1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onError(ILjava/lang/String;Ljava/util/Map;)V

    .line 141
    :cond_13
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V

    .line 132
    :cond_9
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 116
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->onSuccess(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    if-eqz v0, :cond_13

    .line 122
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$purchaseCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->this$0:Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;->val$requestEntity:Lcom/games37/riversdk/core/model/RequestEntity;

    # invokes: Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;->getCallbackParams(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;)Ljava/util/Map;
    invoke-static {v1, v2, v3}, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;->access$000(Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onSuccess(Ljava/util/Map;)V

    .line 124
    :cond_13
    return-void
.end method
