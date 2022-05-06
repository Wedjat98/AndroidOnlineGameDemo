.class Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$7;
.super Ljava/lang/Object;
.source "PurchasePresenter.java"

# interfaces
.implements Lcom/games37/riversdk/functions/callback/FunctionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->comsumeMultiAsyn(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/functions/callback/FunctionCallback",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$7;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iput-object p2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 614
    const-string v0, "PurchasePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comsumeMultiAsyn error! code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 610
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$7;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "consumeResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 620
    const-string v9, "consume_fail_map"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 621
    .local v1, "failObj":Ljava/lang/Object;
    if-nez v1, :cond_6c

    move-object v0, v8

    .line 623
    .end local v1    # "failObj":Ljava/lang/Object;
    .local v0, "failMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;>;"
    :goto_a
    const-string v9, "consume_succ_list"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 624
    .local v6, "succObj":Ljava/lang/Object;
    if-nez v6, :cond_70

    move-object v7, v8

    .line 626
    .end local v6    # "succObj":Ljava/lang/Object;
    .local v7, "successList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    :goto_13
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_74

    .line 627
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 628
    .local v2, "it":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 629
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    .line 630
    .local v4, "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    .line 631
    .local v5, "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    if-eqz v4, :cond_23

    if-eqz v5, :cond_23

    .line 632
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "msg":Ljava/lang/String;
    iget-object v8, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$7;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v9, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x2717

    invoke-virtual {v8, v9, v10, v3, v4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->report(Landroid/content/Context;ILjava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    goto :goto_23

    .line 621
    .end local v0    # "failMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;>;"
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    .end local v5    # "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    .end local v7    # "successList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    .restart local v1    # "failObj":Ljava/lang/Object;
    :cond_6c
    check-cast v1, Ljava/util/HashMap;

    move-object v0, v1

    goto :goto_a

    .line 624
    .end local v1    # "failObj":Ljava/lang/Object;
    .restart local v0    # "failMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;>;"
    .restart local v6    # "succObj":Ljava/lang/Object;
    :cond_70
    check-cast v6, Ljava/util/List;

    move-object v7, v6

    goto :goto_13

    .line 637
    .end local v6    # "succObj":Ljava/lang/Object;
    .restart local v7    # "successList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;>;"
    :cond_74
    return-void
.end method
