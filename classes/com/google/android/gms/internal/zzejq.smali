.class final Lcom/google/android/gms/internal/zzejq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzejr;


# instance fields
.field private final zzncl:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzekd;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzelo;->zzn(Lcom/google/android/gms/internal/zzekd;)J

    move-result-wide v0

    const-wide/16 v2, 0x200

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzejq;->zzncl:J

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzejp;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejp;->zzbzz()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzejq;->zzncl:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejp;->zzcaa()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejp;->zzcaa()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwk()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzp()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzejg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method
