.class public Lcom/iflytek/cloud/thirdparty/ak;
.super Lcom/iflytek/cloud/thirdparty/E;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/ak$a;
    }
.end annotation


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/thirdparty/ak;)Lcom/iflytek/cloud/thirdparty/A;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/thirdparty/ak;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/thirdparty/ak;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->f:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/iflytek/cloud/IdentityListener;)I
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ak;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->f:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/A;->u()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ak;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v4, "mfv_interrupt_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/A;->b(Z)V

    :cond_29
    new-instance v0, Lcom/iflytek/cloud/thirdparty/z;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ak;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ak;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v5, "mfv"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/iflytek/cloud/thirdparty/z;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/ak;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/iflytek/cloud/thirdparty/S;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/z;

    new-instance v3, Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/cloud/thirdparty/ak$a;-><init>(Lcom/iflytek/cloud/thirdparty/ak;Lcom/iflytek/cloud/IdentityListener;)V

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/thirdparty/z;->a(Lcom/iflytek/cloud/IdentityListener;)V
    :try_end_52
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_4 .. :try_end_52} :catch_55
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_52} :catch_5f
    .catchall {:try_start_4 .. :try_end_52} :catchall_67

    move v0, v1

    :goto_53
    :try_start_53
    monitor-exit v2

    return v0

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_53

    :catch_5f
    move-exception v0

    const/16 v1, 0x5207

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_53

    :catchall_67
    move-exception v0

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_53 .. :try_end_69} :catchall_67

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/IdentityListener;)I
    .registers 11

    const/4 v4, 0x0

    const-string v0, "sst"

    invoke-virtual {p0, v0, p2}, Lcom/iflytek/cloud/thirdparty/ak;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, p4}, Lcom/iflytek/cloud/thirdparty/ak;->a(Lcom/iflytek/cloud/IdentityListener;)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/ak;->c(Ljava/lang/String;)V

    :cond_18
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BII)I
    .registers 13

    const/16 v0, 0x277d

    iget-object v6, p0, Lcom/iflytek/cloud/thirdparty/ak;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_5
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-nez v1, :cond_12

    const-string v0, "writeAudio error, no active session."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    const/16 v0, 0x520c

    monitor-exit v6

    :goto_11
    return v0

    :cond_12
    if-gez p5, :cond_1e

    const-string v1, "writeAudio error, length < 0."

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_11

    :catchall_1b
    move-exception v0

    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    if-eqz p3, :cond_2c

    :try_start_20
    array-length v1, p3

    add-int v2, p5, p4

    if-ge v1, v2, :cond_2c

    const-string v1, "writeAudio error, buffer length < offset + length."

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_11

    :cond_2c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/z;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/z;->a(Ljava/lang/String;Ljava/lang/String;[BII)V

    const/4 v0, 0x0

    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_1b

    goto :goto_11
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ak;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/z;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/z;->k()Lcom/iflytek/cloud/thirdparty/C;

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

.method public c(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ak;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/z;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/iflytek/cloud/thirdparty/z;->a(Ljava/lang/String;Z)Z

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

.method public cancel(Z)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ak;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ak;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/S;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;->cancel(Z)V

    return-void
.end method

.method public e()Z
    .registers 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/ak;->d()Z

    move-result v0

    return v0
.end method
