.class Lcom/iflytek/cloud/TextUnderstander$a$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/TextUnderstander$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/TextUnderstander$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/TextUnderstander$a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/TextUnderstander$a$2;->a:Lcom/iflytek/cloud/TextUnderstander$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander$a$2;->a:Lcom/iflytek/cloud/TextUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/TextUnderstander$a;->c(Lcom/iflytek/cloud/TextUnderstander$a;)Lcom/iflytek/cloud/TextUnderstanderListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_2e

    :goto_e
    :sswitch_e
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_8

    :sswitch_12
    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander$a$2;->a:Lcom/iflytek/cloud/TextUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/TextUnderstander$a;->c(Lcom/iflytek/cloud/TextUnderstander$a;)Lcom/iflytek/cloud/TextUnderstanderListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/TextUnderstanderListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_e

    :sswitch_20
    iget-object v0, p0, Lcom/iflytek/cloud/TextUnderstander$a$2;->a:Lcom/iflytek/cloud/TextUnderstander$a;

    invoke-static {v0}, Lcom/iflytek/cloud/TextUnderstander$a;->c(Lcom/iflytek/cloud/TextUnderstander$a;)Lcom/iflytek/cloud/TextUnderstanderListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/UnderstanderResult;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/TextUnderstanderListener;->onResult(Lcom/iflytek/cloud/UnderstanderResult;)V

    goto :goto_e

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_12
        0x4 -> :sswitch_20
        0x6 -> :sswitch_e
    .end sparse-switch
.end method
