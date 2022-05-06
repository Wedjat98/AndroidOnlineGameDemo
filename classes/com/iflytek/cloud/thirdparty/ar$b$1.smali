.class Lcom/iflytek/cloud/thirdparty/ar$b$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/ar$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/ar$b;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/ar$b;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ar$b$1;->a:Lcom/iflytek/cloud/thirdparty/ar$b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$b$1;->a:Lcom/iflytek/cloud/thirdparty/ar$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar$b;->a(Lcom/iflytek/cloud/thirdparty/ar$b;)Lcom/iflytek/cloud/WakeuperListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_68

    :cond_e
    :goto_e
    :pswitch_e
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_12
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$b$1;->a:Lcom/iflytek/cloud/thirdparty/ar$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar$b;->a(Lcom/iflytek/cloud/thirdparty/ar$b;)Lcom/iflytek/cloud/WakeuperListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/WakeuperListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_e

    :pswitch_20
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$b$1;->a:Lcom/iflytek/cloud/thirdparty/ar$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar$b;->a(Lcom/iflytek/cloud/thirdparty/ar$b;)Lcom/iflytek/cloud/WakeuperListener;

    move-result-object v0

    instance-of v0, v0, Lcom/iflytek/cloud/thirdparty/ar$b;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$b$1;->a:Lcom/iflytek/cloud/thirdparty/ar$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar$b;->a(Lcom/iflytek/cloud/thirdparty/ar$b;)Lcom/iflytek/cloud/WakeuperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/WakeuperListener;->onBeginOfSpeech()V

    goto :goto_e

    :pswitch_34
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$b$1;->a:Lcom/iflytek/cloud/thirdparty/ar$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar$b;->a(Lcom/iflytek/cloud/thirdparty/ar$b;)Lcom/iflytek/cloud/WakeuperListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/WakeuperResult;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/WakeuperListener;->onResult(Lcom/iflytek/cloud/WakeuperResult;)V

    goto :goto_e

    :pswitch_42
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ar$b$1;->a:Lcom/iflytek/cloud/thirdparty/ar$b;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ar$b;->a(Lcom/iflytek/cloud/thirdparty/ar$b;)Lcom/iflytek/cloud/WakeuperListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/WakeuperListener;->onVolumeChanged(I)V

    goto :goto_e

    :pswitch_4e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ar$b$1;->a:Lcom/iflytek/cloud/thirdparty/ar$b;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ar$b;->a(Lcom/iflytek/cloud/thirdparty/ar$b;)Lcom/iflytek/cloud/WakeuperListener;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/WakeuperListener;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_e

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_12
        :pswitch_e
        :pswitch_20
        :pswitch_e
        :pswitch_34
        :pswitch_42
        :pswitch_4e
    .end packed-switch
.end method
