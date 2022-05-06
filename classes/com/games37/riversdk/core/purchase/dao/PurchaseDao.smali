.class public Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;
.super Ljava/lang/Object;
.source "PurchaseDao.java"

# interfaces
.implements Lcom/games37/riversdk/core/model/SharePrefUtil;


# static fields
.field protected static RIVERSDK_PURCHASE_SP_STORAGE:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "PurchaseDao"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "RIVERSDK_PURCHASE_SP_STORAGE"

    sput-object v0, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->RIVERSDK_PURCHASE_SP_STORAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBool(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 133
    sget-object v0, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->RIVERSDK_PURCHASE_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCpOrderId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string v0, "PREF_CP_ORDERID"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstPurchase(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const-string v0, "PREF_FIRST_PURCHASE"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 151
    sget-object v0, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->RIVERSDK_PURCHASE_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getProductId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const-string v0, "PREF_PRODUCTID"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemark(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v0, "PREF_REMARK"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoleId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-string v0, "PREF_ROLE_ID"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoleLevel(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const-string v0, "PREF_ROLE_LEVEL"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoleName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "PREF_ROLE_NAME"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v0, "PREF_SERVER_CODE"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-object v0, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->RIVERSDK_PURCHASE_SP_STORAGE:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, v0, p2, v1}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThridPaymentStatus(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const-string v0, "PREF_THRIDPAYMENT_STATUS"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUpgradeBill(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string v0, "PREF_UPGRADE_BILL"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBool(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 127
    sget-object v0, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->RIVERSDK_PURCHASE_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public setBundle(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 163
    sget-object v0, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->RIVERSDK_PURCHASE_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method public setCpOrderId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cpOrderId"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string v0, "PREF_CP_ORDERID"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public setFirstPurchase(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # Z

    .prologue
    .line 110
    const-string v0, "PREF_FIRST_PURCHASE"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 111
    return-void
.end method

.method public setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 157
    sget-object v0, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->RIVERSDK_PURCHASE_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method public setProductId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "PREF_PRODUCTID"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setProductInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "productInfo"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setRemark(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remark"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v0, "PREF_REMARK"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setRoleId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roleId"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "PREF_ROLE_ID"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setRoleLevel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roleLevle"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "PREF_ROLE_LEVEL"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setRoleName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roleName"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "PREF_ROLE_NAME"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setServerId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverId"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "PREF_SERVER_CODE"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 139
    sget-object v0, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->RIVERSDK_PURCHASE_SP_STORAGE:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setThridPaymentStatus(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # Z

    .prologue
    .line 94
    const-string v0, "PREF_THRIDPAYMENT_STATUS"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method public setUpgradeBill(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # Z

    .prologue
    .line 102
    const-string v0, "PREF_UPGRADE_BILL"

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method
