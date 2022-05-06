.class Lcom/iflytek/cloud/SpeechSynthesizer$a$1;
.super Lcom/iflytek/speech/SynthesizerListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cloud/SpeechSynthesizer$a;-><init>(Lcom/iflytek/cloud/SpeechSynthesizer;Lcom/iflytek/cloud/SynthesizerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/SpeechSynthesizer;

.field final synthetic b:Lcom/iflytek/cloud/SpeechSynthesizer$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/SpeechSynthesizer$a;Lcom/iflytek/cloud/SpeechSynthesizer;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->a:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-direct {p0}, Lcom/iflytek/speech/SynthesizerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgress(IIILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_39

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "percent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "begpos"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "endpos"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "spellinfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->b(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_39
    return-void
.end method

.method public onCompleted(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->b(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    if-nez p1, :cond_1a

    const/4 v0, 0x0

    :goto_12
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_19
    return-void

    :cond_1a
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    goto :goto_12
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iput v3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->b(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_23
    return-void
.end method

.method public onSpeakBegin()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->b(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method

.method public onSpeakPaused()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->b(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method

.method public onSpeakProgress(III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->b(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1a
    return-void
.end method

.method public onSpeakResumed()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a$1;->b:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->b(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    return-void
.end method
