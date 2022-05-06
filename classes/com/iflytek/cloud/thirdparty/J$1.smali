.class Lcom/iflytek/cloud/thirdparty/J$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/J;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/J;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    iput-object p1, v1, Lcom/iflytek/cloud/thirdparty/J;->i:Lcom/iflytek/cloud/SpeechError;

    if-nez p1, :cond_43

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/iflytek/cloud/thirdparty/J;->g:Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/J;->e(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/J;->f(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/A;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "audio_format"

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_24
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/J;->c(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/record/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/record/b;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/J;->g(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/J$a;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/J;->g(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/J$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/thirdparty/J$a;->a()V

    const-string v0, "onCompleted NextSession pause"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/J;->h(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/thirdparty/A;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/A;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/J;->b(Lcom/iflytek/cloud/thirdparty/J;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/J;->a(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_8e

    if-eqz p1, :cond_8e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/J;->b(Lcom/iflytek/cloud/thirdparty/J;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/J;->i(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/record/c;

    move-result-object v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/J;->i(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/record/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->e()V

    :cond_8e
    return-void
.end method

.method public a(Ljava/util/ArrayList;IIILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "percent"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "begpos"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "endpos"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "spellinfo"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/J;->a(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/J;->b(Lcom/iflytek/cloud/thirdparty/J;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/J;->c(Lcom/iflytek/cloud/thirdparty/J;)Lcom/iflytek/cloud/record/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/record/b;->a(Ljava/util/ArrayList;III)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/J;->d(Lcom/iflytek/cloud/thirdparty/J;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3d} :catch_3e

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e2a

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    iput-object v1, v0, Lcom/iflytek/cloud/thirdparty/J;->i:Lcom/iflytek/cloud/SpeechError;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/J;->b(Lcom/iflytek/cloud/thirdparty/J;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    iget-object v2, v2, Lcom/iflytek/cloud/thirdparty/J;->i:Lcom/iflytek/cloud/SpeechError;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/J$1;->a:Lcom/iflytek/cloud/thirdparty/J;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/J;->cancel(Z)V

    goto :goto_3d
.end method
