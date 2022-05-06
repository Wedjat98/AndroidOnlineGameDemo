.class public Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;
.super Ljava/lang/Object;
.source "BillingApi.java"


# static fields
.field public static final PURCHASE_REQUEST_CODE:I = 0x760

.field public static final TAG:Ljava/lang/String; = "BillingApi"

.field private static volatile instance:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;


# instance fields
.field private iabSetupStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->iabSetupStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->iabSetupStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 6
    .param p0, "x0"    # Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    .param p4, "x4"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .param p5, "x5"    # Lcom/games37/riversdk/functions/callback/FunctionCallback;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->handleQueryResult(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    .param p3, "x3"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .param p4, "x4"    # Lcom/games37/riversdk/functions/callback/FunctionCallback;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->handlePurchaseResult(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V

    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->instance:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    if-nez v0, :cond_13

    .line 51
    const-class v1, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    monitor-enter v1

    .line 52
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->instance:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    if-nez v0, :cond_12

    .line 53
    new-instance v0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    invoke-direct {v0}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;-><init>()V

    sput-object v0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->instance:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    .line 55
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 57
    :cond_13
    sget-object v0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->instance:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    return-object v0

    .line 55
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private handlePurchaseResult(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    .param p3, "info"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            "Lcom/games37/riversdk/functions/callback/FunctionCallback",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/games37/riversdk/functions/callback/FunctionCallback;, "Lcom/games37/riversdk/functions/callback/FunctionCallback<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    const/16 v3, 0x2715

    .line 263
    if-nez p2, :cond_12

    .line 264
    const-string v1, "r1_gp_billing_exception"

    .line 265
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-interface {p4, v3, v1}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    .line 285
    :goto_11
    return-void

    .line 271
    :cond_12
    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 272
    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    .line 273
    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v1

    const/16 v2, -0x3ed

    if-ne v1, v2, :cond_31

    .line 275
    :cond_27
    const/16 v1, 0x2710

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_11

    .line 278
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "msg":Ljava/lang/String;
    invoke-interface {p4, v3, v0}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_11

    .line 283
    .end local v0    # "msg":Ljava/lang/String;
    :cond_5a
    invoke-interface {p4, p3}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_11
.end method

.method private handleQueryResult(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "product_id"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    .param p4, "inv"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;",
            "Lcom/games37/riversdk/functions/callback/FunctionCallback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p5, "queryCallback":Lcom/games37/riversdk/functions/callback/FunctionCallback;, "Lcom/games37/riversdk/functions/callback/FunctionCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v6, 0x2714

    .line 157
    if-nez p3, :cond_19

    .line 158
    const-string v3, "BillingApi"

    const-string v4, "onQueryInventoryFinished result is null!"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v3, "r1_gp_query_exception"

    .line 160
    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-interface {p5, v6, v3}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    .line 195
    :goto_18
    return-void

    .line 166
    :cond_19
    invoke-virtual {p3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->isFailure()Z

    move-result v3

    if-nez v3, :cond_21

    if-nez p4, :cond_74

    .line 167
    :cond_21
    const-string v3, "BillingApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryInventoryFinished result response = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    invoke-virtual {p3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "msg":Ljava/lang/String;
    invoke-interface {p5, v6, v0}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_18

    .line 175
    .end local v0    # "msg":Ljava/lang/String;
    :cond_74
    invoke-virtual {p4, p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;

    move-result-object v3

    if-nez v3, :cond_88

    .line 176
    const-string v3, "r1_gp_product_id_not_exists"

    invoke-static {p1, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .restart local v0    # "msg":Ljava/lang/String;
    invoke-interface {p5, v6, v0}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_18

    .line 181
    .end local v0    # "msg":Ljava/lang/String;
    :cond_88
    invoke-virtual {p4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v1

    .line 183
    .local v1, "purchasedList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v2, "queryResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_c9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c9

    .line 187
    const-string v3, "BillingApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryInventoryFinished purchasedList size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v3, "hasConsume"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v3, "purchase_list"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :goto_c4
    invoke-interface {p5, v2}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 191
    :cond_c9
    const-string v3, "hasConsume"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v3, "skuDetail"

    invoke-virtual {p4, p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4
.end method


# virtual methods
.method public consumeAsync(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchase"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            "Lcom/games37/riversdk/functions/callback/FunctionCallback",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p3, "consumeCallback":Lcom/games37/riversdk/functions/callback/FunctionCallback;, "Lcom/games37/riversdk/functions/callback/FunctionCallback<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    if-nez v1, :cond_5

    .line 416
    :goto_4
    return-void

    .line 376
    :cond_5
    if-eqz p2, :cond_9

    if-nez p3, :cond_11

    .line 377
    :cond_9
    const-string v1, "BillingApi"

    const-string v2, "consumeAsync purchase or callback is null!"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 382
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    new-instance v2, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;

    invoke-direct {v2, p0, p3, p1}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Lcom/games37/riversdk/functions/callback/FunctionCallback;Landroid/app/Activity;)V

    invoke-virtual {v1, p2, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->consumeAsync(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;)V
    :try_end_1b
    .catch Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_4

    .line 411
    :catch_1c
    move-exception v0

    .line 412
    .local v0, "e":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
    const-string v1, "BillingApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumeAsync IabAsyncInProgressException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/16 v1, 0x2716

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_4
.end method

.method public consumeAsync(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            ">;",
            "Lcom/games37/riversdk/functions/callback/FunctionCallback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    .local p3, "consumeCallback":Lcom/games37/riversdk/functions/callback/FunctionCallback;, "Lcom/games37/riversdk/functions/callback/FunctionCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    if-nez v1, :cond_5

    .line 358
    :goto_4
    return-void

    .line 302
    :cond_5
    const-string v2, "BillingApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumeAsync purchaseList size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    const-string v1, "null"

    :goto_1e
    invoke-static {v2, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    if-eqz p2, :cond_2b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2b

    if-nez p3, :cond_4b

    .line 307
    :cond_2b
    const-string v1, "BillingApi"

    const-string v2, "consumeAsync purchaseList or callback is null!"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 302
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 312
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    new-instance v2, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$4;

    invoke-direct {v2, p0, p3, p1}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$4;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Lcom/games37/riversdk/functions/callback/FunctionCallback;Landroid/app/Activity;)V

    invoke-virtual {v1, p2, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->consumeAsync(Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;)V
    :try_end_55
    .catch Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException; {:try_start_4b .. :try_end_55} :catch_56

    goto :goto_4

    .line 353
    :catch_56
    move-exception v0

    .line 354
    .local v0, "e":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
    const-string v1, "BillingApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumeAsync IabAsyncInProgressException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/16 v1, 0x2716

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_4
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->iabSetupStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 429
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->disposeWhenFinished()V

    .line 431
    :cond_11
    return-void
.end method

.method public getSkuDetail(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/games37/riversdk/functions/callback/FunctionCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p2, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "callback":Lcom/games37/riversdk/functions/callback/FunctionCallback;, "Lcom/games37/riversdk/functions/callback/FunctionCallback<Lorg/json/JSONObject;>;"
    :try_start_0
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;

    invoke-direct {v4, p0, p1, p3, p2}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Landroid/app/Activity;Lcom/games37/riversdk/functions/callback/FunctionCallback;Ljava/util/List;)V

    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_c
    .catch Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_c} :catch_d

    .line 509
    :goto_c
    return-void

    .line 506
    :catch_d
    move-exception v0

    .line 507
    .local v0, "e":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
    const/16 v1, 0x2714

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_c
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "google_api_key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/callback/FunctionCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, "initCallback":Lcom/games37/riversdk/functions/callback/FunctionCallback;, "Lcom/games37/riversdk/functions/callback/FunctionCallback<Ljava/lang/Integer;>;"
    const-string v0, "BillingApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init google_api_key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    if-nez p3, :cond_28

    .line 73
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "google api key or callback is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->iabSetupStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    invoke-direct {v0, p1, p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    .line 78
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->enableDebugLogging(Z)V

    .line 79
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    new-instance v1, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Lcom/games37/riversdk/functions/callback/FunctionCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->startSetup(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;)V

    .line 101
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchaseSku"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/callback/FunctionCallback",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p4, "purchaseCallback":Lcom/games37/riversdk/functions/callback/FunctionCallback;, "Lcom/games37/riversdk/functions/callback/FunctionCallback<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    if-nez v0, :cond_5

    .line 248
    :goto_4
    return-void

    .line 214
    :cond_5
    const-string v0, "BillingApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchPurchaseFlow purchaseSku = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    if-nez p4, :cond_37

    .line 219
    :cond_2f
    const-string v0, "BillingApi"

    const-string v1, "launchPurchaseFlow purchaseSku or callback is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 224
    :cond_37
    invoke-static {p3}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 225
    const-string v0, "BillingApi"

    const-string v1, "launchPurchaseFlow orderId is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 230
    :cond_45
    if-nez p4, :cond_4f

    .line 231
    const-string v0, "BillingApi"

    const-string v1, "launchPurchaseFlow callback is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 237
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/16 v3, 0x760

    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$3;

    invoke-direct {v4, p0, p1, p4}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$3;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Landroid/app/Activity;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_5e
    .catch Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException; {:try_start_4f .. :try_end_5e} :catch_5f

    goto :goto_4

    .line 244
    :catch_5f
    move-exception v6

    .line 245
    .local v6, "e":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
    const-string v0, "BillingApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchPurchaseFlow IabAsyncInProgressException e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/16 v0, 0x2715

    invoke-virtual {v6}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_4
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    if-eqz v0, :cond_9

    .line 423
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    invoke-virtual {v0, p2, p3, p4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 425
    :cond_9
    return-void
.end method

.method public queryInventory(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "product_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/callback/FunctionCallback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p3, "queryCallback":Lcom/games37/riversdk/functions/callback/FunctionCallback;, "Lcom/games37/riversdk/functions/callback/FunctionCallback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    if-nez v2, :cond_5

    .line 139
    :goto_4
    return-void

    .line 118
    :cond_5
    const-string v2, "BillingApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryInventory product_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    if-nez p3, :cond_2d

    .line 122
    :cond_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "product id or callback is null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :try_start_35
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->mIabHelper:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_41
    .catch Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException; {:try_start_35 .. :try_end_41} :catch_42

    goto :goto_4

    .line 135
    :catch_42
    move-exception v0

    .line 136
    .local v0, "e":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
    const-string v2, "BillingApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryInventory IabAsyncInProgressException e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v2, 0x2714

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_4
.end method

.method public requestGoogleSkuDetail(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "googleApiKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/games37/riversdk/functions/callback/FunctionCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p3, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/games37/riversdk/functions/callback/FunctionCallback;, "Lcom/games37/riversdk/functions/callback/FunctionCallback<Lorg/json/JSONObject;>;"
    new-instance v0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Lcom/games37/riversdk/functions/callback/FunctionCallback;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V

    .line 455
    return-void
.end method
