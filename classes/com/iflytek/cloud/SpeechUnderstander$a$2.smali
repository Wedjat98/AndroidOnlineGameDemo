.class Lcom/iflytek/cloud/SpeechUnderstander$a$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/SpeechUnderstander$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/SpeechUnderstander$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/SpeechUnderstander$a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$2;->a:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$2;->a:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->c(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/cloud/SpeechUnderstanderListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6c

    :goto_e
    :pswitch_e
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_12
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$2;->a:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->c(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/cloud/SpeechUnderstanderListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_e

    :pswitch_20
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$2;->a:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->c(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/cloud/SpeechUnderstanderListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onVolumeChanged(I[B)V

    goto :goto_e

    :pswitch_32
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$2;->a:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->c(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/cloud/SpeechUnderstanderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onBeginOfSpeech()V

    goto :goto_e

    :pswitch_3c
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$2;->a:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->c(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/cloud/SpeechUnderstanderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onEndOfSpeech()V

    goto :goto_e

    :pswitch_46
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$2;->a:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->c(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/cloud/SpeechUnderstanderListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/UnderstanderResult;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onResult(Lcom/iflytek/cloud/UnderstanderResult;)V

    goto :goto_e

    :pswitch_54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$2;->a:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->c(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/cloud/SpeechUnderstanderListener;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_e

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_20
        :pswitch_32
        :pswitch_3c
        :pswitch_46
        :pswitch_e
        :pswitch_54
    .end packed-switch
.end method
