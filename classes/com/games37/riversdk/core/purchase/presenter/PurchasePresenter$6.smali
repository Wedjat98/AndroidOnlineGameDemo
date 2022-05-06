.class Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;
.super Ljava/lang/Object;
.source "PurchasePresenter.java"

# interfaces
.implements Lcom/games37/riversdk/functions/callback/FunctionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->comsumeAsyn(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;)V
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
        "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

.field final synthetic val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iput-object p2, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;->val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    iput-object p3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 578
    const-string v1, "PurchasePresenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comsumeAsyn error! purchase="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;->val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    if-nez v0, :cond_50

    const-string v0, ""

    .line 579
    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v1, v0}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v0, "PurchasePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comsumeAsyn error! code="

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

    .line 582
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;->this$0:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2715

    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->report(Landroid/content/Context;ILjava/lang/String;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V

    .line 583
    return-void

    .line 578
    :cond_50
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;->val$purchase:Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    .line 579
    invoke-virtual {v0}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public onSuccess(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V
    .registers 5
    .param p1, "purchaseData"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    .prologue
    .line 588
    const-string v1, "PurchasePresenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comsumeAsyn success! purchaseData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1d

    const-string v0, ""

    .line 589
    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {v1, v0}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void

    .line 589
    :cond_1d
    invoke-virtual {p1}, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 574
    check-cast p1, Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$6;->onSuccess(Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V

    return-void
.end method
