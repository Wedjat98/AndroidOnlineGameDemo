.class public final Lcom/google/android/gms/internal/zzegn;
.super Lcom/google/android/gms/internal/zzego;


# instance fields
.field private final zzmxk:Lcom/google/android/gms/internal/zzecy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/zzegp;->zzmxo:Lcom/google/android/gms/internal/zzegp;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzego;-><init>(Lcom/google/android/gms/internal/zzegp;Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegn;->zzmxk:Lcom/google/android/gms/internal/zzecy;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "Merge { path=%s, source=%s, children=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzego;->zzmks:Lcom/google/android/gms/internal/zzedk;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzego;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzegn;->zzmxk:Lcom/google/android/gms/internal/zzecy;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbxi()Lcom/google/android/gms/internal/zzecy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegn;->zzmxk:Lcom/google/android/gms/internal/zzecy;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzego;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegn;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegn;->zzmxk:Lcom/google/android/gms/internal/zzecy;

    new-instance v2, Lcom/google/android/gms/internal/zzedk;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzejg;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzedk;-><init>([Lcom/google/android/gms/internal/zzejg;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzecy;->zzg(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzecy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    :goto_20
    return-object v0

    :cond_21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzecy;->zzbvr()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    if-eqz v0, :cond_37

    new-instance v0, Lcom/google/android/gms/internal/zzegs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegn;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzecy;->zzbvr()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzegs;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    goto :goto_20

    :cond_37
    new-instance v0, Lcom/google/android/gms/internal/zzegn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegn;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzegn;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    goto :goto_20

    :cond_43
    iget-object v1, p0, Lcom/google/android/gms/internal/zzegn;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzejg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/zzegn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegn;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegn;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzegn;->zzmxk:Lcom/google/android/gms/internal/zzecy;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzegn;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    goto :goto_20
.end method
