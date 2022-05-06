.class Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->startSetup(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

.field final synthetic val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 232
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iget-boolean v3, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDisposed:Z

    if-eqz v3, :cond_8

    .line 293
    :cond_7
    :goto_7
    return-void

    .line 233
    :cond_8
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const-string v4, "Billing service connected."

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    iput-object v4, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 235
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iget-object v3, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "packageName":Ljava/lang/String;
    :try_start_1f
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const-string v4, "Checking for in-app billing 3 support."

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iget-object v3, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "inapp"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 241
    .local v2, "response":I
    if-eqz v2, :cond_65

    .line 242
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const-string v5, "Error checking for billing v3 support."

    invoke-direct {v4, v2, v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;)V

    .line 246
    :cond_43
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionsSupported:Z

    .line 247
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionUpdateSupported:Z
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4d} :catch_4e

    goto :goto_7

    .line 281
    .end local v2    # "response":I
    :catch_4e
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_61

    .line 283
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/16 v5, -0x3e9

    const-string v6, "RemoteException while setting up in-app billing."

    invoke-direct {v4, v5, v6}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;)V

    .line 286
    :cond_61
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "response":I
    :cond_65
    :try_start_65
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In-app billing version 3 supported for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iget-object v3, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x5

    const-string v5, "subs"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 256
    if-nez v2, :cond_b8

    .line 257
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const-string v4, "Subscription re-signup AVAILABLE."

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionUpdateSupported:Z

    .line 264
    :goto_96
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iget-boolean v3, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionUpdateSupported:Z

    if-eqz v3, :cond_c5

    .line 265
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionsSupported:Z

    .line 279
    :goto_a1
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSetupDone:Z
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_a6} :catch_4e

    .line 290
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_7

    .line 291
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const-string v5, "Setup successful."

    invoke-direct {v4, v6, v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;)V

    goto/16 :goto_7

    .line 260
    :cond_b8
    :try_start_b8
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const-string v4, "Subscription re-signup not available."

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionUpdateSupported:Z

    goto :goto_96

    .line 268
    :cond_c5
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iget-object v3, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "subs"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 269
    if-nez v2, :cond_df

    .line 270
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const-string v4, "Subscriptions AVAILABLE."

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionsSupported:Z

    goto :goto_a1

    .line 273
    :cond_df
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionsSupported:Z

    .line 275
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mSubscriptionUpdateSupported:Z
    :try_end_101
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_101} :catch_4e

    goto :goto_a1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 228
    return-void
.end method
