.class Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;
.super Ljava/lang/Object;
.source "GM99PurchaseView.java"

# interfaces
.implements Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter$PurchaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->purchase(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$purchaseCallback:Lcom/games37/riversdk/core/callback/SDKCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;Lcom/games37/riversdk/core/callback/SDKCallback;Landroid/app/Activity;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->this$0:Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$purchaseCallback:Lcom/games37/riversdk/core/callback/SDKCallback;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/util/Map;)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_15

    .line 93
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->this$0:Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;

    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->hide()V

    .line 94
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->this$0:Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;

    # getter for: Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;
    invoke-static {v1}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->access$100(Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;)Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->this$0:Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;

    invoke-virtual {v1, v2, p3, v3}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->doResupply(Landroid/app/Activity;Ljava/util/Map;Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;)V

    .line 104
    :cond_14
    :goto_14
    return-void

    .line 96
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v1, "GM99PurchaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purchase onError msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$purchaseCallback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {p1, p2, v1}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->access$200(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 100
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 101
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_14
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v1, "GM99PurchaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purchase onFailure msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$purchaseCallback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {p1, p2, v1}, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView;->access$000(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 84
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 85
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 87
    :cond_47
    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .registers 9
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
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .line 109
    iget-object v5, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$purchaseCallback:Lcom/games37/riversdk/core/callback/SDKCallback;

    if-eqz v5, :cond_38

    if-eqz p1, :cond_38

    .line 111
    const-string v5, "ISLAST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, "isLastObj":Ljava/lang/Object;
    if-nez v1, :cond_39

    move v0, v4

    .line 114
    .end local v1    # "isLastObj":Ljava/lang/Object;
    .local v0, "isLast":Z
    :goto_10
    const-string v5, "productId"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "productId":Ljava/lang/Object;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v3, "succParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "productId"

    if-nez v2, :cond_40

    const-string v5, ""

    :goto_21
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v5, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$purchaseCallback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-virtual {v5, v4, v3}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 120
    if-eqz v0, :cond_38

    iget-object v4, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 121
    iget-object v4, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99PurchaseView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 124
    .end local v0    # "isLast":Z
    .end local v2    # "productId":Ljava/lang/Object;
    .end local v3    # "succParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_38
    return-void

    .line 112
    .restart local v1    # "isLastObj":Ljava/lang/Object;
    :cond_39
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "isLastObj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_10

    .line 117
    .restart local v0    # "isLast":Z
    .restart local v2    # "productId":Ljava/lang/Object;
    .restart local v3    # "succParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_40
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_21
.end method
