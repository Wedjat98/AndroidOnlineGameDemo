.class public Lcom/games37/riversdk/core/purchase/manager/PurchaseManager;
.super Ljava/lang/Object;
.source "PurchaseManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PurchaseManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 5
    .param p0, "statusCode"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 110
    if-eqz p2, :cond_15

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 113
    const-string v1, "msg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_12
    invoke-virtual {p2, p0, v0}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 117
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15
    return-void
.end method

.method public static openGooglePlayPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "googleApiKey"    # Ljava/lang/String;
    .param p2, "viewClassPath"    # Ljava/lang/String;
    .param p3, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "productId"

    invoke-virtual {p3}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "serverId"

    invoke-virtual {p3}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "roleId"

    invoke-virtual {p3}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "roleName"

    invoke-virtual {p3}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "roleLevel"

    invoke-virtual {p3}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleLevel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "cpOrderId"

    invoke-virtual {p3}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "remark"

    invoke-virtual {p3}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/games37/riversdk/core/purchase/activity/GooglePlayV3Activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "GOOGLE_API_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "IVIEW_CLASS_PATH"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "PURCHASEINFO"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_63
    return-void
.end method

.method public static savePurchaseInfo(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    .prologue
    .line 80
    new-instance v1, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    invoke-direct {v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;-><init>()V

    .line 82
    .local v1, "purchaseDao":Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PREF_PRODUCTID"

    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "PREF_SERVER_CODE"

    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "PREF_ROLE_ID"

    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "PREF_ROLE_NAME"

    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "PREF_ROLE_LEVEL"

    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleLevel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "PREF_CP_ORDERID"

    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "PREF_REMARK"

    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setBundle(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method protected static setWebviewCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 6
    .param p0, "statusCode"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 94
    new-instance v0, Lcom/games37/riversdk/core/purchase/manager/PurchaseManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/games37/riversdk/core/purchase/manager/PurchaseManager$1;-><init>(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 105
    .local v0, "showViewCallback":Lcom/games37/riversdk/core/callback/ShowViewCallback;
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v1

    sget-object v2, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->WEBVIEW:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 106
    invoke-virtual {v1, v2, v0}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->setCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;Lcom/games37/riversdk/core/callback/BaseCallback;)V

    .line 107
    return-void
.end method
