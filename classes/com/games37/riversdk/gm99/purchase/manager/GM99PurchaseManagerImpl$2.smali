.class final Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$2;
.super Ljava/lang/Object;
.source "GM99PurchaseManagerImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->getThirdPaymentStatus(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V
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


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {}, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->getInstance()Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$2;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->setThridPaymentStatus(Landroid/content/Context;Z)V

    .line 191
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {}, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->getInstance()Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$2;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->setThridPaymentStatus(Landroid/content/Context;Z)V

    .line 185
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 173
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$2;->onSuccess(ILorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 178
    invoke-static {}, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->getInstance()Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$2;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->setThridPaymentStatus(Landroid/content/Context;Z)V

    .line 179
    return-void
.end method
