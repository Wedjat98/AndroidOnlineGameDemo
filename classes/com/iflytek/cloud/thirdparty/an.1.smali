.class public Lcom/iflytek/cloud/thirdparty/an;
.super Lcom/iflytek/cloud/thirdparty/E;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/an$c;,
        Lcom/iflytek/cloud/thirdparty/an$a;,
        Lcom/iflytek/cloud/thirdparty/an$b;
    }
.end annotation


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/an;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/RecognizerListener;)I
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/an;->f:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->u()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v4, "asr_interrupt_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/A;->b(Z)V

    :cond_29
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/an;->h()Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, Lcom/iflytek/cloud/thirdparty/m;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/an;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v5, "iat"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/an;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/m;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    :goto_40
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/an;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/S;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/l;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/an$c;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/cloud/thirdparty/an$c;-><init>(Lcom/iflytek/cloud/thirdparty/an;Lcom/iflytek/cloud/RecognizerListener;)V

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/l;->a(Lcom/iflytek/cloud/RecognizerListener;)V
    :try_end_58
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_4 .. :try_end_58} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_58} :catch_77
    .catchall {:try_start_4 .. :try_end_58} :catchall_7f

    move v0, v1

    :goto_59
    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_7f

    return v0

    :cond_5b
    :try_start_5b
    new-instance v0, Lcom/iflytek/cloud/thirdparty/l;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/an;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v5, "iat"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/an;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/l;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;
    :try_end_6c
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_5b .. :try_end_6c} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_6c} :catch_77
    .catchall {:try_start_5b .. :try_end_6c} :catchall_7f

    goto :goto_40

    :catch_6d
    move-exception v0

    :try_start_6e
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_59

    :catch_77
    move-exception v0

    const/16 v1, 0x5207

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_59

    :catchall_7f
    move-exception v0

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_6e .. :try_end_81} :catchall_7f

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/GrammarListener;)I
    .registers 7

    const/16 v0, 0x4e2c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x4e29

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz p3, :cond_a

    new-instance v0, Lcom/iflytek/cloud/thirdparty/k;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/k;-><init>()V

    new-instance v1, Lcom/iflytek/cloud/thirdparty/an$a;

    invoke-direct {v1, p0, p3}, Lcom/iflytek/cloud/thirdparty/an$a;-><init>(Lcom/iflytek/cloud/thirdparty/an;Lcom/iflytek/cloud/GrammarListener;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/iflytek/cloud/thirdparty/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/GrammarListener;Lcom/iflytek/cloud/thirdparty/af;)I

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;)I
    .registers 9

    const/16 v0, 0x4e2c

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0x4e29

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz p3, :cond_b

    new-instance v2, Lcom/iflytek/cloud/thirdparty/k;

    invoke-direct {v2}, Lcom/iflytek/cloud/thirdparty/k;-><init>()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "subject"

    const-string v4, "uup"

    invoke-virtual {v0, v3, v4, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "lexicon_type"

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/an;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object v0, p1

    :cond_2f
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v4, "data_type"

    invoke-virtual {v3, v4, v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/an$b;

    invoke-direct {v0, p0, p3}, Lcom/iflytek/cloud/thirdparty/an$b;-><init>(Lcom/iflytek/cloud/thirdparty/an;Lcom/iflytek/cloud/LexiconListener;)V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v2, p1, p2, v0, v3}, Lcom/iflytek/cloud/thirdparty/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;Lcom/iflytek/cloud/thirdparty/af;)I

    move v0, v1

    goto :goto_b
.end method

.method public a([BII)I
    .registers 8

    const/16 v0, 0x277d

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-nez v2, :cond_12

    const-string v0, "writeAudio error, no active session."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/16 v0, 0x520c

    monitor-exit v1

    :goto_11
    return v0

    :cond_12
    if-eqz p1, :cond_17

    array-length v2, p1

    if-gtz v2, :cond_21

    :cond_17
    const-string v2, "writeAudio error,buffer is null."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_11

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :try_start_21
    array-length v2, p1

    add-int v3, p3, p2

    if-ge v2, v3, :cond_2d

    const-string v2, "writeAudio error,buffer length < length."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_11

    :cond_2d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/l;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/l;->a()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3c

    const/16 v0, 0x277a

    monitor-exit v1

    goto :goto_11

    :cond_3c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/l;->a([BII)I

    move-result v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_1e

    goto :goto_11
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/l;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/l;->o()Lcom/iflytek/cloud/thirdparty/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/C;->a(Ljava/lang/String;)V

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public cancel(Z)V
    .registers 4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/an;->f()V

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;->cancel(Z)V

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public e()V
    .registers 4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/l;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/thirdparty/l;->a(Z)Z

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected f()V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "asr_audio_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/l;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/l;->b()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/R;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v2, "audio_format"

    invoke-virtual {v0, v2, v5}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/A;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    const-string v3, "sample_rate"

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/an;->d:Lcom/iflytek/cloud/thirdparty/A;

    iget v4, v4, Lcom/iflytek/cloud/thirdparty/A;->s:I

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/R;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_44
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/an;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/an;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/iflytek/cloud/thirdparty/S;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    return-void
.end method

.method public g()Z
    .registers 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/an;->d()Z

    move-result v0

    return v0
.end method

.method protected h()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v2, "bos_dispose"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "meta"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v2, "vad_engine"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_1d
    return v0

    :cond_1e
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/an;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v2, "bos_dispose"

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1d
.end method
