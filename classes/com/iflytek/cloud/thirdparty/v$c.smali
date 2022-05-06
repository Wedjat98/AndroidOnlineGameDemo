.class Lcom/iflytek/cloud/thirdparty/v$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/v;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcom/iflytek/cloud/thirdparty/x;

.field private f:Lcom/iflytek/cloud/SpeechError;

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/v;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/v$c;->b:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->c:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->d:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/v;->a(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:Lcom/iflytek/cloud/SpeechError;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->g:J

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/v$c;->h:Z

    return-void
.end method

.method private c()V
    .registers 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->d(Lcom/iflytek/cloud/thirdparty/v;)I

    move-result v1

    if-eq v0, v1, :cond_47

    const-wide/32 v2, 0x1d4c0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/v$c;->g:J

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_47

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->g()J

    move-result-wide v2

    const-wide/32 v4, 0xc000

    cmp-long v1, v4, v2

    if-gez v1, :cond_41

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x78000

    cmp-long v1, v2, v4

    if-lez v1, :cond_41

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->h:Z

    if-nez v1, :cond_48

    :goto_36
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->h:Z

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->h:Z

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->h()V

    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->g:J

    :cond_47
    return-void

    :cond_48
    const/4 v0, 0x0

    goto :goto_36
.end method


# virtual methods
.method public a()Lcom/iflytek/cloud/SpeechError;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:Lcom/iflytek/cloud/SpeechError;

    return-object v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:Lcom/iflytek/cloud/SpeechError;

    return-void
.end method

.method public run()V
    .registers 9

    const/4 v2, 0x0

    const-string v0, "aimic audio writing thread enter"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    move v0, v2

    move v1, v2

    move v3, v2

    :goto_9
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$c;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/v;->b(Lcom/iflytek/cloud/thirdparty/v;)Z

    move-result v4

    if-eqz v4, :cond_db

    :try_start_11
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v4}, Lcom/iflytek/cloud/thirdparty/x;->f()Lcom/iflytek/cloud/thirdparty/x$a;
    :try_end_16
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_11 .. :try_end_16} :catch_c8
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_eb

    move-result-object v4

    if-eqz v4, :cond_83

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x1e

    if-gt v5, v3, :cond_3c

    :try_start_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current buf container size in aimic thread is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v5}, Lcom/iflytek/cloud/thirdparty/x;->c()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1f .. :try_end_3b} :catch_f1
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_3b} :catch_ca

    move v3, v2

    :cond_3c
    :try_start_3c
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v6, v7, v0, v5, v1}, Lcom/iflytek/msc/AIMIC;->AIMICAudioWrite(J[BII)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v1, v4}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/x$a;)V

    if-eqz v0, :cond_fa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIMICAudioWrite error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/v$c;->a:Lcom/iflytek/cloud/thirdparty/v;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/v;->c(Lcom/iflytek/cloud/thirdparty/v;)Lcom/iflytek/cloud/thirdparty/v$a;

    move-result-object v1

    new-instance v4, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v4, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/iflytek/cloud/thirdparty/v$a;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_80
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3c .. :try_end_80} :catch_f5
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_80} :catch_e6

    move v0, v2

    move v1, v2

    goto :goto_9

    :cond_83
    :try_start_83
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/v$c;->c()V
    :try_end_86
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_83 .. :try_end_86} :catch_c8
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_eb

    const/16 v4, 0x3e8

    if-gt v4, v0, :cond_b8

    :try_start_8a
    monitor-enter p0
    :try_end_8b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8a .. :try_end_8b} :catch_a7
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8b} :catch_ed

    :try_start_8b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->e()Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string v0, "aimic audio writing will suspend"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const-string v0, "aimic audio writing is waked"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_a0
    monitor-exit p0

    move v0, v2

    goto/16 :goto_9

    :catchall_a4
    move-exception v0

    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_8b .. :try_end_a6} :catchall_a4

    :try_start_a6
    throw v0
    :try_end_a7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a6 .. :try_end_a7} :catch_a7
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a7} :catch_ed

    :catch_a7
    move-exception v0

    move-object v4, v0

    move v0, v2

    :goto_aa
    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v4, Lcom/iflytek/cloud/SpeechError;

    const/16 v5, 0x4e35

    invoke-direct {v4, v5}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:Lcom/iflytek/cloud/SpeechError;

    goto/16 :goto_9

    :cond_b8
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x10

    :try_start_be
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/iflytek/cloud/thirdparty/v$c;->sleep(J)V
    :try_end_c6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_be .. :try_end_c6} :catch_c8
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_c6} :catch_eb

    goto/16 :goto_9

    :catch_c8
    move-exception v4

    goto :goto_aa

    :catch_ca
    move-exception v3

    move-object v4, v3

    move v3, v2

    :goto_cd
    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v4, Lcom/iflytek/cloud/SpeechError;

    const/16 v5, 0x5207

    invoke-direct {v4, v5}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/v$c;->f:Lcom/iflytek/cloud/SpeechError;

    goto/16 :goto_9

    :cond_db
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/v$c;->e:Lcom/iflytek/cloud/thirdparty/x;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x;->d()V

    const-string v0, "aimic audio writing thread exited"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catch_e6
    move-exception v0

    move-object v4, v0

    move v1, v2

    move v0, v2

    goto :goto_cd

    :catch_eb
    move-exception v4

    goto :goto_cd

    :catch_ed
    move-exception v0

    move-object v4, v0

    move v0, v2

    goto :goto_cd

    :catch_f1
    move-exception v3

    move-object v4, v3

    move v3, v2

    goto :goto_aa

    :catch_f5
    move-exception v0

    move-object v4, v0

    move v1, v2

    move v0, v2

    goto :goto_aa

    :cond_fa
    move v0, v2

    move v1, v2

    goto/16 :goto_9
.end method
