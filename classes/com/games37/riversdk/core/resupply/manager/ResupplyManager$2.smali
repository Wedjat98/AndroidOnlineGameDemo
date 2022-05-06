.class Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$2;
.super Ljava/lang/Object;
.source "ResupplyManager.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showReInGameDialog(Landroid/app/Activity;)V
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
    .line 131
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$2;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 140
    return-void
.end method

.method public onConfirm()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$2;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$2;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->doReInGameResupply(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$100(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V

    .line 136
    return-void
.end method
