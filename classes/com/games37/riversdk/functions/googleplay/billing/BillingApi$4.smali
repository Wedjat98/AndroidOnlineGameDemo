.class Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$4;
.super Ljava/lang/Object;
.source "BillingApi.java"

# interfaces
.implements Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->consumeAsync(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$consumeCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Lcom/games37/riversdk/functions/callback/FunctionCallback;Landroid/app/Activity;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$4;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$4;->val$consumeCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;>;"
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1e

    .line 318
    :cond_8
    iget-object v7, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$4;->val$consumeCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    const/16 v8, 0x2716

    iget-object v9, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$4;->val$activity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$4;->val$activity:Landroid/app/Activity;

    const-string v11, "r1_gp_consume_exception"

    .line 319
    invoke-static {v10, v11}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 318
    invoke-interface {v7, v8, v9}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    .line 351
    :goto_1d
    return-void

    .line 325
    :cond_1e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v1, "failMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v6, "succList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 331
    .local v5, "resultsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    if-ge v2, v5, :cond_91

    .line 332
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    .line 333
    .local v4, "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    .line 335
    .local v3, "purchasedItem":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    invoke-virtual {v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->isFailure()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 336
    const-string v7, "BillingApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "consumeAsync onConsumeMultiFinished fail purchase = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 337
    invoke-virtual {v3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 336
    invoke-static {v7, v8}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v7, "BillingApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "consumeAsync onConsumeMultiFinished fail code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 339
    invoke-virtual {v4}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 338
    invoke-static {v7, v8}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 342
    :cond_8d
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 347
    .end local v3    # "purchasedItem":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .end local v4    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :cond_91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v0, "consumeResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "consume_fail_map"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v7, "consume_succ_list"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v7, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$4;->val$consumeCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-interface {v7, v0}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1d
.end method
