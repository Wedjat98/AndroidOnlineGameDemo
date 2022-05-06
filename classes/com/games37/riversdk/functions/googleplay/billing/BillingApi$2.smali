.class Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;
.super Ljava/lang/Object;
.source "BillingApi.java"

# interfaces
.implements Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->queryInventory(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$product_id:Ljava/lang/String;

.field final synthetic val$queryCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;->val$product_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;->val$queryCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;)V
    .registers 9
    .param p1, "result"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;
    .param p2, "inv"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;->this$0:Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;

    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;->val$product_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi$2;->val$queryCallback:Lcom/games37/riversdk/functions/callback/FunctionCallback;

    move-object v3, p1

    move-object v4, p2

    # invokes: Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->handleQueryResult(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;->access$100(Lcom/games37/riversdk/functions/googleplay/billing/BillingApi;Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;Lcom/games37/riversdk/functions/callback/FunctionCallback;)V

    .line 133
    return-void
.end method
