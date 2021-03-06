.class public final Lcom/google/android/gms/internal/zzcih;
.super Lcom/google/android/gms/internal/zzcjl;


# static fields
.field private static final zzjeo:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private zzieo:Ljava/util/concurrent/ExecutorService;

.field private zzjef:Lcom/google/android/gms/internal/zzcil;

.field private zzjeg:Lcom/google/android/gms/internal/zzcil;

.field private final zzjeh:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzcik",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzjei:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzcik",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzjej:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzjek:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzjel:Ljava/lang/Object;

.field private final zzjem:Ljava/util/concurrent/Semaphore;

.field private volatile zzjen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/internal/zzcih;->zzjeo:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjel:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjem:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeh:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjei:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/google/android/gms/internal/zzcij;

    const-string v1, "Thread death: Uncaught exception on worker thread"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzcij;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjej:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/google/android/gms/internal/zzcij;

    const-string v1, "Thread death: Uncaught exception on network thread"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzcij;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjek:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcih;Lcom/google/android/gms/internal/zzcil;)Lcom/google/android/gms/internal/zzcil;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcih;)Ljava/util/concurrent/Semaphore;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcik;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcik",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjel:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeh:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    if-nez v0, :cond_25

    new-instance v0, Lcom/google/android/gms/internal/zzcil;

    const-string v2, "Measurement Worker"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcih;->zzjeh:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/internal/zzcil;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcih;->zzjej:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcil;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcil;->start()V

    :goto_23
    monitor-exit v1

    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcil;->zzrk()V

    goto :goto_23

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public static zzau()Z
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic zzazu()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzcih;->zzjeo:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcih;Lcom/google/android/gms/internal/zzcil;)Lcom/google/android/gms/internal/zzcil;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcih;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjen:Z

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcih;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjel:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcih;)Lcom/google/android/gms/internal/zzcil;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcih;)Lcom/google/android/gms/internal/zzcil;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawi()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawi()V

    return-void
.end method

.method public final zzawj()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method

.method public final bridge synthetic zzawk()Lcom/google/android/gms/internal/zzcgd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawl()Lcom/google/android/gms/internal/zzcgk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawm()Lcom/google/android/gms/internal/zzcjn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawn()Lcom/google/android/gms/internal/zzchh;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawo()Lcom/google/android/gms/internal/zzcgu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawp()Lcom/google/android/gms/internal/zzckg;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawq()Lcom/google/android/gms/internal/zzckc;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawr()Lcom/google/android/gms/internal/zzchi;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaws()Lcom/google/android/gms/internal/zzcgo;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawt()Lcom/google/android/gms/internal/zzchk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawu()Lcom/google/android/gms/internal/zzclq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawv()Lcom/google/android/gms/internal/zzcig;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaww()Lcom/google/android/gms/internal/zzclf;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaww()Lcom/google/android/gms/internal/zzclf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawx()Lcom/google/android/gms/internal/zzcih;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawy()Lcom/google/android/gms/internal/zzchm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawz()Lcom/google/android/gms/internal/zzchx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaxa()Lcom/google/android/gms/internal/zzcgn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaxa()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzaxz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzazs()Z
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final zzazt()Ljava/util/concurrent/ExecutorService;
    .registers 10

    iget-object v8, p0, Lcom/google/android/gms/internal/zzcih;->zzjel:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzieo:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1b

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x64

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzieo:Ljava/util/concurrent/ExecutorService;

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzieo:Ljava/util/concurrent/ExecutorService;

    monitor-exit v8

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit v8
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public final zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcik;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzcik;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    if-ne v1, v2, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjeh:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Callable skipped the worker queue."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcik;->run()V

    :goto_2e
    return-object v0

    :cond_2f
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcik;)V

    goto :goto_2e
.end method

.method public final zzd(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcik;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzcik;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    if-ne v1, v2, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcik;->run()V

    :goto_19
    return-object v0

    :cond_1a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcik;)V

    goto :goto_19
.end method

.method public final zzg(Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcik;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzcik;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcih;->zza(Lcom/google/android/gms/internal/zzcik;)V

    return-void
.end method

.method public final zzh(Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcik;

    const/4 v1, 0x0

    const-string v2, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzcik;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjel:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcih;->zzjei:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    if-nez v0, :cond_33

    new-instance v0, Lcom/google/android/gms/internal/zzcil;

    const-string v2, "Measurement Network"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcih;->zzjei:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/internal/zzcil;-><init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcih;->zzjek:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcil;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcil;->start()V

    :goto_31
    monitor-exit v1

    return-void

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzjeg:Lcom/google/android/gms/internal/zzcil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcil;->zzrk()V

    goto :goto_31

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public final zzve()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcih;->zzjef:Lcom/google/android/gms/internal/zzcil;

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/common/util/zzd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method
