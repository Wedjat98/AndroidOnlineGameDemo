.class final Lcom/google/android/gms/internal/zzcjy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjy;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/32 v8, 0x1d4c0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjy;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchx;->zzazn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjy;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzazs()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Cannot retrieve app instance id from analytics worker thread"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2f
    :goto_2f
    if-nez v0, :cond_72

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    invoke-static {}, Lcom/google/android/gms/internal/zzcih;->zzau()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Cannot retrieve app instance id from main thread"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2f

    :cond_4f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/zzcjn;->zzbd(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    if-nez v0, :cond_2f

    cmp-long v1, v4, v8

    if-gez v1, :cond_2f

    sub-long v0, v8, v4

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzcjn;->zzbd(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_72
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjy;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzchx;->zzjp(Ljava/lang/String;)V

    goto :goto_10
.end method
