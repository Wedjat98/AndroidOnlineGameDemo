.class final Lcom/google/android/gms/internal/zzefb;
.super Ljava/lang/Object;


# instance fields
.field private zzmvh:Lcom/google/android/gms/internal/zzekd;

.field private zzmvi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzejg;",
            "Lcom/google/android/gms/internal/zzefb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeff;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzeff;->zzf(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    :cond_9
    return-void

    :cond_a
    new-instance v2, Lcom/google/android/gms/internal/zzefd;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/zzefd;-><init>(Lcom/google/android/gms/internal/zzefb;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeff;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefb;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/zzefe;->zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzefb;)V

    goto :goto_1d
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .registers 6

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    goto :goto_b

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    if-nez v0, :cond_24

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    :cond_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/zzefb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzefb;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    move-object p0, v0

    goto :goto_0
.end method

.method public final zzq(Lcom/google/android/gms/internal/zzedk;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object v5, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    iput-object v5, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    move v0, v1

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v2

    goto :goto_e

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    check-cast v0, Lcom/google/android/gms/internal/zzeji;

    iput-object v5, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    new-instance v3, Lcom/google/android/gms/internal/zzefc;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/internal/zzefc;-><init>(Lcom/google/android/gms/internal/zzefb;Lcom/google/android/gms/internal/zzedk;)V

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/zzeji;->zza(Lcom/google/android/gms/internal/zzejl;Z)V

    goto :goto_3

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefb;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzefb;->zzq(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    iput-object v5, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    move v0, v1

    goto :goto_e

    :cond_5f
    move v0, v2

    goto :goto_e

    :cond_61
    move v0, v1

    goto :goto_e
.end method
