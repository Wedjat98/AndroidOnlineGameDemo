.class Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;
.super Ljava/lang/Object;
.source "ResupplyManager.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showRemind(Landroid/app/Activity;)V
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
    .line 305
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 321
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;->onResupplyFailure()V

    .line 326
    :cond_11
    :goto_11
    return-void

    .line 322
    :cond_12
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_11

    .line 324
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_11
.end method

.method public onConfirm()V
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 310
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;->onContactService()V

    .line 315
    :cond_11
    :goto_11
    return-void

    .line 311
    :cond_12
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_11

    .line 313
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_11
.end method
