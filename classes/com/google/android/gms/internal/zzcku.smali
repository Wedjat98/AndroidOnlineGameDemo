.class public final Lcom/google/android/gms/internal/zzcku;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/zzf;
.implements Lcom/google/android/gms/common/internal/zzg;


# instance fields
.field final synthetic zzjij:Lcom/google/android/gms/internal/zzckg;

.field private volatile zzjiq:Z

.field private volatile zzjir:Lcom/google/android/gms/internal/zzchl;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzckg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcku;Z)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjiq:Z

    return v0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onConnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjir:Lcom/google/android/gms/internal/zzchl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzche;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcku;->zzjir:Lcom/google/android/gms/internal/zzchl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzckx;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzckx;-><init>(Lcom/google/android/gms/internal/zzcku;Lcom/google/android/gms/internal/zzche;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_1f} :catch_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_1f} :catch_21
    .catchall {:try_start_6 .. :try_end_1f} :catchall_29

    :goto_1f
    :try_start_1f
    monitor-exit p0

    return-void

    :catch_21
    move-exception v0

    :goto_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjir:Lcom/google/android/gms/internal/zzchl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjiq:Z

    goto :goto_1f

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v0

    :catch_2c
    move-exception v0

    goto :goto_22
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzckg;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzazx()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjiq:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjir:Lcom/google/android/gms/internal/zzchl;

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzckz;-><init>(Lcom/google/android/gms/internal/zzcku;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onConnectionSuspended"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Service connection suspended"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcky;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcky;-><init>(Lcom/google/android/gms/internal/zzcku;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v1, 0x0

    const-string v0, "MeasurementServiceConnection.onServiceConnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    monitor-enter p0

    if-nez p2, :cond_1d

    const/4 v0, 0x0

    :try_start_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjiq:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Service connected with null binder"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_54

    :goto_1c
    return-void

    :cond_1d
    :try_start_1d
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_6a
    .catchall {:try_start_1d .. :try_end_26} :catchall_54

    move-result v2

    if-eqz v2, :cond_7c

    if-nez p2, :cond_57

    move-object v0, v1

    :goto_2c
    :try_start_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Bound to IMeasurementService interface"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3b} :catch_9e
    .catchall {:try_start_2c .. :try_end_3b} :catchall_54

    :goto_3b
    if-nez v0, :cond_8d

    const/4 v0, 0x0

    :try_start_3e
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjiq:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_54

    :try_start_40
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzamc()Lcom/google/android/gms/common/stats/zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzcku;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_52} :catch_9c
    .catchall {:try_start_40 .. :try_end_52} :catchall_54

    :goto_52
    :try_start_52
    monitor-exit p0

    goto :goto_1c

    :catchall_54
    move-exception v0

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_54

    throw v0

    :cond_57
    :try_start_57
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzche;

    if-eqz v2, :cond_64

    check-cast v0, Lcom/google/android/gms/internal/zzche;

    goto :goto_2c

    :cond_64
    new-instance v0, Lcom/google/android/gms/internal/zzchg;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzchg;-><init>(Landroid/os/IBinder;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_69} :catch_6a
    .catchall {:try_start_57 .. :try_end_69} :catchall_54

    goto :goto_2c

    :catch_6a
    move-exception v0

    move-object v0, v1

    :goto_6c
    :try_start_6c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Service connect failed to get IMeasurementService"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_6c .. :try_end_7b} :catchall_54

    goto :goto_3b

    :cond_7c
    :try_start_7c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Got binder with a wrong descriptor"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_8b} :catch_6a
    .catchall {:try_start_7c .. :try_end_8b} :catchall_54

    move-object v0, v1

    goto :goto_3b

    :cond_8d
    :try_start_8d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzckv;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzckv;-><init>(Lcom/google/android/gms/internal/zzcku;Lcom/google/android/gms/internal/zzche;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V
    :try_end_9b
    .catchall {:try_start_8d .. :try_end_9b} :catchall_54

    goto :goto_52

    :catch_9c
    move-exception v0

    goto :goto_52

    :catch_9e
    move-exception v1

    goto :goto_6c
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckw;-><init>(Lcom/google/android/gms/internal/zzcku;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzbau()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0

    :try_start_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcku;->zzjiq:Z

    if-eqz v1, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    monitor-exit p0

    :goto_20
    return-void

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcku;->zzjir:Lcom/google/android/gms/internal/zzchl;

    if-eqz v1, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_20

    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    :try_start_39
    new-instance v1, Lcom/google/android/gms/internal/zzchl;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Lcom/google/android/gms/internal/zzchl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcku;->zzjir:Lcom/google/android/gms/internal/zzchl;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjiq:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjir:Lcom/google/android/gms/internal/zzchl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd;->zzakj()V

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_39 .. :try_end_5c} :catchall_36

    goto :goto_20
.end method

.method public final zzn(Landroid/content/Intent;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzamc()Lcom/google/android/gms/common/stats/zza;

    move-result-object v1

    monitor-enter p0

    :try_start_10
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcku;->zzjiq:Z

    if-eqz v2, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    monitor-exit p0

    :goto_24
    return-void

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Using local app measurement service"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcku;->zzjiq:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzcku;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit p0

    goto :goto_24

    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_44

    throw v0
.end method
