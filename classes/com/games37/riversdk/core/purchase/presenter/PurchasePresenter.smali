.class public abstract Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;
.super Ljava/lang/Object;
.source "PurchasePresenter.java"

# interfaces
.implements Lcom/games37/riversdk/core/presenter/IActivityPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;
    }
.end annotation


# static fields
.field public static final CONSUME_FAIL:I = 0x2715

.field public static final CONSUME_MULTI_FAIL:I = 0x2717

.field public static final GET_ORDERID_FAIL:I = 0x2713

.field public static final GOOGLE_PLAY:Ljava/lang/String; = "googleplay"

.field public static final GOOGLE_PLAY_PACKAGENAME:Ljava/lang/String; = "com.android.vending"

.field public static final GOOGLE_SERVICE_INIT_FAIL:I = 0x2710

.field public static final PURCHASE_FAIL:I = 0x2714

.field public static final PURCHASE_INFO:Ljava/lang/String; = "PURCHASE_INFO"

.field public static final QUERY_PRODUCT_INFO_FAIL:I = 0x2711

.field public static final REQUESTENTITY:Ljava/lang/String; = "REQUESTENTITY"

.field public static final RESUPPLY_URL:Ljava/lang/String; = "RESUPPLY_URL"

.field public static final SEND_GOOD_FAIL:I = 0x2716

.field public static final TAG:Ljava/lang/String; = "PurchasePresenter"


# instance fields
.field private isCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

.field protected mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

.field protected mQueryRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    .line 106
    iput-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mQueryRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    new-instance v0, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    invoke-direct {v0}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    .line 120
    return-void
.end method

.method private checkPermission(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 706
    :try_start_0
    const-string v1, "com.android.vending"

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/permissions/floatwindow/FloatWindowPermissionsUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 709
    :goto_6
    return v1

    .line 707
    :catch_7
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PurchasePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPermission error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public static getErrorCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "soap"    # Ljava/lang/String;

    .prologue
    .line 675
    const-string v2, "\\[(.*?)\\:]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 676
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 677
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 678
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 680
    :goto_15
    return-object v2

    :cond_16
    const-string v2, ""

    goto :goto_15
.end method

.method private handleMulitPurchasesSendGoods(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            ">;",
            "Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 651
    .local p2, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    const-string v2, "PurchasePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMulitPurchasesSendGoods purchaseList size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_2c

    const-string v1, "null"

    .line 652
    :goto_11
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-static {v2, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    if-eqz p2, :cond_24

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_35

    .line 654
    :cond_24
    const-string v1, "PurchasePresenter"

    const-string v2, "handleMulitPurchasesSendGoods purchaseList is empty!"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_2b
    return-void

    .line 652
    :cond_2c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_11

    .line 658
    :cond_35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 659
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_51

    .line 660
    const/4 v2, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    invoke-virtual {p0, p1, v2, v1, p3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->sendGoods(Landroid/app/Activity;ZLcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    .line 658
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 662
    :cond_51
    const/4 v2, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    invoke-virtual {p0, p1, v2, v1, p3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->sendGoods(Landroid/app/Activity;ZLcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    goto :goto_4e
.end method


# virtual methods
.method public applyPermission(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 692
    const/4 v0, 0x1

    .line 694
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public declared-synchronized comsumeAsyn(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p3, "purchase"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .param p4, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 569
    monitor-enter p0

    if-nez p3, :cond_c

    .line 570
    :try_start_3
    const-string v0, "PurchasePresenter"

    const-string v1, "comsumeAsyn the purchase is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_19

    .line 592
    :goto_a
    monitor-exit p0

    return-void

    .line 573
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->getInstance()Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;-><init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->consumeAsync(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_19

    goto :goto_a

    .line 569
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized comsumeMultiAsyn(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            ">;",
            "Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 605
    .local p2, "comsumeIds":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    monitor-enter p0

    if-eqz p2, :cond_9

    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 606
    :cond_9
    const-string v0, "PurchasePresenter"

    const-string v1, "comsumeMultiAsyn the list is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1f

    .line 639
    :goto_10
    monitor-exit p0

    return-void

    .line 609
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->getInstance()Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$7;

    invoke-direct {v1, p0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$7;-><init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->consumeAsync(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1f

    goto :goto_10

    .line 605
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doResupply(Landroid/app/Activity;Ljava/util/Map;Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "action"    # Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "purchaseInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 803
    monitor-enter p0

    :try_start_2
    const-string v6, "RESUPPLY_URL"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_52

    const-string v5, ""

    .line 805
    .local v5, "url":Ljava/lang/String;
    :goto_c
    const-string v6, "PURCHASE_INFO"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5d

    move-object v2, v3

    .line 807
    .local v2, "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    :goto_15
    const-string v6, "REQUESTENTITY"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_67

    .line 809
    .local v3, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    :goto_1d
    invoke-static {v5}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    if-eqz v2, :cond_50

    if-eqz v3, :cond_50

    .line 813
    invoke-virtual {v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "orderId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/games37/riversdk/common/encrypt/MD5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "fileName":Ljava/lang/String;
    new-instance v4, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    invoke-direct {v4, v5, v0, v3}, Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 819
    .local v4, "resupplyPurchaseInfo":Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    invoke-static {}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->getInstance()Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    move-result-object v6

    invoke-virtual {v6, p1, v4, p3}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showPurchaseResupplyDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;)V
    :try_end_50
    .catchall {:try_start_2 .. :try_end_50} :catchall_71

    .line 821
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "orderId":Ljava/lang/String;
    .end local v4    # "resupplyPurchaseInfo":Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;
    :cond_50
    monitor-exit p0

    return-void

    .line 803
    .end local v2    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .end local v3    # "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    .end local v5    # "url":Ljava/lang/String;
    :cond_52
    :try_start_52
    const-string v6, "RESUPPLY_URL"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 805
    .restart local v5    # "url":Ljava/lang/String;
    :cond_5d
    const-string v6, "PURCHASE_INFO"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    move-object v2, v6

    goto :goto_15

    .line 807
    .restart local v2    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    :cond_67
    const-string v6, "REQUESTENTITY"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/games37/riversdk/core/model/RequestEntity;
    :try_end_6f
    .catchall {:try_start_52 .. :try_end_6f} :catchall_71

    move-object v3, v6

    goto :goto_1d

    .line 803
    .end local v2    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .end local v5    # "url":Ljava/lang/String;
    :catchall_71
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public getProductInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 739
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 740
    const/4 v3, 0x0

    .line 741
    .local v3, "skuDetails":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    const/4 v2, 0x0

    .line 742
    .local v2, "productInfoStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    if-eqz v4, :cond_12

    .line 743
    iget-object v4, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    invoke-virtual {v4, p1, p2}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getProductInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 745
    :cond_12
    invoke-static {v2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 746
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 748
    .local v1, "gson":Lcom/google/gson/Gson;
    :try_start_1d
    const-class v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "skuDetails":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    check-cast v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    :try_end_25
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1d .. :try_end_25} :catch_27
    .catchall {:try_start_1d .. :try_end_25} :catchall_32

    .line 753
    .restart local v3    # "skuDetails":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    const/4 v1, 0x0

    .line 758
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "productInfoStr":Ljava/lang/String;
    .end local v3    # "skuDetails":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    :cond_26
    :goto_26
    return-object v3

    .line 749
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v2    # "productInfoStr":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 750
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_28
    const-string v4, "PurchasePresenter"

    const-string v5, "getProductInfo parse json error!"

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_32

    .line 751
    const/4 v3, 0x0

    .line 753
    .restart local v3    # "skuDetails":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    const/4 v1, 0x0

    .line 754
    goto :goto_26

    .line 753
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v3    # "skuDetails":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    :catchall_32
    move-exception v4

    const/4 v1, 0x0

    throw v4

    .line 758
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "productInfoStr":Ljava/lang/String;
    :cond_35
    const/4 v3, 0x0

    goto :goto_26
.end method

.method protected declared-synchronized getSDKOrderId(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p3, "skuDetails"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    .param p4, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 309
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 310
    const-string v0, "PurchasePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSDKOrderId isCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    if-eqz p4, :cond_33

    .line 312
    const/4 v0, -0x1

    const-string v1, "r1_user_cancel"

    .line 313
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-interface {p4, v0, v1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_46

    .line 350
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 317
    :cond_35
    if-nez p3, :cond_49

    .line 318
    :try_start_37
    const-string v0, "PurchasePresenter"

    const-string v1, "getSDKOrderId request Google Server error\uff01the skuDetails is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/16 v0, 0x2714

    const-string v1, "request Google Server error\uff01the skuDetails is null!"

    invoke-interface {p4, v0, v1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_46

    goto :goto_33

    .line 309
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    .line 323
    :cond_49
    :try_start_49
    new-instance v0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$3;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$3;-><init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->requestSDKServerGetOrderId(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_46

    goto :goto_33
.end method

.method protected handleGetSDKPlatformOrderIdSuccess(Landroid/app/Activity;Ljava/util/Map;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p4, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;",
            "Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_a

    const-string v1, "orderId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 379
    :cond_a
    const-string v1, "PurchasePresenter"

    const-string v2, "getSDKOrderId request sdk server error\uff01the orderId is null!"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    if-eqz p4, :cond_1a

    .line 381
    const/16 v1, 0x2711

    const-string v2, "get sdk orderId error!"

    invoke-interface {p4, v1, v2}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V

    .line 389
    :cond_1a
    :goto_1a
    return-void

    .line 386
    :cond_1b
    const-string v1, "orderId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "orderId":Ljava/lang/String;
    invoke-virtual {p0, p1, p3, v0, p4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->launchGPPurchase(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Ljava/lang/String;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    goto :goto_1a
.end method

.method public handlePurchaseError(ILjava/lang/String;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 442
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 443
    const/16 v2, -0x3ea

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "errorCode":Ljava/lang/String;
    invoke-static {p2}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->getErrorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "returnCode":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 453
    .end local v0    # "errorCode":Ljava/lang/String;
    .end local v1    # "returnCode":Ljava/lang/String;
    :cond_16
    return-void
.end method

.method protected handleQueryFailure(Landroid/app/Activity;ILjava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p5, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 243
    iget-object v2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mQueryRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_c

    .line 244
    invoke-virtual {p0, p1, p4, p5}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->queryInventory(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    .line 260
    :cond_b
    :goto_b
    return-void

    .line 248
    :cond_c
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p4}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->getProductInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;

    move-result-object v1

    .line 249
    .local v1, "skuDetails":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    if-eqz v1, :cond_1e

    .line 251
    invoke-virtual {p0, p1, p4, v1, p5}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->getSDKOrderId(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    goto :goto_b

    .line 255
    :cond_1e
    if-eqz p5, :cond_b

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "PurchasePresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryInventory onError msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-interface {p5, p2, p3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_b
.end method

.method protected handleQuerySuccess(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Ljava/util/Map;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p4, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "queryResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 275
    const-string v6, "hasConsume"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 276
    .local v1, "hasConsumeObj":Ljava/lang/Object;
    if-nez v1, :cond_1b

    const/4 v0, 0x0

    .line 277
    .end local v1    # "hasConsumeObj":Ljava/lang/Object;
    .local v0, "hasConsume":Z
    :goto_a
    if-eqz v0, :cond_26

    .line 279
    const-string v6, "purchase_list"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 280
    .local v5, "waitConsumeIdsObj":Ljava/lang/Object;
    if-nez v5, :cond_22

    .line 282
    .end local v5    # "waitConsumeIdsObj":Ljava/lang/Object;
    .local v4, "waitConsumeIds":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    :goto_14
    invoke-virtual {p0, p1, v4, p4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->comsumeMultiAsyn(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    .line 284
    invoke-direct {p0, p1, v4, p4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->handleMulitPurchasesSendGoods(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    .line 293
    .end local v4    # "waitConsumeIds":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    :goto_1a
    return-void

    .line 276
    .end local v0    # "hasConsume":Z
    .restart local v1    # "hasConsumeObj":Ljava/lang/Object;
    :cond_1b
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "hasConsumeObj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    .line 280
    .restart local v0    # "hasConsume":Z
    .restart local v5    # "waitConsumeIdsObj":Ljava/lang/Object;
    :cond_22
    check-cast v5, Ljava/util/List;

    move-object v4, v5

    goto :goto_14

    .line 286
    .end local v5    # "waitConsumeIdsObj":Ljava/lang/Object;
    :cond_26
    const-string v6, "skuDetail"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 287
    .local v3, "skuDetailsObj":Ljava/lang/Object;
    if-nez v3, :cond_3e

    move-object v2, v4

    .line 289
    .end local v3    # "skuDetailsObj":Ljava/lang/Object;
    .local v2, "skuDetails":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    :goto_2f
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p2}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v2}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->saveProductInfo(Landroid/content/Context;Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;)V

    .line 291
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->getSDKOrderId(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    goto :goto_1a

    .line 287
    .end local v2    # "skuDetails":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    .restart local v3    # "skuDetailsObj":Ljava/lang/Object;
    :cond_3e
    check-cast v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;

    move-object v2, v3

    goto :goto_2f
.end method

.method protected handleSendGoodsFailure(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "REQUESTENTITY"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v0, 0x0

    .line 554
    .local v0, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    :goto_9
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2716

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->report(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    .line 555
    return-void

    .line 553
    .end local v0    # "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    :cond_13
    const-string v1, "REQUESTENTITY"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/core/model/RequestEntity;

    move-object v0, v1

    goto :goto_9
.end method

.method protected handleSendGoodsSuccess(Landroid/app/Activity;ZLjava/util/Map;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isLast"    # Z
    .param p4, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 529
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->reportFirstPurchase(Landroid/content/Context;)V

    .line 531
    if-eqz p4, :cond_37

    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 533
    .local v0, "callbackParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ISLAST"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    if-eqz p3, :cond_34

    const-string v2, "REQUESTENTITY"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 535
    const-string v2, "REQUESTENTITY"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/core/model/RequestEntity;

    .line 536
    .local v1, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    const-string v2, "productId"

    const-string v3, "productId"

    invoke-virtual {v1, v3}, Lcom/games37/riversdk/core/model/RequestEntity;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .end local v1    # "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    :cond_34
    invoke-interface {p4, v0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onSuccess(Ljava/util/Map;)V

    .line 540
    .end local v0    # "callbackParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_37
    return-void
.end method

.method public declared-synchronized init(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "googleApiKey"    # Ljava/lang/String;
    .param p3, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p4, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 164
    const-string v0, "PurchasePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init isCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz p4, :cond_33

    .line 166
    const/4 v0, -0x1

    const-string v1, "r1_user_cancel"

    .line 167
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-interface {p4, v0, v1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_42

    .line 188
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 171
    :cond_35
    :try_start_35
    invoke-static {}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->getInstance()Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$1;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$1;-><init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_42

    goto :goto_33

    .line 163
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancel()Z
    .registers 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_b

    .line 976
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 978
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized launchGPPurchase(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Ljava/lang/String;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p3, "sdkOrderId"    # Ljava/lang/String;
    .param p4, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 405
    const-string v0, "PurchasePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchGPPurchase isCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    if-eqz p4, :cond_33

    .line 407
    const/4 v0, -0x1

    const-string v1, "r1_user_cancel"

    .line 408
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-interface {p4, v0, v1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_46

    .line 432
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 412
    :cond_35
    :try_start_35
    invoke-static {}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->getInstance()Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    move-result-object v0

    invoke-virtual {p2}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;

    invoke-direct {v2, p0, p1, p2, p4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$4;-><init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_46

    goto :goto_33

    .line 404
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 971
    invoke-static {}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->getInstance()Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 972
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 988
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->setCancelState(Z)V

    .line 989
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 933
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 962
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mQueryRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_a

    .line 963
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mQueryRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 965
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->setCancelState(Z)V

    .line 966
    invoke-static {}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->getInstance()Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->dispose()V

    .line 967
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 948
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 958
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 943
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 938
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 953
    return-void
.end method

.method public declared-synchronized queryInventory(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p3, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 202
    const-string v0, "PurchasePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryInventory isCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-eqz p3, :cond_33

    .line 204
    const/4 v0, -0x1

    const-string v1, "r1_user_cancel"

    .line 205
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-interface {p3, v0, v1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_46

    .line 226
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 209
    :cond_35
    :try_start_35
    invoke-static {}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->getInstance()Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    move-result-object v0

    invoke-virtual {p2}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$2;-><init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->queryInventory(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_46

    goto :goto_33

    .line 201
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public report(Landroid/content/Context;ILjava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    .prologue
    .line 833
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v5

    const-string v6, "PRODUCTID"

    .line 836
    invoke-virtual {v5, v6}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v5

    const-string v6, "GAMECODE"

    .line 839
    invoke-virtual {v5, v6}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "gameCode":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 841
    .local v3, "purchaseBundle":Landroid/os/Bundle;
    if-eqz p4, :cond_73

    .line 842
    const-string v5, "productId"

    invoke-virtual {p4}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v5, "serverId"

    invoke-virtual {p4}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v5, "roleId"

    invoke-virtual {p4}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v5, "roleName"

    invoke-virtual {p4}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v5, "roleLevel"

    invoke-virtual {p4}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRoleLevel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v5, "cpOrderId"

    invoke-virtual {p4}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v5, "remark"

    invoke-virtual {p4}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v5, "serverId"

    invoke-virtual {p4}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_73
    const-string v5, "loginAccount"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v5, "gameId"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v5, "gameCode"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    new-instance v4, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v4, v3}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 855
    .local v4, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->report(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    .line 856
    return-void
.end method

.method public report(Landroid/content/Context;ILjava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "purchase"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    .prologue
    .line 867
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/UserInformation;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 868
    .local v5, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/UserInformation;->getLoginAccount()Ljava/lang/String;

    move-result-object v2

    .line 870
    .local v2, "loginAccount":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v6

    const-string v7, "PRODUCTID"

    .line 871
    invoke-virtual {v6, v7}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v6

    const-string v7, "GAMECODE"

    .line 874
    invoke-virtual {v6, v7}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "gameCode":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 876
    .local v3, "purchaseBundle":Landroid/os/Bundle;
    if-eqz p4, :cond_57

    .line 877
    const-string v6, "productId"

    invoke-virtual {p4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v6, "purchaseData"

    invoke-virtual {p4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v6, "dataSignature"

    invoke-virtual {p4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v6, "orderId"

    invoke-virtual {p4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_57
    const-string v6, "loginAccount"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v6, "userId"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v6, "gameId"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v6, "gameCode"

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    new-instance v4, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v4, v3}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 887
    .local v4, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->report(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    .line 888
    return-void
.end method

.method public report(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 899
    .local p4, "reportMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "PurchasePresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "report flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    if-nez p4, :cond_43

    .line 901
    const-string v4, "PurchasePresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "report flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reportMap is null\uff01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :goto_42
    return-void

    .line 904
    :cond_43
    const-string v4, "userId"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 906
    .local v3, "userId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/games37/riversdk/common/utils/CommonUtils;->getSystemTimeMillis()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fail msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 909
    const-string v4, "msg"

    invoke-interface {p4, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    invoke-static {}, Lcom/games37/riversdk/core/purchase/dao/DBHelper;->getInstance()Lcom/games37/riversdk/core/purchase/dao/DBHelper;

    move-result-object v4

    invoke-virtual {v4, p1, v1, p4}, Lcom/games37/riversdk/core/purchase/dao/DBHelper;->saveData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 912
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 914
    .local v2, "reportJson":Lorg/json/JSONObject;
    :try_start_98
    const-string v4, "msg"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 915
    const-string v4, "errorCode"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 916
    const-string v4, "userId"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 917
    const-string v4, "gameId"

    const-string v5, "gameId"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 918
    const-string v4, "gameCode"

    const-string v5, "gameCode"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 919
    const-string v4, "packageName"

    const-string v5, "packageName"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 920
    const-string v4, "loginAccount"

    const-string v5, "loginAccount"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 921
    const-string v4, "purchaseData"

    invoke-interface {p4, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 922
    const-string v4, "purchaseData"

    const-string v5, "purchaseData"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e6
    .catch Lorg/json/JSONException; {:try_start_98 .. :try_end_e6} :catch_f1

    .line 927
    :cond_e6
    :goto_e6
    const-string v4, "googleplay"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/games37/riversdk/core/purchase/dao/AFSDKHelper;->reportPurchaseErrorInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_42

    .line 924
    :catch_f1
    move-exception v0

    .line 925
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e6
.end method

.method public reportFirstPurchase(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 769
    const/4 v1, 0x0

    .line 770
    .local v1, "isFirstPurchase":Z
    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    if-eqz v3, :cond_b

    .line 771
    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    invoke-virtual {v3, p1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->getFirstPurchase(Landroid/content/Context;)Z

    move-result v1

    .line 774
    :cond_b
    if-eqz v1, :cond_3a

    .line 776
    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    if-eqz v3, :cond_17

    .line 777
    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setFirstPurchase(Landroid/content/Context;Z)V

    .line 781
    :cond_17
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v3

    const-string v4, "ADWORDS_APP_ID"

    .line 782
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "adword_app_id":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/model/SDKInformation;->getInstance()Lcom/games37/riversdk/core/model/SDKInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/games37/riversdk/core/model/SDKInformation;->getSdkConfigMap()Lcom/games37/riversdk/core/model/DataMap;

    move-result-object v3

    const-string v4, "ADWORDS_PURCHASE_LABEL"

    .line 785
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/model/DataMap;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, "purchase_label":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getInstance()Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->logPurchaseEvent(Landroid/content/Context;)V

    .line 789
    .end local v0    # "adword_app_id":Ljava/lang/String;
    .end local v2    # "purchase_label":Ljava/lang/String;
    :cond_3a
    return-void
.end method

.method public abstract requestSDKServerGetOrderId(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
.end method

.method public abstract requestSDKServerSendGoods(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
.end method

.method public saveProductInfo(Landroid/content/Context;Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "skuDetails"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;

    .prologue
    .line 721
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz p3, :cond_1a

    .line 722
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 723
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "productInfo":Ljava/lang/String;
    iget-object v2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    if-eqz v2, :cond_1a

    .line 726
    iget-object v2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mPurchaseDao:Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;

    invoke-virtual {v2, p1, p2, v1}, Lcom/games37/riversdk/core/purchase/dao/PurchaseDao;->setProductInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "productInfo":Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method protected declared-synchronized sendGoods(Landroid/app/Activity;ZLcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isLast"    # Z
    .param p3, "purchase"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .param p4, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 468
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 469
    const-string v0, "PurchasePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGoods isCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-eqz p4, :cond_33

    .line 471
    const/4 v0, -0x1

    const-string v1, "r1_user_cancel"

    .line 472
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-interface {p4, v0, v1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_43

    .line 502
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 476
    :cond_35
    :try_start_35
    new-instance v0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$5;-><init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Landroid/app/Activity;ZLcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->requestSDKServerSendGoods(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_43

    goto :goto_33

    .line 468
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCancelState(Z)V
    .registers 3
    .param p1, "cancelState"    # Z

    .prologue
    .line 982
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_9

    .line 983
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->isCancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 985
    :cond_9
    return-void
.end method

.method public declared-synchronized startPurchase(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "googleApiKey"    # Ljava/lang/String;
    .param p3, "purchaseInfo"    # Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .param p4, "purchaseCallback"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iput-object p4, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->mCallback:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;

    .line 136
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p3, :cond_14

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->setCancelState(Z)V

    .line 139
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    .line 148
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 141
    :cond_14
    :try_start_14
    const-string v0, "PurchasePresenter"

    const-string v1, "can\'t not start purchase! the googleApiKey is null or purchaseInfo is null!"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/16 v0, 0x2713

    const-string v1, "can\'t not start purchase! the googleApiKey is null or purchaseInfo is null!"

    invoke-interface {p4, v0, v1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;->onFailure(ILjava/lang/String;)V

    .line 144
    if-eqz p1, :cond_12

    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_28

    goto :goto_12

    .line 135
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method
