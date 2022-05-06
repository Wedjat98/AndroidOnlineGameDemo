.class abstract Lcom/google/android/gms/internal/zzcjl;
.super Lcom/google/android/gms/internal/zzcjk;


# instance fields
.field private zzdtb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjk;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjl;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcjl;)V

    return-void
.end method


# virtual methods
.method public final initialize()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcjl;->zzdtb:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaxz()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjl;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzbak()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcjl;->zzdtb:Z

    :cond_1a
    return-void
.end method

.method final isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcjl;->zzdtb:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract zzaxz()Z
.end method

.method protected zzayy()V
    .registers 1

    return-void
.end method

.method public final zzazw()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcjl;->zzdtb:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzayy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjl;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzbak()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcjl;->zzdtb:Z

    return-void
.end method

.method protected final zzxf()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method
