.class final Lcom/google/android/gms/internal/zzckj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjgn:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic zzjij:Lcom/google/android/gms/internal/zzckg;

.field private synthetic zzjik:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckg;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzcgi;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckj;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckj;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzckj;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckj;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zzd(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_59
    .catchall {:try_start_3 .. :try_end_1a} :catchall_6f

    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_56

    :goto_20
    return-void

    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckj;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckj;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzche;->zzc(Lcom/google/android/gms/internal/zzcgi;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckj;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcjn;->zzjp(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckj;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzchx;->zzjcx:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcic;->zzjq(Ljava/lang/String;)V

    :cond_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zze(Lcom/google/android/gms/internal/zzckg;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_4f} :catch_59
    .catchall {:try_start_21 .. :try_end_4f} :catchall_6f

    :try_start_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_54
    monitor-exit v1

    goto :goto_20

    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_56

    throw v0

    :catch_59
    move-exception v0

    :try_start_5a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckj;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_5a .. :try_end_69} :catchall_6f

    :try_start_69
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckj;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_54

    :catchall_6f
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckj;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_76
    .catchall {:try_start_69 .. :try_end_76} :catchall_56
.end method
