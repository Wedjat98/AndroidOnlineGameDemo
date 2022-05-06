.class final Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;
.super Ljava/lang/Object;
.source "GM99PurchaseManagerImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->purchaseFinished(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
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

.field final synthetic val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/callback/ResultCallback;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V
    .registers 3

    .prologue
    .line 408
    iput-object p1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;->val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    if-eqz v0, :cond_b

    .line 429
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onError(ILjava/lang/String;)V

    .line 431
    :cond_b
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 408
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x1

    .line 411
    if-eqz p1, :cond_1c

    .line 413
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 415
    .local v0, "code":I
    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "msg":Ljava/lang/String;
    if-ne v0, v4, :cond_1d

    .line 418
    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;->val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    invoke-virtual {v3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 423
    .end local v0    # "code":I
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-void

    .line 420
    .restart local v0    # "code":I
    .restart local v1    # "msg":Ljava/lang/String;
    :cond_1d
    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_1c
.end method
