.class Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;
.super Ljava/lang/Object;
.source "BillingApi.java"

# interfaces
.implements Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->consumeAsync(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
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
    .line 382
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;->val$consumeCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;)V
    .registers 10
    .param p1, "purchase"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .param p2, "result"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    .prologue
    const/16 v6, 0x2716

    .line 387
    if-eqz p2, :cond_6

    if-nez p1, :cond_1a

    .line 388
    :cond_6
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;->val$consumeCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;->val$activity:Landroid/app/Activity;

    const-string v5, "r1_gp_consume_exception"

    .line 389
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-interface {v2, v6, v3}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    .line 409
    :goto_19
    return-void

    .line 395
    :cond_1a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v0, "consumeResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->isFailure()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 399
    const-string v2, "BillingApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumeAsync onConsumeFinished code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 400
    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;->val$consumeCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-interface {v2, v6, v1}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_19

    .line 407
    .end local v1    # "msg":Ljava/lang/String;
    :cond_7a
    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$5;->val$consumeCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-interface {v2, p1}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_19
.end method
