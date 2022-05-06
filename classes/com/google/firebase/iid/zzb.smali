.class public abstract Lcom/google/firebase/iid/zzb;
.super Landroid/app/Service;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field final zzieo:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private zziep:Landroid/os/Binder;

.field private zzieq:I

.field private zzier:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzb;->zzieo:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzb;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/iid/zzb;->zzier:I

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzb;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzb;->zzh(Landroid/content/Intent;)V

    return-void
.end method

.method private final zzh(Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    :cond_5
    iget-object v1, p0, Lcom/google/firebase/iid/zzb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget v0, p0, Lcom/google/firebase/iid/zzb;->zzier:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/firebase/iid/zzb;->zzier:I

    iget v0, p0, Lcom/google/firebase/iid/zzb;->zzier:I

    if-nez v0, :cond_17

    iget v0, p0, Lcom/google/firebase/iid/zzb;->zzieq:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/zzb;->stopSelfResult(I)Z

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "EnhancedIntentService"

    const-string v1, "Service received bind request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/google/firebase/iid/zzb;->zziep:Landroid/os/Binder;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/google/firebase/iid/zzf;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzf;-><init>(Lcom/google/firebase/iid/zzb;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzb;->zziep:Landroid/os/Binder;

    :cond_1c
    iget-object v0, p0, Lcom/google/firebase/iid/zzb;->zziep:Landroid/os/Binder;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/firebase/iid/zzb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iput p3, p0, Lcom/google/firebase/iid/zzb;->zzieq:I

    iget v2, p0, Lcom/google/firebase/iid/zzb;->zzier:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/firebase/iid/zzb;->zzier:I

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_17

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzb;->zzp(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzb;->zzh(Landroid/content/Intent;)V

    :goto_16
    return v0

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    invoke-virtual {p0, v1}, Lcom/google/firebase/iid/zzb;->zzq(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzb;->zzh(Landroid/content/Intent;)V

    goto :goto_16

    :cond_24
    iget-object v0, p0, Lcom/google/firebase/iid/zzb;->zzieo:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/iid/zzc;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/firebase/iid/zzc;-><init>(Lcom/google/firebase/iid/zzb;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x3

    goto :goto_16
.end method

.method protected zzp(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    return-object p1
.end method

.method public zzq(Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
