.class final Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;
.super Ljava/lang/Object;
.source "GM99PurchaseManagerImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->showChooseRechargeModeDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

.field final synthetic val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4

    .prologue
    .line 129
    iput-object p1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    .prologue
    .line 150
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$activity:Landroid/app/Activity;

    const-string v3, "a1_sdk_cancel_text"

    .line 151
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 150
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "cancelText":Ljava/lang/String;
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v1, v0, v2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->access$200(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 153
    return-void
.end method

.method public onGooglePlayPayment()V
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$purchaseInfo:Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;

    # invokes: Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->openPurchaseActivity(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V
    invoke-static {v0, v1}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->access$000(Landroid/app/Activity;Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;)V

    .line 134
    return-void
.end method

.method public onThridPayment()V
    .registers 6

    .prologue
    .line 139
    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$activity:Landroid/app/Activity;

    const-string v4, "r1_thrid_payment_close"

    .line 140
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 139
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "msg":Ljava/lang/String;
    const/16 v2, 0x2717

    iget-object v3, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->setWebviewCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v2, v0, v3}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->access$100(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 143
    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$activity:Landroid/app/Activity;

    sget-object v3, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->RECHARGE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->wrapperSessionRequestURL(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "withSessionURL":Ljava/lang/String;
    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openWebView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 146
    return-void
.end method
