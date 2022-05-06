.class public Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;,
        Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;,
        Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;,
        Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE:I = 0x2

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE:I = -0x3f3

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field private final mAsyncInProgressLock:Ljava/lang/Object;

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposeAfterAsync:Z

.field public mDisposed:Z

.field mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionUpdateSupported:Z

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDebugLog:Z

    .line 77
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSetupDone:Z

    .line 83
    iput-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDisposed:Z

    .line 86
    iput-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDisposeAfterAsync:Z

    .line 89
    iput-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionsSupported:Z

    .line 92
    iput-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionUpdateSupported:Z

    .line 96
    iput-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgress:Z

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 179
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private checkNotDisposed()V
    .registers 3

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_c
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 6
    .param p0, "code"    # I

    .prologue
    .line 830
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    .line 833
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v4, "/"

    .line 843
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_36

    .line 846
    rsub-int v2, p0, -0x3e8

    .line 847
    .local v2, "index":I
    if-ltz v2, :cond_1e

    array-length v3, v1

    if-ge v2, v3, :cond_1e

    aget-object v3, v1, v2

    .line 853
    .end local v2    # "index":I
    :goto_1d
    return-object v3

    .line 848
    .restart local v2    # "index":I
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 850
    .end local v2    # "index":I
    :cond_36
    if-ltz p0, :cond_3b

    array-length v3, v0

    if-lt p0, v3, :cond_53

    .line 851
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 853
    :cond_53
    aget-object v3, v0, p0

    goto :goto_1d
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_39

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 861
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_39
    return-void
.end method

.method consume(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V
    .registers 10
    .param p1, "itemInfo"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;
        }
    .end annotation

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 735
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 737
    iget-object v4, p1, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 738
    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Items of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 743
    :cond_35
    :try_start_35
    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_47

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 746
    :cond_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 747
    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_88} :catch_88

    .line 761
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_88
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 751
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_a4
    :try_start_a4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 752
    iget-object v4, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 753
    .local v1, "response":I
    if-nez v1, :cond_ea

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 764
    return-void

    .line 757
    :cond_ea
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 758
    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_127
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_127} :catch_88
.end method

.method public consumeAsync(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;)V
    .registers 5
    .param p1, "purchase"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .param p2, "listener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 804
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 808
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 4
    .param p2, "listener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            ">;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 817
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 818
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 820
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 11
    .param p2, "singleListener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            ">;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 1071
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1072
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 1073
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1102
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1103
    return-void
.end method

.method public dispose()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_4
    iget-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_2c

    .line 322
    new-instance v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t dispose because an async operation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is in progress."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 326
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSetupDone:Z

    .line 328
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_4d

    .line 329
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    :cond_4d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDisposed:Z

    .line 333
    iput-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    .line 334
    iput-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 335
    iput-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 336
    iput-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    .line 337
    return-void
.end method

.method public disposeWhenFinished()V
    .registers 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_3
    iget-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_11

    .line 346
    const-string v0, "Will dispose after async operation finishes."

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDisposeAfterAsync:Z

    .line 356
    :goto_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_17

    .line 357
    return-void

    .line 350
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->dispose()V
    :try_end_14
    .catch Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_17

    goto :goto_f

    .line 351
    :catch_15
    move-exception v0

    goto :goto_f

    .line 356
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public enableDebugLogging(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 193
    iput-boolean p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDebugLog:Z

    .line 194
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 187
    iput-boolean p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDebugLog:Z

    .line 188
    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 189
    return-void
.end method

.method flagEndAsync()V
    .registers 4

    .prologue
    .line 911
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 912
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ending async operation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 913
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgress:Z

    .line 915
    iget-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDisposeAfterAsync:Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2b

    if-eqz v0, :cond_29

    .line 917
    :try_start_26
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->dispose()V
    :try_end_29
    .catch Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException; {:try_start_26 .. :try_end_29} :catch_2e
    .catchall {:try_start_26 .. :try_end_29} :catchall_2b

    .line 923
    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v1

    .line 924
    return-void

    .line 923
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v0

    .line 918
    :catch_2e
    move-exception v0

    goto :goto_29
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .registers 6
    .param p1, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 898
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 899
    :try_start_3
    iget-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_35

    .line 900
    new-instance v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start async operation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") because another async operation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is in progress."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v0

    .line 904
    :cond_35
    :try_start_35
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mAsyncInProgress:Z

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting async operation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 907
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_35 .. :try_end_51} :catchall_32

    .line 908
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 867
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 868
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_f

    .line 869
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 870
    const/4 v1, 0x0

    .line 873
    .end local v0    # "o":Ljava/lang/Object;
    :goto_e
    return v1

    .line 872
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_f
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    .line 873
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1a
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_26

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_e

    .line 875
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_26
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 877
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .registers 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 883
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 884
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_13

    .line 885
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 886
    const/4 v1, 0x0

    .line 889
    .end local v0    # "o":Ljava/lang/Object;
    :goto_12
    return v1

    .line 888
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_13
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_12

    .line 889
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1e
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2a

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_12

    .line 891
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2a
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 893
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 519
    iget v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_6

    const/4 v8, 0x0

    .line 598
    :goto_5
    return v8

    .line 521
    :cond_6
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 522
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagEndAsync()V

    .line 527
    if-nez p3, :cond_2d

    .line 528
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 529
    new-instance v6, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 530
    .local v6, "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    .line 531
    :cond_2b
    const/4 v8, 0x1

    goto :goto_5

    .line 534
    .end local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :cond_2d
    invoke-virtual {p0, p3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 535
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_16a

    if-nez v5, :cond_16a

    .line 539
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 540
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 541
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 545
    if-eqz v4, :cond_a9

    if-nez v0, :cond_e2

    .line 546
    :cond_a9
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 547
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 548
    new-instance v6, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 549
    .restart local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_df

    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    .line 550
    :cond_df
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 553
    .end local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :cond_e2
    const/4 v2, 0x0

    .line 555
    .local v2, "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    :try_start_e3
    new-instance v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_e3 .. :try_end_ea} :catch_14b

    .line 556
    .end local v2    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .local v3, "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    :try_start_ea
    invoke-virtual {v3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 559
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_132

    .line 560
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 561
    new-instance v6, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature verification failed for sku "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 562
    .restart local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_12f

    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    .line 563
    :cond_12f
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 565
    .end local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :cond_132
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_137
    .catch Lorg/json/JSONException; {:try_start_ea .. :try_end_137} :catch_206

    .line 575
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_148

    .line 576
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    .line 598
    .end local v3    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_148
    :goto_148
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 567
    .restart local v2    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    :catch_14b
    move-exception v1

    .line 568
    .local v1, "e":Lorg/json/JSONException;
    :goto_14c
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 570
    new-instance v6, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 571
    .restart local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_167

    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    .line 572
    :cond_167
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 579
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .end local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :cond_16a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_199

    .line 581
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 582
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_148

    .line 583
    new-instance v6, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 584
    .restart local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    goto :goto_148

    .line 587
    .end local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :cond_199
    if-nez p2, :cond_1c9

    .line 588
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase canceled - Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 589
    new-instance v6, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 590
    .restart local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_148

    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    goto :goto_148

    .line 593
    .end local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :cond_1c9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase failed. Result code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 594
    invoke-static {v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 593
    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 595
    new-instance v6, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 596
    .restart local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_148

    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    goto/16 :goto_148

    .line 567
    .end local v6    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    .restart local v3    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    :catch_206
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .restart local v2    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    goto/16 :goto_14c
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 392
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 398
    const-string v3, "inapp"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 22
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p5, "requestCode"    # I
    .param p6, "listener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;
    .param p7, "extraData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 435
    .local p4, "oldSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 436
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 437
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 440
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_30

    .line 441
    new-instance v11, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v11, v1, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 443
    .local v11, "r":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagEndAsync()V

    .line 444
    if-eqz p6, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v11, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    .line 502
    .end local v11    # "r":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :cond_2f
    :goto_2f
    return-void

    .line 449
    :cond_30
    :try_start_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 451
    if-eqz p4, :cond_5c

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 453
    :cond_5c
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 467
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    :goto_6f
    invoke-virtual {p0, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 468
    .local v12, "response":I
    if-eqz v12, :cond_137

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagEndAsync()V

    .line 471
    new-instance v13, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 472
    .local v13, "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    if-eqz p6, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v13, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V
    :try_end_a1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_30 .. :try_end_a1} :catch_a2
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_a1} :catch_ee

    goto :goto_2f

    .line 486
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :catch_a2
    move-exception v9

    .line 487
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 489
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagEndAsync()V

    .line 491
    new-instance v13, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 492
    .restart local v13    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    if-eqz p6, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v13, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    goto/16 :goto_2f

    .line 457
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :cond_d4
    :try_start_d4
    iget-boolean v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionUpdateSupported:Z

    if-nez v1, :cond_120

    .line 458
    new-instance v11, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v1, -0x3f3

    const-string v2, "Subscription updates are not available."

    invoke-direct {v11, v1, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 460
    .restart local v11    # "r":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagEndAsync()V

    .line 461
    if-eqz p6, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v11, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V
    :try_end_ec
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_d4 .. :try_end_ec} :catch_a2
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_ec} :catch_ee

    goto/16 :goto_2f

    .line 494
    .end local v11    # "r":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :catch_ee
    move-exception v9

    .line 495
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 497
    invoke-virtual {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagEndAsync()V

    .line 499
    new-instance v13, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 500
    .restart local v13    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    if-eqz p6, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v13, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    goto/16 :goto_2f

    .line 464
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :cond_120
    :try_start_120
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    goto/16 :goto_6f

    .line 476
    .restart local v12    # "response":I
    :cond_137
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 477
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 478
    move/from16 v0, p5

    iput v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mRequestCode:I

    .line 479
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchaseListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;

    .line 480
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 481
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 483
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    .line 484
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p5

    .line 481
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_199
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_120 .. :try_end_199} :catch_a2
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_199} :catch_ee

    goto/16 :goto_2f
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 403
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 409
    const-string v3, "subs"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_9
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void
.end method

.method public queryInventory()Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .registers 10
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;
        }
    .end annotation

    .prologue
    .line 620
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 621
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 623
    :try_start_8
    new-instance v1, Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;

    invoke-direct {v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;-><init>()V

    .line 624
    .local v1, "inv":Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->queryPurchases(Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 625
    .local v2, "r":I
    if-eqz v2, :cond_28

    .line 626
    new-instance v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1d} :catch_3a

    .line 653
    .end local v1    # "inv":Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .end local v2    # "r":I
    :catch_1d
    move-exception v0

    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 629
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .restart local v2    # "r":I
    :cond_28
    if-eqz p1, :cond_45

    .line 630
    :try_start_2a
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Ljava/util/List;)I

    move-result v2

    .line 631
    if-eqz v2, :cond_45

    .line 632
    new-instance v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3a} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_3a} :catch_3a

    .line 656
    .end local v1    # "inv":Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .end local v2    # "r":I
    :catch_3a
    move-exception v0

    .line 657
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 637
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .restart local v2    # "r":I
    :cond_45
    :try_start_45
    iget-boolean v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_6b

    .line 638
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->queryPurchases(Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 639
    if-eqz v2, :cond_59

    .line 640
    new-instance v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 643
    :cond_59
    if-eqz p1, :cond_6b

    .line 644
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Ljava/util/List;)I

    move-result v2

    .line 645
    if-eqz v2, :cond_6b

    .line 646
    new-instance v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_6b} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_6b} :catch_3a

    .line 651
    :cond_6b
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 721
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;)V

    .line 722
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;)V
    .registers 13
    .param p1, "querySkuDetails"    # Z
    .param p4, "listener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 689
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 690
    .local v6, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 691
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 692
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 693
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;ZLjava/util/List;Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 716
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 717
    return-void
.end method

.method queryPurchases(Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Ljava/lang/String;)I
    .registers 19
    .param p1, "inv"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 938
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Querying owned items, item type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 939
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 940
    const/4 v12, 0x0

    .line 941
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 944
    .local v1, "continueToken":Ljava/lang/String;
    :cond_3c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 948
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 949
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 950
    if-eqz v8, :cond_a8

    .line 951
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 996
    .end local v8    # "response":I
    :goto_a7
    return v8

    .line 954
    .restart local v8    # "response":I
    :cond_a8
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c0

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 955
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c0

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 956
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_ca

    .line 957
    :cond_c0
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 958
    const/16 v8, -0x3ea

    goto :goto_a7

    .line 961
    :cond_ca
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 963
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 965
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 968
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_dd
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_188

    .line 969
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 970
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 971
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 972
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14f

    .line 973
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 974
    new-instance v5, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    .local v5, "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    invoke-virtual {v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_147

    .line 977
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 978
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 982
    :cond_147
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;->addPurchase(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    .line 968
    .end local v5    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    :goto_14c
    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    .line 985
    :cond_14f
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 986
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 987
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Signature: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 988
    const/4 v12, 0x1

    goto :goto_14c

    .line 992
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_188
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 993
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 994
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 996
    if-eqz v12, :cond_1b3

    const/16 v13, -0x3eb

    :goto_1b0
    move v8, v13

    goto/16 :goto_a7

    :cond_1b3
    const/4 v13, 0x0

    goto :goto_1b0
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Ljava/util/List;)I
    .registers 27
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1001
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "Querying SKU details."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1002
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v15, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1004
    if-eqz p3, :cond_37

    .line 1005
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_21
    :goto_21
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_37

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1006
    .local v13, "sku":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_21

    .line 1007
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1012
    .end local v13    # "sku":Ljava/lang/String;
    :cond_37
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_48

    .line 1013
    const-string v19, "queryPrices: nothing to do because there are no SKUs."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1014
    const/4 v10, 0x0

    .line 1064
    :goto_47
    return v10

    .line 1018
    :cond_48
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v8, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    div-int/lit8 v7, v19, 0x14

    .line 1021
    .local v7, "n":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    rem-int/lit8 v6, v19, 0x14

    .line 1022
    .local v6, "mod":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5a
    if-ge v5, v7, :cond_8d

    .line 1023
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v17, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v5, 0x14

    mul-int/lit8 v20, v5, 0x14

    add-int/lit8 v20, v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_73
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_85

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1025
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_73

    .line 1027
    .end local v12    # "s":Ljava/lang/String;
    :cond_85
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 1029
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8d
    if-eqz v6, :cond_bd

    .line 1030
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .restart local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v7, 0x14

    mul-int/lit8 v20, v7, 0x14

    add-int v20, v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_a6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1032
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 1034
    .end local v12    # "s":Ljava/lang/String;
    :cond_b8
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_bd
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_c1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_17b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 1038
    .local v16, "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1039
    .local v9, "querySkus":Landroid/os/Bundle;
    const-string v20, "ITEM_ID_LIST"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 1043
    .local v14, "skuDetails":Landroid/os/Bundle;
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_138

    .line 1044
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v10

    .line 1045
    .local v10, "response":I
    if-eqz v10, :cond_12b

    .line 1046
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSkuDetails() failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1049
    :cond_12b
    const-string v19, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logError(Ljava/lang/String;)V

    .line 1050
    const/16 v10, -0x3ea

    goto/16 :goto_47

    .line 1054
    .end local v10    # "response":I
    :cond_138
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1057
    .local v11, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_144
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1058
    .local v18, "thisResponse":Ljava/lang/String;
    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    .local v4, "d":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Got sku details: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1060
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;->addSkuDetails(Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;)V

    goto :goto_144

    .line 1064
    .end local v4    # "d":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    .end local v9    # "querySkus":Landroid/os/Bundle;
    .end local v11    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "skuDetails":Landroid/os/Bundle;
    .end local v16    # "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "thisResponse":Ljava/lang/String;
    :cond_17b
    const/4 v10, 0x0

    goto/16 :goto_47
.end method

.method public startSetup(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 219
    iget-boolean v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSetupDone:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "IAB helper is already set up."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_f
    const-string v2, "Starting in-app billing setup."

    invoke-virtual {p0, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 223
    new-instance v2, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 296
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 299
    .local v0, "intentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 301
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 311
    :cond_42
    :goto_42
    return-void

    .line 305
    :cond_43
    if-eqz p1, :cond_42

    .line 306
    new-instance v2, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/4 v3, 0x3

    const-string v4, "Billing service unavailable on device."

    invoke-direct {v2, v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;)V

    goto :goto_42
.end method

.method public subscriptionsSupported()Z
    .registers 2

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->checkNotDisposed()V

    .line 366
    iget-boolean v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
