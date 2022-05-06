.class Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;
.super Ljava/lang/Object;
.source "ResupplyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showPurchaseResupplyDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$purchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;->val$purchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;->val$purchaseInfo:Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;

    # invokes: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showPurchaseDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V
    invoke-static {v1, v2, v3}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$200(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 184
    :cond_9
    :goto_9
    return-void

    .line 178
    :catch_a
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 181
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$3;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v1

    invoke-interface {v1}, Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;->onResupplyFailure()V

    goto :goto_9
.end method
