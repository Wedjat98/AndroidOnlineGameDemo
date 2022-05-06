.class final Lcom/google/android/gms/internal/zzcil;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic zzjeq:Lcom/google/android/gms/internal/zzcih;

.field private final zzjet:Ljava/lang/Object;

.field private final zzjeu:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzcik",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzcik",
            "<*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjet:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcil;->zzjeu:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzcil;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/InterruptedException;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcil;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-nez v1, :cond_15

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcih;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_d} :catch_10

    const/4 v0, 0x1

    move v1, v0

    goto :goto_2

    :catch_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcil;->zza(Ljava/lang/InterruptedException;)V

    goto :goto_2

    :cond_15
    :try_start_15
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeu:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcik;

    if-eqz v0, :cond_60

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzcik;->zzjes:Z

    if-eqz v1, :cond_5d

    move v1, v2

    :goto_2c
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcik;->run()V
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_33

    goto :goto_1d

    :catchall_33
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcih;->zzc(Lcom/google/android/gms/internal/zzcih;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcih;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcih;->zzc(Lcom/google/android/gms/internal/zzcih;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcih;->zzd(Lcom/google/android/gms/internal/zzcih;)Lcom/google/android/gms/internal/zzcil;

    move-result-object v2

    if-ne p0, v2, :cond_e4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcih;Lcom/google/android/gms/internal/zzcil;)Lcom/google/android/gms/internal/zzcil;

    :goto_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_3b .. :try_end_5c} :catchall_f4

    throw v0

    :cond_5d
    const/16 v1, 0xa

    goto :goto_2c

    :cond_60
    :try_start_60
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcil;->zzjet:Ljava/lang/Object;

    monitor-enter v1
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_33

    :try_start_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeu:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcih;->zzb(Lcom/google/android/gms/internal/zzcih;)Z
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_b9

    move-result v0

    if-nez v0, :cond_7a

    :try_start_73
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjet:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_7a} :catch_b4
    .catchall {:try_start_73 .. :try_end_7a} :catchall_b9

    :cond_7a
    :goto_7a
    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_b9

    :try_start_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcih;->zzc(Lcom/google/android/gms/internal/zzcih;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_33

    :try_start_82
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeu:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_de

    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_e1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcih;->zzc(Lcom/google/android/gms/internal/zzcih;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_92
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcih;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcih;->zzc(Lcom/google/android/gms/internal/zzcih;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcih;->zzd(Lcom/google/android/gms/internal/zzcih;)Lcom/google/android/gms/internal/zzcil;

    move-result-object v0

    if-ne p0, v0, :cond_bc

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcih;Lcom/google/android/gms/internal/zzcil;)Lcom/google/android/gms/internal/zzcil;

    :goto_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_92 .. :try_end_b3} :catchall_cb

    return-void

    :catch_b4
    move-exception v0

    :try_start_b5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcil;->zza(Ljava/lang/InterruptedException;)V

    goto :goto_7a

    :catchall_b9
    move-exception v0

    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_b5 .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw v0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_33

    :cond_bc
    :try_start_bc
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcih;->zze(Lcom/google/android/gms/internal/zzcih;)Lcom/google/android/gms/internal/zzcil;

    move-result-object v0

    if-ne p0, v0, :cond_ce

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzcih;->zzb(Lcom/google/android/gms/internal/zzcih;Lcom/google/android/gms/internal/zzcil;)Lcom/google/android/gms/internal/zzcil;

    goto :goto_b2

    :catchall_cb
    move-exception v0

    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_bc .. :try_end_cd} :catchall_cb

    throw v0

    :cond_ce
    :try_start_ce
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_ce .. :try_end_dd} :catchall_cb

    goto :goto_b2

    :cond_de
    :try_start_de
    monitor-exit v1

    goto/16 :goto_1d

    :catchall_e1
    move-exception v0

    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw v0
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_33

    :cond_e4
    :try_start_e4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcih;->zze(Lcom/google/android/gms/internal/zzcih;)Lcom/google/android/gms/internal/zzcil;

    move-result-object v2

    if-ne p0, v2, :cond_f7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzcih;->zzb(Lcom/google/android/gms/internal/zzcih;Lcom/google/android/gms/internal/zzcil;)Lcom/google/android/gms/internal/zzcil;

    goto/16 :goto_5b

    :catchall_f4
    move-exception v0

    monitor-exit v1
    :try_end_f6
    .catchall {:try_start_e4 .. :try_end_f6} :catchall_f4

    throw v0

    :cond_f7
    :try_start_f7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcil;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_f7 .. :try_end_106} :catchall_f4

    goto/16 :goto_5b
.end method

.method public final zzrk()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcil;->zzjet:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzjet:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
