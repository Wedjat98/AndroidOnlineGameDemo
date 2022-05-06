.class public final Lcom/google/android/gms/internal/zzegm;
.super Lcom/google/android/gms/internal/zzego;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzegp;->zzmxq:Lcom/google/android/gms/internal/zzegp;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzego;-><init>(Lcom/google/android/gms/internal/zzegp;Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "ListenComplete { path=%s, source=%s }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzego;->zzmks:Lcom/google/android/gms/internal/zzedk;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzego;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzego;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/zzegm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzegm;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zzegm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegm;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzegm;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    goto :goto_13
.end method
