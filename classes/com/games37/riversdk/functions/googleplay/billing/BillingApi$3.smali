.class Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$3;
.super Ljava/lang/Object;
.source "BillingApi.java"

# interfaces
.implements Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$purchaseCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Landroid/app/Activity;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$3;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$3;->val$purchaseCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;)V
    .registers 6
    .param p1, "result"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    .param p2, "info"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$3;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$3;->val$purchaseCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    # invokes: Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->handlePurchaseResult(Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    invoke-static {v0, v1, p1, p2, v2}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->access$200(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Landroid/app/Activity;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V

    .line 242
    return-void
.end method
