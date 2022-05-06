.class Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;
.super Ljava/lang/Object;
.source "BillingApi.java"

# interfaces
.implements Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->getSkuDetail(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

.field final synthetic val$skuList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Landroid/app/Activity;Lcom/games37/riversdk/functions/callback/FunctionCallback;Ljava/util/List;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->val$callback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    iput-object p4, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->val$skuList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;)V
    .registers 13
    .param p1, "result"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    .param p2, "inv"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;

    .prologue
    const/16 v9, 0x2714

    .line 473
    if-eqz p1, :cond_6

    if-nez p2, :cond_1a

    .line 474
    :cond_6
    iget-object v6, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->val$activity:Landroid/app/Activity;

    const-string v8, "r1_gp_query_exception"

    .line 475
    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 474
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "null_msg":Ljava/lang/String;
    iget-object v6, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->val$callback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-interface {v6, v9, v3}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    .line 504
    .end local v3    # "null_msg":Ljava/lang/String;
    :cond_19
    :goto_19
    return-void

    .line 481
    :cond_1a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 483
    .local v2, "json":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v6, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->val$skuList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_19

    .line 485
    :try_start_28
    iget-object v6, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->val$skuList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 487
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->isFailure()Z

    move-result v6

    if-nez v6, :cond_3e

    if-eqz p2, :cond_3e

    .line 489
    invoke-virtual {p2, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;

    move-result-object v6

    if-nez v6, :cond_77

    .line 490
    :cond_3e
    const-string v6, "BillingApi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---onQueryInventoryFinished---sku="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 491
    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 490
    invoke-static {v6, v7}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v6, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->val$callback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    const/16 v7, 0x2714

    .line 493
    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 492
    invoke-interface {v6, v7, v8}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_6f} :catch_70

    goto :goto_19

    .line 500
    .end local v4    # "sku":Ljava/lang/String;
    :catch_70
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 483
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 497
    .restart local v4    # "sku":Ljava/lang/String;
    :cond_77
    :try_start_77
    invoke-virtual {p2, v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;

    move-result-object v5

    .line 498
    .local v5, "skuDetails":Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;
    invoke-virtual {v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/SkuDetails;->getmJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    iget-object v6, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$7;->val$callback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-interface {v6, v2}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_87} :catch_70

    goto :goto_74
.end method
