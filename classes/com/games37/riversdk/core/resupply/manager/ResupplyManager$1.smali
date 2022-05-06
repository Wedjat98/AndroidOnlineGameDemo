.class Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$1;
.super Ljava/lang/Object;
.source "ResupplyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showReInGameResupplyDialog(Landroid/app/Activity;)V
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
    .line 104
    iput-object p1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$1;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iput-object p2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$1;->this$0:Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;

    iget-object v2, p0, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->showReInGameDialog(Landroid/app/Activity;)V
    invoke-static {v1, v2}, Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;->access$000(Lcom/games37/riversdk/core/resupply/manager/ResupplyManager;Landroid/app/Activity;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 112
    :goto_7
    return-void

    .line 109
    :catch_8
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method
