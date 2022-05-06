.class public final Lcom/google/android/gms/internal/zzehx;
.super Ljava/lang/Object;


# instance fields
.field private final zzmzi:Lcom/google/android/gms/internal/zzejw;

.field private final zzmzj:Z

.field private final zzmzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzejw;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehx;->zzmzi:Lcom/google/android/gms/internal/zzejw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzehx;->zzmzj:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzehx;->zzmzk:Z

    return-void
.end method


# virtual methods
.method public final zzal(Lcom/google/android/gms/internal/zzedk;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzj:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzk:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzehx;->zzf(Lcom/google/android/gms/internal/zzejg;)Z

    move-result v0

    goto :goto_f
.end method

.method public final zzbsv()Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzi:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0
.end method

.method public final zzbxz()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzj:Z

    return v0
.end method

.method public final zzbya()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzk:Z

    return v0
.end method

.method public final zzbyb()Lcom/google/android/gms/internal/zzejw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzi:Lcom/google/android/gms/internal/zzejw;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzejg;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzj:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzk:Z

    if-eqz v0, :cond_14

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzi:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekd;->zzk(Lcom/google/android/gms/internal/zzejg;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
