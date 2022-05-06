.class final Lcom/google/android/gms/internal/zzcik;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/internal/zzcik;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzjep:Ljava/lang/String;

.field private synthetic zzjeq:Lcom/google/android/gms/internal/zzcih;

.field private final zzjer:J

.field final zzjes:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcih;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcik;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzcih;->zzazu()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcik;->zzjer:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcik;->zzjep:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcik;->zzjes:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcik;->zzjer:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Tasks index overflow"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcih;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcik;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzcih;->zzazu()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcik;->zzjer:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcik;->zzjep:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcik;->zzjes:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcik;->zzjer:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Tasks index overflow"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Lcom/google/android/gms/internal/zzcik;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcik;->zzjes:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcik;->zzjes:Z

    if-eq v2, v3, :cond_11

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcik;->zzjes:Z

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcik;->zzjer:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcik;->zzjer:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcik;->zzjer:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcik;->zzjer:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_23

    move v0, v1

    goto :goto_e

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzaze()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Two tasks share the same index. index"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcik;->zzjer:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected final setException(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzjeq:Lcom/google/android/gms/internal/zzcih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcik;->zzjep:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzcii;

    if-eqz v0, :cond_1e

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1e
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
