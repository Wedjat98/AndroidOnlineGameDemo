.class Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;
.super Ljava/lang/Object;
.source "BillingApi.java"

# interfaces
.implements Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$initCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Lcom/games37/riversdk/functions/callback/FunctionCallback;Landroid/app/Activity;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;->val$initCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;)V
    .registers 8
    .param p1, "result"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    .prologue
    const/16 v5, 0x2713

    const/4 v3, 0x1

    .line 83
    if-nez p1, :cond_19

    .line 84
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;->val$initCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;->val$activity:Landroid/app/Activity;

    const-string v4, "r1_gp_init_exception"

    .line 85
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-interface {v1, v5, v2}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    .line 99
    :goto_18
    return-void

    .line 90
    :cond_19
    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 91
    const-string v1, "BillingApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIabSetupFinished code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;->val$initCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-interface {v1, v5, v0}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_18

    .line 97
    .end local v0    # "msg":Ljava/lang/String;
    :cond_74
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    # getter for: Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->iabSetupStatus:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->access$000(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 98
    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$1;->val$initCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_18
.end method
