.class Lcom/iflytek/cloud/thirdparty/ar$c$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/ar$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/ar$c;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/ar$c;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ar$c$1;->a:Lcom/iflytek/cloud/thirdparty/ar$c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c$1;->a:Lcom/iflytek/cloud/thirdparty/ar$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar$c;->a(Lcom/iflytek/cloud/thirdparty/ar$c;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    :goto_e
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_12
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c$1;->a:Lcom/iflytek/cloud/thirdparty/ar$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar$c;->a(Lcom/iflytek/cloud/thirdparty/ar$c;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/RequestListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_e

    :pswitch_22
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c$1;->a:Lcom/iflytek/cloud/thirdparty/ar$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar$c;->a(Lcom/iflytek/cloud/thirdparty/ar$c;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/RequestListener;->onBufferReceived([B)V

    goto :goto_e

    :pswitch_32
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$c$1;->a:Lcom/iflytek/cloud/thirdparty/ar$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar$c;->a(Lcom/iflytek/cloud/thirdparty/ar$c;)Lcom/iflytek/cloud/RequestListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/RequestListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_e

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_12
        :pswitch_22
        :pswitch_32
    .end packed-switch
.end method
