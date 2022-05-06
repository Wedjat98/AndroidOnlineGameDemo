.class Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;

.field final synthetic val$inv_f:Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;

.field final synthetic val$result_f:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;)V
    .registers 4
    .param p1, "this$1"    # Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2$1;->this$1:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;

    iput-object p2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2$1;->val$result_f:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    iput-object p3, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2$1;->val$inv_f:Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 711
    iget-object v0, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2$1;->this$1:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;

    iget-object v0, v0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2;->val$listener:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2$1;->val$result_f:Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;

    iget-object v2, p0, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$2$1;->val$inv_f:Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;Lcom/games37/riversdk/functions/googleplay/billing/lib/Inventory;)V

    .line 712
    return-void
.end method
