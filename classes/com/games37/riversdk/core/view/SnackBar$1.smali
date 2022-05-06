.class Lcom/games37/riversdk/core/view/SnackBar$1;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/view/SnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/view/SnackBar;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/view/SnackBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/view/SnackBar;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/games37/riversdk/core/view/SnackBar$1;->this$0:Lcom/games37/riversdk/core/view/SnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/games37/riversdk/core/view/SnackBar$1;->this$0:Lcom/games37/riversdk/core/view/SnackBar;

    # getter for: Lcom/games37/riversdk/core/view/SnackBar;->mTimer:I
    invoke-static {v1}, Lcom/games37/riversdk/core/view/SnackBar;->access$000(Lcom/games37/riversdk/core/view/SnackBar;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_17

    .line 127
    :goto_a
    iget-object v1, p0, Lcom/games37/riversdk/core/view/SnackBar$1;->this$0:Lcom/games37/riversdk/core/view/SnackBar;

    iget-object v1, v1, Lcom/games37/riversdk/core/view/SnackBar;->handler:Landroid/os/Handler;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void

    .line 124
    :catch_17
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a
.end method
