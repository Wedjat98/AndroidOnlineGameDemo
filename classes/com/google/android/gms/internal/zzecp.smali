.class public final Lcom/google/android/gms/internal/zzecp;
.super Ljava/lang/Object;


# instance fields
.field private final random:Ljava/util/Random;

.field private final zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private final zzmra:J

.field private final zzmrb:J

.field private final zzmrc:D

.field private final zzmrd:D

.field private zzmre:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private zzmrf:J

.field private zzmrg:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzejc;JJDD)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecp;->random:Ljava/util/Random;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrg:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecp;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzecp;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzecp;->zzmra:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzecp;->zzmrb:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzecp;->zzmrd:D

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzecp;->zzmrc:D

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzejc;JJDDLcom/google/android/gms/internal/zzecq;)V
    .registers 13

    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/zzecp;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzejc;JJDD)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzecp;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Cancelling existing retry attempt"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v4, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    :goto_16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "No existing retry attempt to cancel"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public final zzbvi()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrg:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    return-void
.end method

.method public final zzbvj()V
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    return-void
.end method

.method public final zzn(Ljava/lang/Runnable;)V
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v2, Lcom/google/android/gms/internal/zzecq;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzecq;-><init>(Lcom/google/android/gms/internal/zzecp;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/google/android/gms/internal/zzecp;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v4, "Cancelling previous scheduled retry"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v9, v5}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v8}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v9, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    :cond_1d
    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzecp;->zzmrg:Z

    if-eqz v3, :cond_3e

    :goto_21
    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzecp;->zzmrg:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzecp;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v4, "Scheduling retry in %dms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v9, v5}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzecp;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v2, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmre:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_3e
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_61

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmra:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    :goto_48
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzecp;->zzmrc:D

    sub-double/2addr v0, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    long-to-double v4, v4

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzecp;->zzmrc:D

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzecp;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-long v0, v0

    goto :goto_21

    :cond_61
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    long-to-double v0, v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzecp;->zzmrd:D

    mul-double/2addr v0, v4

    double-to-long v0, v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzecp;->zzmrb:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecp;->zzmrf:J

    goto :goto_48
.end method
