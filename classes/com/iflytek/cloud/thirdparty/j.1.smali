.class public Lcom/iflytek/cloud/thirdparty/j;
.super Lcom/iflytek/cloud/thirdparty/A;

# interfaces
.implements Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# static fields
.field public static a:I

.field public static b:I

.field private static m:Ljava/lang/Boolean;


# instance fields
.field c:J

.field d:J

.field protected e:I

.field protected f:Lcom/iflytek/cloud/thirdparty/i;

.field protected g:Lcom/iflytek/cloud/record/PcmRecorder;

.field protected h:Lcom/iflytek/cloud/thirdparty/C;

.field protected i:Ljava/lang/String;

.field protected j:[B

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field private volatile n:Lcom/iflytek/cloud/EvaluatorListener;

.field private o:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private p:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Lcom/iflytek/cloud/thirdparty/B$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/cloud/thirdparty/j;->a:I

    sput v0, Lcom/iflytek/cloud/thirdparty/j;->b:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/j;->m:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V
    .registers 10

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/thirdparty/A;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/j;->c:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/j;->d:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/j;->e:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/i;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/i;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/C;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/C;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->h:Lcom/iflytek/cloud/thirdparty/C;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->j:[B

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->q:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/j;->y:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/B$a;->c:Lcom/iflytek/cloud/thirdparty/B$a;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->z:Lcom/iflytek/cloud/thirdparty/B$a;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->q:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/j;->y:Z

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/j;->a(Lcom/iflytek/cloud/thirdparty/af;)V

    return-void
.end method

.method private a([BI)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->u()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    invoke-interface {v0, p2, p1}, Lcom/iflytek/cloud/EvaluatorListener;->onVolumeChanged(I[B)V

    :cond_f
    return-void
.end method

.method private a([BZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/i;->a([BI)V

    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/i;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/j;->j()V

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/i;->c()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/cloud/thirdparty/j;->a([BI)V

    goto :goto_14
.end method

.method private d(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/j;->v:J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/i;->d()[B

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/i;->d()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->q:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/i;->d()[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/j;->c(Z)V

    return-void
.end method

.method private h()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "--->onStoped: in"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->u()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/j;->k()V

    :cond_e
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/i;->a()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->p()V

    const-string v0, "--->onStoped: out"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/i;->e()Lcom/iflytek/cloud/thirdparty/B$a;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->z:Lcom/iflytek/cloud/thirdparty/B$a;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/j$1;->a:[I

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/B$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1e

    :goto_13
    :pswitch_13
    return-void

    :pswitch_14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/j;->d(Z)V

    goto :goto_13

    :pswitch_19
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/j;->d(Z)V

    goto :goto_13

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method

.method private j()V
    .registers 3

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    const-string v0, "Ise Msc vadEndCall"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/j;->a(Z)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/EvaluatorListener;->onEndOfSpeech()V

    :cond_1a
    return-void
.end method

.method private k()V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "record_force_stop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    :cond_17
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v8, 0x9

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "--->onStart: in"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "net_check"

    invoke-virtual {v0, v1, v6}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/V;->b(Landroid/content/Context;)V

    :cond_1b
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "record_read_rate"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "audio_source"

    invoke-virtual {v1, v2, v6}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/j;->e:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/j;->e:I

    if-eq v1, v7, :cond_63

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->u()Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v1, "start  record"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/j;->e:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_8d

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "ise_source_path"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/cloud/record/a;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->t()I

    move-result v3

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/j;->e:I

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/iflytek/cloud/record/a;-><init>(IIILjava/lang/String;)V

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    :goto_5e
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    :cond_63
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v0, v1, :cond_74

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/EvaluatorListener;->onBeginOfSpeech()V

    :cond_74
    invoke-virtual {p0, v8}, Lcom/iflytek/cloud/thirdparty/j;->removeMessages(I)V

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/j;->r:I

    if-eq v7, v0, :cond_82

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/j;->r:I

    invoke-virtual {p0, v8, v0, v5, v1}, Lcom/iflytek/cloud/thirdparty/j;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    :cond_82
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v6, v0, v5, v5}, Lcom/iflytek/cloud/thirdparty/j;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    const-string v0, "--->onStart: out"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :cond_8d
    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->t()I

    move-result v2

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/j;->e:I

    invoke-direct {v1, v2, v0, v3}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    goto :goto_5e
.end method

.method protected a(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->a()V

    goto :goto_8

    :pswitch_d
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->b()V

    goto :goto_8

    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/j;->b(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_15
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/j;->h()V

    goto :goto_8

    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/j;->c(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_1d
    const-string v0, "--->on timeout vad"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/j;->j()V

    goto :goto_8

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1d
    .end packed-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "--->onEnd: in"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/j;->k()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->f()Ljava/lang/String;

    const-string v0, "SessionEndBegin"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/j;->u:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/i;->a(Ljava/lang/String;)V

    :goto_1d
    const-string v0, "SessionEndEnd"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/j;->u:Z

    if-eqz v0, :cond_5c

    :cond_2d
    :goto_2d
    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    const-string v0, "--->onEnd: out"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :cond_35
    if-eqz p1, :cond_54

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/i;->a(Ljava/lang/String;)V

    goto :goto_1d

    :cond_54
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/i;->a(Ljava/lang/String;)V

    goto :goto_1d

    :cond_5c
    const-string v0, "VerifyListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2d

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    const/16 v2, 0x4e21

    invoke-interface {v1, v2, v4, v4, v0}, Lcom/iflytek/cloud/EvaluatorListener;->onEvent(IIILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/EvaluatorListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_2d
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/j;->m:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/j;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/j;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "user_model_id"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    const-string v0, "startListening called"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->a_()V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/j;->m:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/j;->j:[B

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/j;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "user_model_id"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    const-string v0, "startListening called"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->a_()V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)Z
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v1, v2, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecognize fail  status is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_42

    :goto_24
    monitor-exit p0

    return v0

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "record_force_stop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    :cond_3a
    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/j;->y:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/j;->b(I)V
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_42

    const/4 v0, 0x1

    goto :goto_24

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/i;->a:[C

    if-nez v0, :cond_15

    const-string v0, "SDKSessionBegin"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/j;->t:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, p0}, Lcom/iflytek/cloud/thirdparty/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/A;)I

    :cond_15
    sget-object v0, Lcom/iflytek/cloud/thirdparty/j;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "1"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    const-string v3, "text_bom"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->j:[B

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/O;->a([B)[B

    move-result-object v0

    :goto_35
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/j;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_76

    :goto_3f
    invoke-virtual {v2, v0, v1}, Lcom/iflytek/cloud/thirdparty/i;->a([B[B)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/j;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    const/4 v0, 0x4

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/j;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void

    :cond_51
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->j:[B

    goto :goto_35

    :cond_54
    const-string v0, "1"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    const-string v3, "text_bom"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/O;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_35

    :cond_6d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->k:Ljava/lang/String;

    const-string v2, "gb2312"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_35

    :cond_76
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->i:Ljava/lang/String;

    const-string v3, "gb2312"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_3f
.end method

.method protected b(Landroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_b

    array-length v1, v0

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "ise_audio_path"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_21
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/j;->a([BZ)V

    goto :goto_b
.end method

.method public b(Z)V
    .registers 5

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->u()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/EvaluatorListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_18
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/j;->k()V

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->b(Z)V

    return-void
.end method

.method protected c()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "speech_timeout"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/j;->r:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpeechTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/j;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const-string v0, "utf-8"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "text_encoding"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "text_bom"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_59
    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/A;->c()V

    return-void

    :cond_5d
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "text_bom"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_59
.end method

.method c(Landroid/os/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x4

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/j;->i()V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/B$a;->c:Lcom/iflytek/cloud/thirdparty/B$a;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->z:Lcom/iflytek/cloud/thirdparty/B$a;

    if-ne v0, v1, :cond_13

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/j;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    sget-object v0, Lcom/iflytek/cloud/thirdparty/B$a;->a:Lcom/iflytek/cloud/thirdparty/B$a;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->z:Lcom/iflytek/cloud/thirdparty/B$a;

    if-ne v0, v1, :cond_12

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/j;->b(I)V

    goto :goto_12
.end method

.method public c(Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msc result time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "rse"

    const-string v2, "gb2312"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/i;->d()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/EvaluatorResult;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/EvaluatorResult;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    if-eqz v1, :cond_5b

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    const/16 v3, 0x4e21

    invoke-interface {v2, v3, v4, v4, v1}, Lcom/iflytek/cloud/EvaluatorListener;->onEvent(IIILandroid/os/Bundle;)V

    const-string v1, "GetNotifyResult"

    invoke-static {v1, v5}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->n:Lcom/iflytek/cloud/EvaluatorListener;

    invoke-interface {v1, v0, p1}, Lcom/iflytek/cloud/EvaluatorListener;->onResult(Lcom/iflytek/cloud/EvaluatorResult;Z)V

    :cond_5b
    if-eqz p1, :cond_60

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/j;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_60
    return-void
.end method

.method public d()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/j;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_10
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/i;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->f:Lcom/iflytek/cloud/thirdparty/i;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/i;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    const-string v0, "ise"

    return-object v0
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/j;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public onRecordBuffer([BII)V
    .registers 6

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/j;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v1

    if-eq v0, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-lez p3, :cond_8

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/j;->d(Landroid/os/Message;)V

    goto :goto_8
.end method

.method public onRecordReleased()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/j;->g:Lcom/iflytek/cloud/record/PcmRecorder;

    instance-of v0, v0, Lcom/iflytek/cloud/record/a;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/j;->a(Z)Z

    :cond_e
    return-void
.end method

.method public onRecordStarted(Z)V
    .registers 2

    return-void
.end method
