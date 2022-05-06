.class final Lcom/google/android/gms/internal/zzecf;
.super Ljava/lang/Object;


# static fields
.field private static zzmpu:J


# instance fields
.field private final zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private zzmpv:Lcom/google/android/gms/internal/zzecj;

.field private zzmpw:Z

.field private zzmpx:Z

.field private zzmpy:J

.field private zzmpz:Lcom/google/android/gms/internal/zzecs;

.field private zzmqa:Lcom/google/android/gms/internal/zzeci;

.field private zzmqb:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private zzmqc:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzmqd:Lcom/google/android/gms/internal/zzebi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zzecf;->zzmpu:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzebi;Lcom/google/android/gms/internal/zzebk;Ljava/lang/String;Lcom/google/android/gms/internal/zzeci;Ljava/lang/String;)V
    .registers 14

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpx:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpy:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecf;->zzmqd:Lcom/google/android/gms/internal/zzebi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebi;->zzbud()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzecf;->zzmqa:Lcom/google/android/gms/internal/zzeci;

    sget-wide v0, Lcom/google/android/gms/internal/zzecf;->zzmpu:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/zzecf;->zzmpu:J

    new-instance v2, Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebi;->zzbub()Lcom/google/android/gms/internal/zzejd;

    move-result-object v3

    const-string v4, "WebSocket"

    const/16 v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "ws_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzejc;-><init>(Lcom/google/android/gms/internal/zzejd;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    if-eqz p3, :cond_10f

    :goto_42
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzebk;->isSecure()Z

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzebk;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_115

    const-string v0, "wss"

    :goto_4e
    const-string v2, "v"

    const-string v3, "5"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/.ws?ns="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_ec

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&ls="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_ec
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzecf;->zzmqd:Lcom/google/android/gms/internal/zzebi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzebi;->zzbuf()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/zzeku;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzecf;->zzmqd:Lcom/google/android/gms/internal/zzebi;

    invoke-direct {v2, v3, v0, v7, v1}, Lcom/google/android/gms/internal/zzeku;-><init>(Lcom/google/android/gms/internal/zzebi;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/google/android/gms/internal/zzeck;

    invoke-direct {v0, p0, v2, v7}, Lcom/google/android/gms/internal/zzeck;-><init>(Lcom/google/android/gms/internal/zzecf;Lcom/google/android/gms/internal/zzeku;Lcom/google/android/gms/internal/zzecg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpv:Lcom/google/android/gms/internal/zzecj;

    return-void

    :cond_10f
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzebk;->getHost()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_42

    :cond_115
    const-string v0, "ws"

    goto/16 :goto_4e
.end method

.method private final shutdown()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqa:Lcom/google/android/gms/internal/zzeci;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzecf;->zzmpw:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeci;->zzck(Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqc:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzecf;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzecf;->zzpr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzecf;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpw:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    return-object v0
.end method

.method private final zzbvd()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpx:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqb:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqb:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecf;->zzmqb:Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const/16 v1, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Reset keepAlive. Remaining: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzech;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzech;-><init>(Lcom/google/android/gms/internal/zzecf;)V

    const-wide/32 v2, 0xafc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqb:Ljava/util/concurrent/ScheduledFuture;

    :cond_4d
    return-void

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "Reset keepAlive"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3b
.end method

.method private final zzbve()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpx:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "closing itself"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_17
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecf;->shutdown()V

    :cond_1a
    iput-object v4, p0, Lcom/google/android/gms/internal/zzecf;->zzmpv:Lcom/google/android/gms/internal/zzecj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqb:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqb:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_25
    return-void
.end method

.method private final zzbvf()V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpw:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpx:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "timed out on connect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpv:Lcom/google/android/gms/internal/zzecj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzecj;->close()V

    :cond_20
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzecf;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecf;->zzbvd()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzecf;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecf;->zzbve()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzecf;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecf;->zzbvf()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzecj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpv:Lcom/google/android/gms/internal/zzecj;

    return-object v0
.end method

.method private final zzgq(I)V
    .registers 7

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpy:J

    new-instance v0, Lcom/google/android/gms/internal/zzecs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzecs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpz:Lcom/google/android/gms/internal/zzecs;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzecf;->zzmpy:J

    const/16 v1, 0x29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "HandleNewFrameCount: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method private final zzpp(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpz:Lcom/google/android/gms/internal/zzecs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzecs;->zzpt(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpy:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpy:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpy:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    :try_start_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpz:Lcom/google/android/gms/internal/zzecs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecs;->zzbvl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpz:Lcom/google/android/gms/internal/zzecs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecs;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelh;->zzqb(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzecf;->zzmpz:Lcom/google/android/gms/internal/zzecs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "handleIncomingFrame complete frame: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/internal/zzecf;->zzmqa:Lcom/google/android/gms/internal/zzeci;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzeci;->zzag(Ljava/util/Map;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_5d} :catch_88

    :cond_5d
    :goto_5d
    return-void

    :catch_5e
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Error parsing frame: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpz:Lcom/google/android/gms/internal/zzecs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecs;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_82

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_78
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzejc;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzecf;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecf;->shutdown()V

    goto :goto_5d

    :cond_82
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_78

    :catch_88
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Error parsing frame (cast error): "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpz:Lcom/google/android/gms/internal/zzecs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecs;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_ac

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a2
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzejc;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzecf;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecf;->shutdown()V

    goto :goto_5d

    :cond_ac
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a2
.end method

.method private final zzpq(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_13

    :try_start_7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_10

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzecf;->zzgq(I)V
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_10} :catch_12

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return-object p1

    :catch_12
    move-exception v0

    :cond_13
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzecf;->zzgq(I)V

    goto :goto_11
.end method

.method private final zzpr(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpx:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecf;->zzbvd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpz:Lcom/google/android/gms/internal/zzecs;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzecf;->zzpp(Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_c

    :cond_14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzecf;->zzpq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzecf;->zzpp(Ljava/lang/String;)V

    goto :goto_11
.end method


# virtual methods
.method public final close()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v1, "websocket is being closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_14
    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzecf;->zzmpx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpv:Lcom/google/android/gms/internal/zzecj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzecj;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqc:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqc:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqb:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqb:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2d
    return-void
.end method

.method public final open()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpv:Lcom/google/android/gms/internal/zzecj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzecj;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmlf:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzecg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzecg;-><init>(Lcom/google/android/gms/internal/zzecf;)V

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmqc:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final send(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecf;->zzbvd()V

    :try_start_5
    invoke-static {p1}, Lcom/google/android/gms/internal/zzelh;->zzbt(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x4000

    if-gt v0, v3, :cond_3e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    move-object v2, v0

    :goto_18
    array-length v0, v2

    if-le v0, v6, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecf;->zzmpv:Lcom/google/android/gms/internal/zzecj;

    array-length v3, v2

    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzecj;->zzps(Ljava/lang/String;)V

    :cond_30
    move v0, v1

    :goto_31
    array-length v1, v2

    if-ge v0, v1, :cond_8a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecf;->zzmpv:Lcom/google/android/gms/internal/zzecj;

    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/zzecj;->zzps(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_5e

    add-int/lit16 v4, v0, 0x4000

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit16 v0, v0, 0x4000

    goto :goto_44

    :cond_5e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6a} :catch_6c

    move-object v2, v0

    goto :goto_18

    :catch_6c
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzecf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v3, "Failed to serialize message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8b

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_84
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzejc;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecf;->shutdown()V

    :cond_8a
    return-void

    :cond_8b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_84
.end method
