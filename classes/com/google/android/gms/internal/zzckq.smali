.class final Lcom/google/android/gms/internal/zzckq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzimf:Ljava/lang/String;

.field private synthetic zzjgn:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic zzjgq:Ljava/lang/String;

.field private synthetic zzjgr:Ljava/lang/String;

.field private synthetic zzjij:Lcom/google/android/gms/internal/zzckg;

.field private synthetic zzjik:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckg;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcgi;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckq;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckq;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzckq;->zzimf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzckq;->zzjgq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzckq;->zzjgr:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzckq;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckq;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckq;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zzd(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckq;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Failed to get conditional properties"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckq;->zzimf:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzckq;->zzjgq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzckq;->zzjgr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckq;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2d} :catch_6a
    .catchall {:try_start_3 .. :try_end_2d} :catchall_91

    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckq;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_57

    :goto_33
    return-void

    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckq;->zzimf:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckq;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckq;->zzjgq:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzckq;->zzjgr:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzckq;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/gms/internal/zzche;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcgi;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckq;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zze(Lcom/google/android/gms/internal/zzckg;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_50} :catch_6a
    .catchall {:try_start_34 .. :try_end_50} :catchall_91

    :try_start_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckq;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_55
    monitor-exit v1

    goto :goto_33

    :catchall_57
    move-exception v0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_57

    throw v0

    :cond_5a
    :try_start_5a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckq;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckq;->zzimf:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzckq;->zzjgq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzckq;->zzjgr:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/gms/internal/zzche;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_69} :catch_6a
    .catchall {:try_start_5a .. :try_end_69} :catchall_91

    goto :goto_4b

    :catch_6a
    move-exception v0

    :try_start_6b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzckq;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Failed to get conditional properties"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzckq;->zzimf:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzckq;->zzjgq:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckq;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_8b
    .catchall {:try_start_6b .. :try_end_8b} :catchall_91

    :try_start_8b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckq;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_55

    :catchall_91
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckq;->zzjik:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_98
    .catchall {:try_start_8b .. :try_end_98} :catchall_57
.end method
