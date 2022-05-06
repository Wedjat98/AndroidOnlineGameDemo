.class final Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$5;
.super Ljava/lang/Object;
.source "GM99PurchaseManagerImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->getSDKOrderId(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;Lcom/games37/riversdk/core/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$5;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$5;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    .line 388
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 366
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$5;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x1

    .line 369
    if-eqz p1, :cond_22

    .line 371
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 373
    .local v0, "code":I
    const-string v3, "msg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "msg":Ljava/lang/String;
    if-ne v0, v5, :cond_23

    .line 376
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 377
    .local v1, "data":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$5;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const-string v4, "orderId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 383
    .end local v0    # "code":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_22
    :goto_22
    return-void

    .line 380
    .restart local v0    # "code":I
    .restart local v2    # "msg":Ljava/lang/String;
    :cond_23
    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$5;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_22
.end method
