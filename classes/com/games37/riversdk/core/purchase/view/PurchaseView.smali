.class public abstract Lcom/games37/riversdk/core/purchase/view/PurchaseView;
.super Lcom/games37/riversdk/core/view/IView;
.source "PurchaseView.java"

# interfaces
.implements Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;


# static fields
.field public static final GOOGLE_API_KEY:Ljava/lang/String; = "GOOGLE_API_KEY"

.field public static final PURCHASEINFO:Ljava/lang/String; = "PURCHASEINFO"

.field public static final TAG:Ljava/lang/String; = "PurchaseView"


# instance fields
.field protected mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/view/IView;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method protected static errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 5
    .param p0, "statusCode"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/SDKCallback;

    .prologue
    .line 171
    if-eqz p2, :cond_15

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 174
    const-string v1, "msg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_12
    invoke-virtual {p2, p0, v0}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 178
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 109
    :cond_9
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->onBackPressed()V

    .line 116
    :cond_9
    return-void
.end method

.method public onContactService()V
    .registers 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->onResupplyFailure()V

    .line 124
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    if-eqz v0, :cond_9

    .line 58
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->onCreate(Landroid/app/Activity;)V

    .line 60
    :cond_9
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->onDestroy(Landroid/app/Activity;)V

    .line 95
    :cond_9
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    if-eqz v0, :cond_9

    .line 79
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->onPause(Landroid/app/Activity;)V

    .line 81
    :cond_9
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->onRestart(Landroid/app/Activity;)V

    .line 102
    :cond_9
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->onResume(Landroid/app/Activity;)V

    .line 74
    :cond_9
    return-void
.end method

.method public onResupplyCancel()V
    .registers 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->onResupplyFailure()V

    .line 168
    return-void
.end method

.method public onResupplyFailure()V
    .registers 6

    .prologue
    .line 152
    iget-object v2, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mActivity:Landroid/app/Activity;

    const-string v4, "r1_network_error"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v2

    sget-object v3, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->PURCHASE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 155
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;)Lcom/games37/riversdk/core/callback/BaseCallback;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/core/callback/SDKCallback;

    .line 156
    .local v1, "purchaseCallback":Lcom/games37/riversdk/core/callback/SDKCallback;
    const/16 v2, 0x2711

    invoke-static {v2, v0, v1}, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 157
    iget-object v2, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 158
    iget-object v2, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 160
    :cond_2c
    return-void
.end method

.method public onResupplySuccess()V
    .registers 6

    .prologue
    .line 131
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v3

    sget-object v4, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->PURCHASE:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 132
    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;)Lcom/games37/riversdk/core/callback/BaseCallback;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/callback/SDKCallback;

    .line 134
    .local v0, "purchaseCallback":Lcom/games37/riversdk/core/callback/SDKCallback;
    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mBundle:Landroid/os/Bundle;

    const-string v4, "PURCHASEINFO"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-nez v3, :cond_39

    const/4 v1, 0x0

    .line 136
    .local v1, "purchaseInfo":Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    :goto_17
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v2, "succParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_27

    .line 138
    const-string v3, "productId"

    invoke-virtual {v1}, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_27
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 142
    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 143
    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 145
    :cond_38
    return-void

    .line 134
    .end local v1    # "purchaseInfo":Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
    .end local v2    # "succParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_39
    iget-object v3, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mBundle:Landroid/os/Bundle;

    const-string v4, "PURCHASEINFO"

    .line 135
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    move-object v1, v3

    goto :goto_17
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->onStart(Landroid/app/Activity;)V

    .line 67
    :cond_9
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    if-eqz v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->mPresenter:Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/purchase/presenter/PurchasePresenter;->onStop(Landroid/app/Activity;)V

    .line 88
    :cond_9
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/purchase/view/PurchaseView;->setVisibility(I)V

    .line 53
    return-void
.end method
