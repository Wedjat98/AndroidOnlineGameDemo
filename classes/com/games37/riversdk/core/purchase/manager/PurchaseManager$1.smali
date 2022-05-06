.class final Lcom/games37/riversdk/core/purchase/manager/PurchaseManager$1;
.super Lcom/games37/riversdk/core/callback/ShowViewCallback;
.source "PurchaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/purchase/manager/PurchaseManager;->setWebviewCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4

    .prologue
    .line 94
    iput p1, p0, Lcom/games37/riversdk/core/purchase/manager/PurchaseManager$1;->val$statusCode:I

    iput-object p2, p0, Lcom/games37/riversdk/core/purchase/manager/PurchaseManager$1;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/games37/riversdk/core/purchase/manager/PurchaseManager$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Lcom/games37/riversdk/core/callback/ShowViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewDismiss()V
    .registers 4

    .prologue
    .line 102
    iget v0, p0, Lcom/games37/riversdk/core/purchase/manager/PurchaseManager$1;->val$statusCode:I

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/manager/PurchaseManager$1;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/games37/riversdk/core/purchase/manager/PurchaseManager$1;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/core/purchase/manager/PurchaseManager;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 103
    return-void
.end method

.method public onViewShow()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method
