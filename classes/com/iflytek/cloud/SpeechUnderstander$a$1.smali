.class Lcom/iflytek/cloud/SpeechUnderstander$a$1;
.super Lcom/iflytek/speech/SpeechUnderstanderListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cloud/SpeechUnderstander$a;-><init>(Lcom/iflytek/cloud/SpeechUnderstander;Lcom/iflytek/cloud/SpeechUnderstanderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/SpeechUnderstander;

.field final synthetic b:Lcom/iflytek/cloud/SpeechUnderstander$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/SpeechUnderstander$a;Lcom/iflytek/cloud/SpeechUnderstander;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    invoke-direct {p0}, Lcom/iflytek/speech/SpeechUnderstanderListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEndOfSpeech()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onResult(Lcom/iflytek/speech/UnderstanderResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Lcom/iflytek/cloud/UnderstanderResult;

    invoke-virtual {p1}, Lcom/iflytek/speech/UnderstanderResult;->getResultString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/iflytek/cloud/UnderstanderResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onVolumeChanged(I[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander$a$1;->b:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->b(Lcom/iflytek/cloud/SpeechUnderstander$a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
