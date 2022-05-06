.class public Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;
.super Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;
.source "GM99PurchasePresenterImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GM99PurchasePresenterImpl"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;-><init>()V

    .line 40
    invoke-static {}, Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;->getInstance()Lcom/games37/riversdk/gm99/purchase/dao/GM99PurchaseDao;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;)Ljava/util/Map;
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;
    .param p1, "x1"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .param p2, "x2"    # Lcom/games37/riversdk/core/model/RequestEntity;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;->getCallbackParams(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getCallbackParams(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;)Ljava/util/Map;
    .registers 6
    .param p1, "purchase"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .param p2, "requestEntity"    # Lcom/games37/riversdk/core/model/RequestEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            "Lcom/games37/riversdk/core/model/RequestEntity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    const-string v1, "https://mstore.gm99.com/google_play/callback"

    .line 148
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "RESUPPLY_URL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "PURCHASE_INFO"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v2, "REQUESTENTITY"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object v0
.end method


# virtual methods
.method public requestSDKServerGetOrderId(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p3, "skuDetails"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    .param p4, "callback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 48
    if-eqz p2, :cond_4

    if-nez p3, :cond_c

    .line 49
    :cond_4
    const-string v0, "GM99PurchasePresenterImpl"

    const-string v1, "purchaseInfo or skuDetails is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_b
    return-void

    .line 52
    :cond_c
    new-instance v0, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;

    invoke-direct {v0, p0, p4}, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$1;-><init>(Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    invoke-static {p1, p2, p3, v0}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->getSDKOrderId(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    goto :goto_b
.end method

.method public requestSDKServerSendGoods(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchase"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .param p3, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 88
    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "timestamp":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v8

    const-string v9, "SECRETKEY"

    .line 91
    invoke-virtual {v8, v9}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "secrectKey":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v8

    const-string v9, "PRODUCTID"

    .line 94
    invoke-virtual {v8, v9}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v8

    const-string v9, "GAMECODE"

    .line 97
    invoke-virtual {v8, v9}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "gameCode":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 100
    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "sign":Ljava/lang/String;
    invoke-static {v6}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "encrytionSign":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "gameId"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v8, "productId"

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v8, "timeStamp"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v8, "sign"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v8, "purchaseData"

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v8, "dataSignature"

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v8, "orderId"

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v8, "gameCode"

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v8, "retry"

    const-string v9, "0"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v4, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v4, v0}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 115
    .local v4, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    new-instance v8, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;

    invoke-direct {v8, p0, p3, p2, v4}, Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl$2;-><init>(Lcom/games37/riversdk/gm99/purchase/presenter/GM99PurchasePresenterImpl;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;)V

    invoke-static {p1, p2, v4, v8}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->purchaseFinished(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/model/RequestEntity;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 143
    return-void
.end method
