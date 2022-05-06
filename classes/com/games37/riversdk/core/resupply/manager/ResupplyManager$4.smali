.class Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$4;
.super Ljava/lang/Object;
.source "ResupplyManager.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showPurchaseDialog(Landroid/app/Activity;Lcom/games37/riversdk/core/resupply/model/ResupplyPurchaseInfo;)V
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
    .line 207
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$4;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$4;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 217
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$4;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v0}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;->onResupplyCancel()V

    .line 219
    :cond_11
    return-void
.end method

.method public onConfirm()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$4;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$4;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->doPurchaseResupply(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$400(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V

    .line 212
    return-void
.end method
