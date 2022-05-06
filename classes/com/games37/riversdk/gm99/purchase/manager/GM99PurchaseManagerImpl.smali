.class public Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;
.super Lcom/games37/riversdk/core/purchase/manager/PurchaseManager;
.source "GM99PurchaseManagerImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GM99PurchaseManagerImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/games37/riversdk/core/purchase/manager/PurchaseManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V
    .registers 2
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->openPurchaseActivity(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V

    return-void
.end method

.method static synthetic access$100(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->setWebviewCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    return-void
.end method

.method static synthetic access$200(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 2
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->showUpgradeDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    return-void
.end method

.method static synthetic access$400(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    return-void
.end method

.method static synthetic access$500(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    return-void
.end method

.method static synthetic access$600(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->setWebviewCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    return-void
.end method

.method static synthetic access$700(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    return-void
.end method

.method public static getSDKOrderId(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 22
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p2, "skuDetails"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/lang/String;>;"
    const-string v1, "GM99PurchaseManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOrderId skuDetails:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;->getCurrencyCode()Ljava/lang/String;

    move-result-object v10

    .line 318
    .local v10, "localCurrency":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;->getPriceMicros()Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, "localMoney":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v16

    .line 323
    .local v16, "timestamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/core/model/UserInformation;->getUserId()Ljava/lang/String;

    move-result-object v17

    .line 325
    .local v17, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v1

    const-string v2, "SECRETKEY"

    .line 326
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, "secretKey":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v12

    .line 330
    .local v12, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v1

    const-string v2, "PRODUCTID"

    .line 331
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 333
    .local v9, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v1

    const-string v2, "GAMECODE"

    .line 334
    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, "gameCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 340
    .local v15, "sign":Ljava/lang/String;
    invoke-static {v15}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "encryptionSign":Ljava/lang/String;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v13, "purchaseBundle":Landroid/os/Bundle;
    const-string v1, "productId"

    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "serverId"

    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "roleId"

    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "roleName"

    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v1, "roleLevel"

    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "cpOrderId"

    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "remark"

    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v1, "loginAccount"

    invoke-virtual {v13, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "userId"

    move-object/from16 v0, v17

    invoke-virtual {v13, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "localMoney"

    invoke-virtual {v13, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "localCurrency"

    invoke-virtual {v13, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "sign"

    invoke-virtual {v13, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "timeStamp"

    move-object/from16 v0, v16

    invoke-virtual {v13, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "gameId"

    invoke-virtual {v13, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "gameCode"

    invoke-virtual {v13, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "serverId"

    invoke-virtual/range {p1 .. p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v4, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v4, v13}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 362
    .local v4, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    const-string v3, "https://mstore.gm99.com/google_play/submit"

    .line 364
    .local v3, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v6, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$5;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$5;-><init>(Lcom/games37/riversdk/core/callback/ResultCallback;)V

    move-object/from16 v2, p0

    .line 365
    invoke-virtual/range {v1 .. v6}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 390
    return-void
.end method

.method public static getThirdPaymentStatus(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    .prologue
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getServerId()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleId()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleName()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleLevel()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$2;

    invoke-direct {v6, p0}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$2;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    .line 167
    invoke-static/range {v0 .. v6}, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil;->doGetThirdPaymentStatus(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 193
    return-void
.end method

.method private static handleUserUpgrade(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 206
    new-instance v0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$3;-><init>(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    invoke-static {p0, v0}, Lcom/games37/riversdk/gm99/utils/BusinessCallUtil;->getUserBindStatus(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 238
    return-void
.end method

.method private static openPurchaseActivity(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    .prologue
    .line 293
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v2

    const-string v3, "GOOGLE_API_KEY"

    .line 294
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "googleApiKey":Ljava/lang/String;
    const-string v1, "com.games37.riversdk.gm99.purchase.view.GM99PurchaseView"

    .line 298
    .local v1, "iviewClassPath":Ljava/lang/String;
    invoke-static {p0, v0, v1, p1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->openGooglePlayPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V

    .line 299
    return-void
.end method

.method public static purchase(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 68
    const-string v4, "GM99PurchaseManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "purchase info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginStatus()Z

    move-result v4

    if-nez v4, :cond_46

    .line 71
    const-string v4, "GM99PurchaseManagerImpl"

    const-string v5, "sqSDKInAppPurchase error msg = not login!"

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "msg"

    const-string v5, "a1_toast_login_info"

    .line 75
    invoke-static {p0, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 74
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v4, 0x2

    invoke-virtual {p2, v4, v1}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 115
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_45
    return-void

    .line 81
    :cond_46
    invoke-static {p0, p1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->savePurchaseInfo(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V

    .line 84
    invoke-static {p0, p1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->getThirdPaymentStatus(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V

    .line 86
    invoke-static {}, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->getInstance()Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    move-result-object v3

    .line 89
    .local v3, "purchaseDao":Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/UserInformation;->getCurUserType()Lcom/games37/riversdk/core/login/model/UserType;

    move-result-object v4

    sget-object v5, Lcom/games37/riversdk/core/login/model/UserType;->ANYNOMOUS_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    if-ne v4, v5, :cond_a0

    .line 90
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/UserInformation;->isBind()Z

    move-result v4

    if-nez v4, :cond_a0

    .line 91
    const-string v4, "GM99PurchaseManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sqSDKInAppPurchase userType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 92
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/UserInformation;->getCurUserType()Lcom/games37/riversdk/core/login/model/UserType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isBind:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/UserInformation;->isBind()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setUpgradeBill(Landroid/content/Context;Z)V

    .line 95
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->handleUserUpgrade(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    goto :goto_45

    .line 100
    :cond_a0
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/games37/riversdk/core/model/SDKInformation;->getMetaDataBundle()Lcom/games37/riversdk/core/model/DataBundle;

    move-result-object v4

    const-string v5, "RiverSDK.PublishPlatform"

    .line 101
    invoke-virtual {v4, v5}, Lcom/games37/riversdk/core/model/DataBundle;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "publishPlatform":Ljava/lang/String;
    invoke-virtual {v3, p0}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getThridPaymentStatus(Landroid/content/Context;)Z

    move-result v0

    .line 106
    .local v0, "currentStatus":Z
    const-string v4, "googlePlay"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    if-eqz v0, :cond_d9

    .line 108
    :cond_bc
    const-string v4, "GM99PurchaseManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sqSDKInAppPurchase googlePlay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->showChooseRechargeModeDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    goto/16 :goto_45

    .line 114
    :cond_d9
    invoke-static {p0, p1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->openPurchaseActivity(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V

    goto/16 :goto_45
.end method

.method public static purchaseFinished(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "purchase"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .param p2, "requestEntity"    # Lcom/games37/riversdk/core/model/RequestEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            "Lcom/games37/riversdk/core/model/RequestEntity;",
            "Lcom/games37/riversdk/core/callback/ResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p3, "callback":Lcom/games37/riversdk/core/callback/ResultCallback;, "Lcom/games37/riversdk/core/callback/ResultCallback<Ljava/lang/String;>;"
    const-string v0, "GM99PurchaseManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purchaseFinished purchase:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v2, "https://mstore.gm99.com/google_play/callback"

    .line 407
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;

    invoke-direct {v5, p3, p1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$6;-><init>(Lcom/games37/riversdk/core/callback/ResultCallback;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    move-object v1, p0

    move-object v3, p2

    .line 408
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 433
    return-void
.end method

.method private static showChooseRechargeModeDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 127
    const-string v1, "GM99PurchaseManagerImpl"

    const-string v2, "showChooseRechargeModeDialog"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;

    new-instance v1, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;-><init>(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    invoke-direct {v0, p0, v1}, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;-><init>(Landroid/content/Context;Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;)V

    .line 155
    .local v0, "thirdPaymentDialog":Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;
    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->show()V

    .line 156
    return-void
.end method

.method private static showUpgradeDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 250
    const-string v6, "a1_sdk_cancel_text"

    .line 251
    invoke-static {p0, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 250
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "cancelText":Ljava/lang/String;
    const-string v6, "a1_sdk_confirm"

    .line 254
    invoke-static {p0, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 253
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "comfirmText":Ljava/lang/String;
    const-string v6, "a1_dialog_upgrade_account"

    .line 257
    invoke-static {p0, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 256
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "title":Ljava/lang/String;
    const-string v6, "a1_dialog_upgrade_info"

    .line 260
    invoke-static {p0, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 259
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "content":Ljava/lang/String;
    new-instance v4, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;

    invoke-direct {v4, v1, p1, p0}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;-><init>(Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;Landroid/app/Activity;)V

    .line 276
    .local v4, "listener":Lcom/games37/riversdk/core/callback/OnBtnClickListener;
    new-instance v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;

    invoke-direct {v0}, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;-><init>()V

    .line 277
    .local v0, "builder":Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;
    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->setCancelText(Ljava/lang/String;)Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;

    move-result-object v6

    .line 278
    invoke-virtual {v6, v2}, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->setComfirmText(Ljava/lang/String;)Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;

    move-result-object v6

    .line 279
    invoke-virtual {v6, v3}, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->setContent(Ljava/lang/String;)Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;

    move-result-object v6

    .line 280
    invoke-virtual {v6, v4}, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->setOnBtnClickListener(Lcom/games37/riversdk/core/callback/OnBtnClickListener;)Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;

    move-result-object v6

    .line 281
    invoke-virtual {v6, p0}, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->build(Landroid/content/Context;)Lcom/games37/riversdk/core/login/view/UpdateDialog;

    move-result-object v6

    .line 282
    invoke-virtual {v6}, Lcom/games37/riversdk/core/login/view/UpdateDialog;->show()V

    .line 283
    return-void
.end method
