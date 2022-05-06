.class Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;Ljava/util/List;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 6
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->val$singleListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->val$multiListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1075
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;>;"
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    .line 1078
    .local v1, "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    :try_start_17
    iget-object v4, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    invoke-virtual {v4, v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->consume(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    .line 1079
    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successful consume of sku "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException; {:try_start_17 .. :try_end_3c} :catch_3d

    goto :goto_b

    .line 1081
    :catch_3d
    move-exception v0

    .line 1082
    .local v0, "ex":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;
    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;->getResult()Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1086
    .end local v0    # "ex":Lcom/games37/riversdk/functions/googleplay/billing/lib/IabException;
    .end local v1    # "purchase":Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;
    :cond_46
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    invoke-virtual {v3}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->flagEndAsync()V

    .line 1087
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iget-boolean v3, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDisposed:Z

    if-nez v3, :cond_5f

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->val$singleListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeFinishedListener;

    if-eqz v3, :cond_5f

    .line 1088
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3$1;

    invoke-direct {v4, p0, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3$1;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1094
    :cond_5f
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;

    iget-boolean v3, v3, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;->mDisposed:Z

    if-nez v3, :cond_73

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->val$multiListener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v3, :cond_73

    .line 1095
    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3$2;

    invoke-direct {v4, p0, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3$2;-><init>(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1101
    :cond_73
    return-void
.end method
