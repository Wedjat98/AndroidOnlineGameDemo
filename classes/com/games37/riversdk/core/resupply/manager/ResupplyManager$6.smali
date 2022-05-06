.class Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$6;
.super Ljava/lang/Object;
.source "ResupplyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showRemindDialog(Landroid/app/Activity;)V
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
    .line 274
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$6;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$6;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$6;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showRemind(Landroid/app/Activity;)V
    invoke-static {v1, v2}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$500(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 285
    :cond_7
    :goto_7
    return-void

    .line 279
    :catch_8
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$6;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 282
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$6;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    # getter for: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->mAction:Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;
    invoke-static {v1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$300(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;)Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;

    move-result-object v1

    invoke-interface {v1}, Lcom/games37/riversdk/core/resupply/callback/OnContactServiceAction;->onResupplyFailure()V

    goto :goto_7
.end method
