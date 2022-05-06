.class final Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;
.super Ljava/lang/Object;
.source "GM99PurchaseManagerImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->handleUserUpgrade(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/core/callback/ResultCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

.field final synthetic val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4

    .prologue
    .line 206
    iput-object p1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v0, "GM99PurchaseManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sqSDKInAppPurchase request user bind info fail! net error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {p1, p2, v0}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->access$500(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 236
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string v0, "GM99PurchaseManagerImpl"

    const-string v1, "sqSDKInAppPurchase bind failed!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const v0, 0x15f91

    if-ne p1, v0, :cond_1c

    .line 223
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setBind(Z)V

    .line 225
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->showUpgradeDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v0, v1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->access$300(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 230
    :goto_1b
    return-void

    .line 228
    :cond_1c
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {p1, p2, v0}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->access$400(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    goto :goto_1b
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 206
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->onSuccess(ILorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 209
    const-string v0, "GM99PurchaseManagerImpl"

    const-string v1, "sqSDKInAppPurchase bind success!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->purchase(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 213
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setBind(Z)V

    .line 214
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v0

    const-string v1, "BINDING_USER"

    .line 215
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setBinging_user(Ljava/lang/String;)V

    .line 216
    return-void
.end method
