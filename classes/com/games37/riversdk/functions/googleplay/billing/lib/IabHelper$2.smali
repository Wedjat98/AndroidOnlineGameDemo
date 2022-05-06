.class Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreItemSkus:Ljava/util/List;

.field final synthetic val$moreSubsSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;ZLjava/util/List;Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iput-boolean p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    iput-object p5, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;

    iput-object p6, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 695
    new-instance v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    .line 696
    .local v3, "result":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    const/4 v1, 0x0

    .line 698
    .local v1, "inv":Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    :try_start_9
    iget-object v5, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iget-boolean v6, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iget-object v8, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7, v8}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    :try_end_14
    .catch Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException; {:try_start_9 .. :try_end_14} :catch_31

    move-result-object v1

    .line 704
    :goto_15
    iget-object v5, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    invoke-virtual {v5}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagEndAsync()V

    .line 706
    move-object v4, v3

    .line 707
    .local v4, "result_f":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    move-object v2, v1

    .line 708
    .local v2, "inv_f":Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    iget-object v5, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iget-boolean v5, v5, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDisposed:Z

    if-nez v5, :cond_30

    iget-object v5, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_30

    .line 709
    iget-object v5, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2$1;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    :cond_30
    return-void

    .line 700
    .end local v2    # "inv_f":Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;
    .end local v4    # "result_f":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    :catch_31
    move-exception v0

    .line 701
    .local v0, "ex":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;
    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;->getResult()Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    move-result-object v3

    goto :goto_15
.end method
