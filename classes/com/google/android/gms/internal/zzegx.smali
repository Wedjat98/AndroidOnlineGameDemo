.class public final Lcom/google/android/gms/internal/zzegx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzegy;


# instance fields
.field private zzmls:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    return-void
.end method

.method private final zzbtf()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;J)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;J)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzekd;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeik;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeik;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzbl(J)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzbtb()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzegd;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbte()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    if-nez v0, :cond_15

    move v0, v1

    :goto_7
    const-string v3, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    :try_start_e
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_17
    .catchall {:try_start_e .. :try_end_11} :catchall_1e

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    return-object v0

    :cond_15
    move v0, v2

    goto :goto_7

    :catch_17
    move-exception v0

    :try_start_18
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    throw v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehx;
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzehx;

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzeik;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzeik;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzeik;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method
