.class final Lcom/google/android/gms/internal/zzclk;
.super Ljava/lang/Object;


# instance fields
.field private mStartTime:J

.field private final zzata:Lcom/google/android/gms/common/util/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/zzd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclk;->zzata:Lcom/google/android/gms/common/util/zzd;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzclk;->mStartTime:J

    return-void
.end method

.method public final start()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclk;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzclk;->mStartTime:J

    return-void
.end method

.method public final zzu(J)Z
    .registers 9

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzclk;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzclk;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzclk;->mStartTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v1, v2, v4

    if-gez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method
