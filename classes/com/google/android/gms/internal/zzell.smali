.class final Lcom/google/android/gms/internal/zzell;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private synthetic zznez:Lcom/google/android/gms/internal/zzelk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzelk;ILjava/util/concurrent/ThreadFactory;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzell;->zznez:Lcom/google/android/gms/internal/zzelk;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 4

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_14

    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_14

    check-cast p1, Ljava/util/concurrent/Future;

    :try_start_b
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_14
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_14} :catch_2b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_14} :catch_1c
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_14} :catch_22

    :cond_14
    :goto_14
    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzell;->zznez:Lcom/google/android/gms/internal/zzelk;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzelk;->zzi(Ljava/lang/Throwable;)V

    :cond_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_14

    :catch_22
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_14

    :catch_2b
    move-exception v0

    goto :goto_14
.end method
