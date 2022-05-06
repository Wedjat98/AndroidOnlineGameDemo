.class Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;
.super Ljava/lang/Object;
.source "BillingApi.java"

# interfaces
.implements Lcom/games37/riversdk/functions/callback/FunctionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->requestGoogleSkuDetail(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

.field final synthetic val$skuList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Lcom/games37/riversdk/functions/callback/FunctionCallback;Landroid/app/Activity;Ljava/util/List;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;->val$callback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;->val$skuList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;->val$callback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/functions/callback/FunctionCallback;->onFailure(ILjava/lang/String;)V

    .line 448
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .registers 6
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;->val$skuList:Ljava/util/List;

    iget-object v3, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;->val$callback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->getSkuDetail(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V

    .line 453
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 444
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$6;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
