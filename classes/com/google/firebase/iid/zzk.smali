.class final Lcom/google/firebase/iid/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field state:I

.field final zznzb:Landroid/os/Messenger;

.field zznzc:Lcom/google/firebase/iid/zzp;

.field final zznzd:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/firebase/iid/zzr",
            "<*>;>;"
        }
    .end annotation
.end field

.field final zznze:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/firebase/iid/zzr",
            "<*>;>;"
        }
    .end annotation
.end field

.field final synthetic zznzf:Lcom/google/firebase/iid/zzi;


# direct methods
.method private constructor <init>(Lcom/google/firebase/iid/zzi;)V
    .registers 6

    iput-object p1, p0, Lcom/google/firebase/iid/zzk;->zznzf:Lcom/google/firebase/iid/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/iid/zzk;->state:I

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/iid/zzl;

    invoke-direct {v3, p0}, Lcom/google/firebase/iid/zzl;-><init>(Lcom/google/firebase/iid/zzk;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzk;->zznzb:Landroid/os/Messenger;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzk;->zznzd:Ljava/util/Queue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzk;->zznze:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/zzi;Lcom/google/firebase/iid/zzj;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzk;-><init>(Lcom/google/firebase/iid/zzi;)V

    return-void
.end method

.method private final zza(Lcom/google/firebase/iid/zzs;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzr;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzr;->zzb(Lcom/google/firebase/iid/zzs;)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznze:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_34

    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznze:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzr;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzr;->zzb(Lcom/google/firebase/iid/zzs;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_34
    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznze:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private final zzcjb()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznzf:Lcom/google/firebase/iid/zzi;

    invoke-static {v0}, Lcom/google/firebase/iid/zzi;->zzb(Lcom/google/firebase/iid/zzi;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/zzn;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/zzn;-><init>(Lcom/google/firebase/iid/zzk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MessengerIpcClient"

    const-string v1, "Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-nez p2, :cond_1b

    const/4 v0, 0x0

    const-string v1, "Null service connection"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/zzk;->zzm(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_29

    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    new-instance v0, Lcom/google/firebase/iid/zzp;

    invoke-direct {v0, p2}, Lcom/google/firebase/iid/zzp;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzk;->zznzc:Lcom/google/firebase/iid/zzp;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_2c
    .catchall {:try_start_1b .. :try_end_22} :catchall_29

    const/4 v0, 0x2

    :try_start_23
    iput v0, p0, Lcom/google/firebase/iid/zzk;->state:I

    invoke-direct {p0}, Lcom/google/firebase/iid/zzk;->zzcjb()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_29

    goto :goto_19

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2c
    move-exception v0

    const/4 v1, 0x0

    :try_start_2e
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/zzk;->zzm(ILjava/lang/String;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_29

    goto :goto_19
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MessengerIpcClient"

    const-string v1, "Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v0, 0x2

    const-string v1, "Service disconnected"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/zzk;->zzm(ILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzb(Lcom/google/firebase/iid/zzr;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_3
    iget v2, p0, Lcom/google/firebase/iid/zzk;->state:I

    packed-switch v2, :pswitch_data_92

    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/firebase/iid/zzk;->state:I

    const/16 v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown state: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_28
    :try_start_28
    iget-object v2, p0, Lcom/google/firebase/iid/zzk;->zznzd:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/google/firebase/iid/zzk;->state:I

    if-nez v2, :cond_32

    move v1, v0

    :cond_32
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    const-string v1, "MessengerIpcClient"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "MessengerIpcClient"

    const-string v2, "Starting bind to GmsCore"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/firebase/iid/zzk;->state:I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzamc()Lcom/google/android/gms/common/stats/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/iid/zzk;->zznzf:Lcom/google/firebase/iid/zzi;

    invoke-static {v3}, Lcom/google/firebase/iid/zzi;->zza(Lcom/google/firebase/iid/zzi;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, p0, v4}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_6d

    const/4 v1, 0x0

    const-string v2, "Unable to bind to service"

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/iid/zzk;->zzm(ILjava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_28 .. :try_end_6b} :catchall_25

    :goto_6b
    monitor-exit p0

    return v0

    :cond_6d
    :try_start_6d
    iget-object v1, p0, Lcom/google/firebase/iid/zzk;->zznzf:Lcom/google/firebase/iid/zzi;

    invoke-static {v1}, Lcom/google/firebase/iid/zzi;->zzb(Lcom/google/firebase/iid/zzi;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/zzm;

    invoke-direct {v2, p0}, Lcom/google/firebase/iid/zzm;-><init>(Lcom/google/firebase/iid/zzk;)V

    const-wide/16 v4, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_6b

    :pswitch_80
    iget-object v1, p0, Lcom/google/firebase/iid/zzk;->zznzd:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :pswitch_86
    iget-object v1, p0, Lcom/google/firebase/iid/zzk;->zznzd:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/firebase/iid/zzk;->zzcjb()V
    :try_end_8e
    .catchall {:try_start_6d .. :try_end_8e} :catchall_25

    goto :goto_6b

    :pswitch_8f
    move v0, v1

    goto :goto_6b

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_28
        :pswitch_80
        :pswitch_86
        :pswitch_8f
        :pswitch_8f
    .end packed-switch
.end method

.method final declared-synchronized zzcjc()V
    .registers 3

    const/4 v1, 0x2

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/google/firebase/iid/zzk;->state:I

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznze:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "MessengerIpcClient"

    const-string v1, "Finished handling requests, unbinding"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firebase/iid/zzk;->state:I

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzamc()Lcom/google/android/gms/common/stats/zza;

    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznzf:Lcom/google/firebase/iid/zzi;

    invoke-static {v0}, Lcom/google/firebase/iid/zzi;->zza(Lcom/google/firebase/iid/zzi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_37

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzcjd()V
    .registers 3

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/google/firebase/iid/zzk;->state:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    const-string v1, "Timed out while binding"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/zzk;->zzm(ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final zzd(Landroid/os/Message;)Z
    .registers 7

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v0, "MessengerIpcClient"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "MessengerIpcClient"

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received response to request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    monitor-enter p0

    :try_start_27
    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznze:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzr;

    if-nez v0, :cond_4d

    const-string v0, "MessengerIpcClient"

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received response for unknown request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_4c
    return v4

    :cond_4d
    iget-object v2, p0, Lcom/google/firebase/iid/zzk;->zznze:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzk;->zzcjc()V

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_27 .. :try_end_56} :catchall_6f

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "unsupported"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_72

    new-instance v1, Lcom/google/firebase/iid/zzs;

    const/4 v2, 0x4

    const-string v3, "Not supported by GmsCore"

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/iid/zzs;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzr;->zzb(Lcom/google/firebase/iid/zzs;)V

    goto :goto_4c

    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v0

    :cond_72
    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzr;->zzac(Landroid/os/Bundle;)V

    goto :goto_4c
.end method

.method final declared-synchronized zzic(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznze:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzr;

    if-eqz v0, :cond_38

    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timing out request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/firebase/iid/zzk;->zznze:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance v1, Lcom/google/firebase/iid/zzs;

    const/4 v2, 0x3

    const-string v3, "Timed out waiting for response"

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/iid/zzs;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzr;->zzb(Lcom/google/firebase/iid/zzs;)V

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzk;->zzcjc()V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzm(ILjava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v1, "MessengerIpcClient"

    const-string v2, "Disconnected: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget v0, p0, Lcom/google/firebase/iid/zzk;->state:I

    packed-switch v0, :pswitch_data_7e

    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/firebase/iid/zzk;->state:I

    const/16 v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown state: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_44
    :try_start_44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :pswitch_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_50
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "MessengerIpcClient"

    const-string v1, "Unbinding service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/firebase/iid/zzk;->state:I

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzamc()Lcom/google/android/gms/common/stats/zza;

    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zznzf:Lcom/google/firebase/iid/zzi;

    invoke-static {v0}, Lcom/google/firebase/iid/zzi;->zza(Lcom/google/firebase/iid/zzi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v0, Lcom/google/firebase/iid/zzs;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzs;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzk;->zza(Lcom/google/firebase/iid/zzs;)V
    :try_end_77
    .catchall {:try_start_44 .. :try_end_77} :catchall_41

    :goto_77
    :pswitch_77
    monitor-exit p0

    return-void

    :pswitch_79
    const/4 v0, 0x4

    :try_start_7a
    iput v0, p0, Lcom/google/firebase/iid/zzk;->state:I
    :try_end_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_41

    goto :goto_77

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_50
        :pswitch_50
        :pswitch_79
        :pswitch_77
    .end packed-switch
.end method
