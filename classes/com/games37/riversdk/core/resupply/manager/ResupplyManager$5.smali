.class Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;
.super Ljava/lang/Object;
.source "ResupplyManager.java"

# interfaces
.implements Lcom/games37/riversdk/core/resupply/callback/ResupplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->doPurchaseResupply(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResupplyCancel()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 256
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;->onResupplyCancel()V

    .line 260
    :cond_11
    :goto_11
    return-void

    .line 257
    :cond_12
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_11

    .line 258
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_11
.end method

.method public onResupplyFailure()V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showRemindDialog(Landroid/app/Activity;)V

    .line 250
    return-void
.end method

.method public onResupplySuccess()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 240
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;->onResupplySuccess()V

    .line 244
    :cond_11
    :goto_11
    return-void

    .line 241
    :cond_12
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_11

    .line 242
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_11
.end method
