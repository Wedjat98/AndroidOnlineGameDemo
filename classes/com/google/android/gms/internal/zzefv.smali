.class final Lcom/google/android/gms/internal/zzefv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/android/gms/internal/zzeib;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzmrv:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;

.field private synthetic zzmwa:Lcom/google/android/gms/internal/zzega;

.field private synthetic zzmwl:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzega;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefv;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefv;->zzmwa:Lcom/google/android/gms/internal/zzega;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzefv;->zzmwl:Lcom/google/android/gms/internal/zzekd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefv;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefv;->zzmwa:Lcom/google/android/gms/internal/zzega;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzega;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    move-object v0, v1

    :goto_1b
    iget-object v3, p0, Lcom/google/android/gms/internal/zzefv;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefv;->zzmwl:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v3, v0, v4}, Lcom/google/android/gms/internal/zzegy;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzekd;)V

    new-instance v0, Lcom/google/android/gms/internal/zzegs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzegq;->zzc(Lcom/google/android/gms/internal/zzeih;)Lcom/google/android/gms/internal/zzegq;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefv;->zzmwl:Lcom/google/android/gms/internal/zzekd;

    invoke-direct {v0, v3, v2, v4}, Lcom/google/android/gms/internal/zzegs;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefv;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;

    move-result-object v0

    :goto_3b
    return-object v0

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    goto :goto_1b

    :cond_43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3b
.end method
