.class final Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;
.super Ljava/lang/Object;
.source "GM99PurchaseManagerImpl.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->showUpgradeDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

.field final synthetic val$cancelText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 262
    iput-object p1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;->val$cancelText:Ljava/lang/String;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 272
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;->val$cancelText:Ljava/lang/String;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->access$700(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 273
    return-void
.end method

.method public onConfirm()V
    .registers 4

    .prologue
    .line 266
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;->val$cancelText:Ljava/lang/String;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->setWebviewCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl;->access$600(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 267
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/manager/GM99PurchaseManagerImpl$4;->val$activity:Landroid/app/Activity;

    sget-object v1, Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;->UPDATE:Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/gm99/utils/GM99WebViewUtil;->openWebView(Landroid/app/Activity;Lcom/games37/riversdk/core/webveiew/utils/WebViewUtil$WebType;Landroid/os/Bundle;)V

    .line 268
    return-void
.end method
