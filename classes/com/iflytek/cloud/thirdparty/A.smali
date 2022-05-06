.class public abstract Lcom/iflytek/cloud/thirdparty/A;
.super Landroid/os/Handler;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/as$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/A$a;,
        Lcom/iflytek/cloud/thirdparty/A$b;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/cloud/thirdparty/af;

.field private volatile b:Lcom/iflytek/cloud/thirdparty/A$b;

.field private c:Landroid/os/HandlerThread;

.field protected r:I

.field public s:I

.field protected t:Landroid/content/Context;

.field protected volatile u:Z

.field protected v:J

.field protected w:I

.field protected final x:Lcom/iflytek/cloud/thirdparty/as;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0xea60

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->r:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->t:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/af;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/af;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/A;->u:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->a:Lcom/iflytek/cloud/thirdparty/A$b;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/A;->v:J

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->w:I

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/as;->a(Lcom/iflytek/cloud/thirdparty/as$a;)Lcom/iflytek/cloud/thirdparty/as;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->x:Lcom/iflytek/cloud/thirdparty/as;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/A;->t:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/A;->u:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0xea60

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->r:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->t:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/af;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/af;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/A;->u:Z

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->a:Lcom/iflytek/cloud/thirdparty/A$b;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/A;->v:J

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->w:I

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/as;->a(Lcom/iflytek/cloud/thirdparty/as$a;)Lcom/iflytek/cloud/thirdparty/as;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->x:Lcom/iflytek/cloud/thirdparty/as;

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/A;->c:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/A;->t:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/A;->u:Z

    return-void
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->x()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->c:Landroid/os/HandlerThread;

    :cond_13
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 3

    const-string v0, "local"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->e()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method protected a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    return-void
.end method

.method protected a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V
    .registers 7

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->f:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    if-ne v0, v1, :cond_2b

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send msg failed while status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :goto_2a
    return-void

    :cond_2b
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_58

    :goto_30
    if-eqz p3, :cond_37

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->removeMessages(I)V

    :cond_37
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    if-ne p2, v0, :cond_53

    if-gtz p4, :cond_53

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2a

    :sswitch_41
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    goto :goto_30

    :sswitch_47
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->d:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    goto :goto_30

    :sswitch_4d
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    goto :goto_30

    :cond_53
    int-to-long v0, p4

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/cloud/thirdparty/A;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2a

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_41
        0x3 -> :sswitch_47
        0x15 -> :sswitch_4d
    .end sparse-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 3

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->f:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->x()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ae;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ae;->b()V

    return-void
.end method

.method protected declared-synchronized a(Lcom/iflytek/cloud/thirdparty/A$b;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "curStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",setStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->f:Lcom/iflytek/cloud/thirdparty/A$b;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_54

    if-ne v0, v1, :cond_2b

    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    if-ne v0, v1, :cond_35

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->f:Lcom/iflytek/cloud/thirdparty/A$b;

    if-ne p1, v0, :cond_29

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/A;->v:J
    :try_end_53
    .catchall {:try_start_2b .. :try_end_53} :catchall_54

    goto :goto_29

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/iflytek/cloud/thirdparty/af;)V
    .registers 3

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/af;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->c()V

    return-void
.end method

.method protected a_()V
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->x:Lcom/iflytek/cloud/thirdparty/as;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/as;->b()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_c

    :goto_6
    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/iflytek/cloud/thirdparty/A;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void

    :catch_c
    move-exception v0

    const-string v1, "DC exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method protected b(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method protected declared-synchronized b(Lcom/iflytek/cloud/SpeechError;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_6

    :try_start_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->x()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->x:Lcom/iflytek/cloud/thirdparty/as;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/as;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_16
    .catchall {:try_start_6 .. :try_end_b} :catchall_20

    :goto_b
    const/16 v0, 0x15

    :try_start_d
    invoke-virtual {p0, v0, p1}, Lcom/iflytek/cloud/thirdparty/A;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->d(Landroid/os/Message;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_20

    monitor-exit p0

    return-void

    :catch_16
    move-exception v0

    :try_start_17
    const-string v1, "DC exception:"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_b

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/A;->u:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->x()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method protected c()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "timeout"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/A;->w:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->w:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "sample_rate"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/A;->s:I

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/A;->s:I

    return-void
.end method

.method protected d(Landroid/os/Message;)V
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16c

    const/4 v1, 0x0

    :try_start_6
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_172

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_49
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_6 .. :try_end_e} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_a8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_e} :catch_da
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_10e
    .catchall {:try_start_6 .. :try_end_e} :catchall_142

    if-eqz v1, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " occur Error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_35
    :goto_35
    return-void

    :pswitch_36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/SpeechError;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/A;->a()V

    goto :goto_35

    :pswitch_41
    :try_start_41
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e22

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_49} :catch_49
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_41 .. :try_end_49} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_a8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_41 .. :try_end_49} :catch_da
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_49} :catch_10e
    .catchall {:try_start_41 .. :try_end_49} :catchall_142

    :catch_49
    move-exception v0

    :try_start_4a
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e2a

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_142

    if-eqz v0, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_35

    :catch_7c
    move-exception v0

    :try_start_7d
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_142

    if-eqz v0, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_35

    :catch_a8
    move-exception v0

    :try_start_a9
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Exception;)V
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_142

    if-eqz v2, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occur Error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_35

    :catch_da
    move-exception v0

    :try_start_db
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e35

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_e5
    .catchall {:try_start_db .. :try_end_e5} :catchall_142

    if-eqz v0, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_35

    :catch_10e
    move-exception v0

    :try_start_10f
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x5207

    invoke-direct {v0, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V
    :try_end_119
    .catchall {:try_start_10f .. :try_end_119} :catchall_142

    if-eqz v0, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occur Error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_35

    :catchall_142
    move-exception v0

    if-eqz v1, :cond_16a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occur Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/A;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_16a
    throw v0

    nop

    :pswitch_data_16c
    .packed-switch 0x15
        :pswitch_36
    .end packed-switch

    :pswitch_data_172
    .packed-switch 0x8
        :pswitch_41
    .end packed-switch
.end method

.method public m()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected p()V
    .registers 5

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/A;->removeMessages(I)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    const/4 v1, 0x0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/A;->w:I

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/A;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "pte"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "text_encoding"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "rse"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/A;->s:I

    return v0
.end method

.method public u()Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->f:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->a:Lcom/iflytek/cloud/thirdparty/A$b;

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method protected declared-synchronized v()Lcom/iflytek/cloud/thirdparty/A$b;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->b:Lcom/iflytek/cloud/thirdparty/A$b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public w()Lcom/iflytek/cloud/thirdparty/af;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    return-object v0
.end method

.method protected x()V
    .registers 3

    const-string v0, "clear all message"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x14

    if-ge v0, v1, :cond_10

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/A;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method protected y()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .registers 4

    const-string v0, "cloud"

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/A;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/A;->a:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "engine_type"

    const-string v2, "cloud"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method
