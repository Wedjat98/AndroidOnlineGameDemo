.class final Lcom/google/android/gms/internal/zzckt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjgn:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic zzjhf:Z

.field private synthetic zzjij:Lcom/google/android/gms/internal/zzckg;

.field private synthetic zzjik:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckg;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzcgi;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckt;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckt;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzckt;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzckt;->zzjhf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckt;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckt;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zzd(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckt;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Failed to get user properties"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_3d
    .catchall {:try_start_3 .. :try_end_1a} :catchall_53

    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckt;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_3a

    :goto_20
    return-void

    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckt;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckt;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzckt;->zzjhf:Z

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/zzche;->zza(Lcom/google/android/gms/internal/zzcgi;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckt;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zze(Lcom/google/android/gms/internal/zzckg;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_33} :catch_3d
    .catchall {:try_start_21 .. :try_end_33} :catchall_53

    :try_start_33
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckt;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_38
    monitor-exit v1

    goto :goto_20

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3a

    throw v0

    :catch_3d
    move-exception v0

    :try_start_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckt;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Failed to get user properties"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_53

    :try_start_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckt;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_38

    :catchall_53
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckt;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_5a
    .catchall {:try_start_4d .. :try_end_5a} :catchall_3a
.end method
