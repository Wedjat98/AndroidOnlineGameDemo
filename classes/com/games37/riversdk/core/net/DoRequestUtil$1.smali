.class final Lcom/games37/riversdk/core/net/DoRequestUtil$1;
.super Landroid/os/Handler;
.source "DoRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/net/DoRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_f

    const-string v0, ""

    .line 79
    .local v0, "tag":Ljava/lang/String;
    :goto_9
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    .line 91
    :goto_e
    return-void

    .line 78
    .end local v0    # "tag":Ljava/lang/String;
    :cond_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 82
    .restart local v0    # "tag":Ljava/lang/String;
    :pswitch_16
    # invokes: Lcom/games37/riversdk/core/net/DoRequestUtil;->showProgress(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/games37/riversdk/core/net/DoRequestUtil;->access$000(Ljava/lang/String;)V

    goto :goto_e

    .line 86
    :pswitch_1a
    # invokes: Lcom/games37/riversdk/core/net/DoRequestUtil;->dismissProgress(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/games37/riversdk/core/net/DoRequestUtil;->access$100(Ljava/lang/String;)V

    goto :goto_e

    .line 79
    :pswitch_data_1e
    .packed-switch 0x2710
        :pswitch_16
        :pswitch_1a
    .end packed-switch
.end method
