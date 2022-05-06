.class Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread$1;
.super Landroid/os/Handler;
.source "UpdateEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread$1;->this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;

    .line 267
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread$1;->this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;

    iget-boolean v0, v0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->interrupt:Z

    if-eqz v0, :cond_7

    .line 288
    :goto_6
    return-void

    .line 274
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    goto :goto_6

    .line 276
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ledo/fantasy/update/AsynFileDownloader;->OnDownloadSuc(Ljava/lang/String;)V

    goto :goto_6

    .line 280
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ledo/fantasy/update/AsynFileDownloader;->OnDownloadFailed(Ljava/lang/String;)V

    goto :goto_6

    .line 284
    :pswitch_1d
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ledo/fantasy/update/AsynFileDownloader;->OnDownloadSizeChanged(ILjava/lang/String;)V

    goto :goto_6

    .line 274
    nop

    :pswitch_data_28
    .packed-switch 0xb
        :pswitch_d
        :pswitch_15
        :pswitch_1d
    .end packed-switch
.end method
