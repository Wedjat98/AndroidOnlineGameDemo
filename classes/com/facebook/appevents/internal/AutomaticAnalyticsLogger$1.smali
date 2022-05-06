.class Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logInAppPurchaseEvent(Landroid/content/Context;ILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$purchaseData:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$purchaseData:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 19
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getServiceInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v10

    .line 119
    invoke-static {v10}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$0(Ljava/lang/Object;)V

    .line 122
    :try_start_d
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$purchaseData:Ljava/lang/String;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v7, "purchaseDetails":Lorg/json/JSONObject;
    const-string v10, "productId"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "sku":Ljava/lang/String;
    const-string v10, "autoRenewing"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    .line 126
    .local v4, "isSubscription":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    # getter for: Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->inAppBillingObj:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$2()Ljava/lang/Object;

    move-result-object v11

    .line 125
    invoke-static {v10, v8, v11, v4}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchaseDetails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, "skuDetails":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_33} :catch_10b
    .catchall {:try_start_d .. :try_end_33} :catchall_120

    move-result v10

    if-eqz v10, :cond_40

    .line 182
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 184
    .end local v4    # "isSubscription":Z
    .end local v7    # "purchaseDetails":Lorg/json/JSONObject;
    .end local v8    # "sku":Ljava/lang/String;
    .end local v9    # "skuDetails":Ljava/lang/String;
    :goto_3f
    return-void

    .line 130
    .restart local v4    # "isSubscription":Z
    .restart local v7    # "purchaseDetails":Lorg/json/JSONObject;
    .restart local v8    # "sku":Ljava/lang/String;
    .restart local v9    # "skuDetails":Ljava/lang/String;
    :cond_40
    :try_start_40
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v5, "jsonSkuDetails":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    invoke-static {v10}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v2

    .line 132
    .local v2, "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v6, Landroid/os/Bundle;

    const/4 v10, 0x1

    invoke-direct {v6, v10}, Landroid/os/Bundle;-><init>(I)V

    .line 133
    .local v6, "params":Landroid/os/Bundle;
    const-string v10, "fb_iap_product_id"

    invoke-virtual {v6, v10, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 135
    const-string v10, "fb_iap_purchase_time"

    .line 136
    const-string v11, "purchaseTime"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 138
    const-string v10, "fb_iap_purchase_state"

    .line 139
    const-string v11, "purchaseState"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 137
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 141
    const-string v10, "fb_iap_purchase_token"

    .line 142
    const-string v11, "purchaseToken"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 140
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 144
    const-string v10, "fb_iap_package_name"

    .line 145
    const-string v11, "packageName"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 143
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 147
    const-string v10, "fb_iap_product_type"

    .line 148
    const-string v11, "type"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 150
    const-string v10, "fb_iap_product_title"

    .line 151
    const-string v11, "title"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 149
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 153
    const-string v10, "fb_iap_product_description"

    .line 154
    const-string v11, "description"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 156
    const-string v10, "fb_iap_subs_auto_renewing"

    .line 157
    const-string v11, "autoRenewing"

    .line 158
    const/4 v12, 0x0

    .line 157
    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 160
    const-string v10, "fb_iap_subs_period"

    .line 161
    const-string v11, "subscriptionPeriod"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 159
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 163
    const-string v10, "fb_free_trial_period"

    .line 164
    const-string v11, "freeTrialPeriod"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 162
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 166
    const-string v10, "fb_intro_price_amount_micros"

    .line 167
    const-string v11, "introductoryPriceAmountMicros"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 165
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 169
    const-string v10, "fb_intro_price_cycles"

    .line 170
    const-string v11, "introductoryPriceCycles"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 173
    new-instance v10, Ljava/math/BigDecimal;

    .line 174
    const-string v11, "price_amount_micros"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    .line 173
    invoke-direct {v10, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 175
    const-string v11, "price_currency_code"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v11

    .line 172
    invoke-virtual {v2, v10, v11, v6}, Lcom/facebook/appevents/AppEventsLogger;->logPurchaseImplicitly(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_100
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_100} :catch_10b
    .catchall {:try_start_40 .. :try_end_100} :catchall_120

    .line 182
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_3f

    .line 178
    .end local v2    # "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    .end local v4    # "isSubscription":Z
    .end local v5    # "jsonSkuDetails":Lorg/json/JSONObject;
    .end local v6    # "params":Landroid/os/Bundle;
    .end local v7    # "purchaseDetails":Lorg/json/JSONObject;
    .end local v8    # "sku":Ljava/lang/String;
    .end local v9    # "skuDetails":Ljava/lang/String;
    :catch_10b
    move-exception v3

    .line 179
    .local v3, "e":Lorg/json/JSONException;
    :try_start_10c
    # getter for: Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$1()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Error parsing in-app purchase data."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_115
    .catchall {:try_start_10c .. :try_end_115} :catchall_120

    .line 182
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_3f

    .line 181
    .end local v3    # "e":Lorg/json/JSONException;
    :catchall_120
    move-exception v10

    .line 182
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    throw v10
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$0(Ljava/lang/Object;)V

    .line 112
    # getter for: Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In-app billing service disconnected"

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
