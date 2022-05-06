.class public final Lcom/google/android/gms/internal/zzekk;
.super Ljava/lang/Object;


# instance fields
.field private final zzndh:Lcom/google/android/gms/internal/zzedk;

.field private final zzndi:Lcom/google/android/gms/internal/zzedk;

.field private final zzndj:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzecd;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecd;->zzbva()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2d

    new-instance v0, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/util/List;)V

    :goto_f
    iput-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecd;->zzbvb()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v1, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/util/List;)V

    :cond_1c
    iput-object v1, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecd;->zzbvc()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zzndj:Lcom/google/android/gms/internal/zzekd;

    return-void

    :cond_2d
    move-object v0, v1

    goto :goto_f
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 13

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    if-nez v0, :cond_2c

    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    if-nez v2, :cond_33

    const/4 v2, -0x1

    :goto_c
    iget-object v3, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v3, v1

    :goto_19
    iget-object v5, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v5

    if-eqz v5, :cond_3c

    :goto_25
    if-lez v0, :cond_3e

    if-gez v2, :cond_3e

    if-nez v1, :cond_3e

    :cond_2b
    :goto_2b
    return-object p3

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzedk;->zzj(Lcom/google/android/gms/internal/zzedk;)I

    move-result v0

    goto :goto_7

    :cond_33
    iget-object v2, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzedk;->zzj(Lcom/google/android/gms/internal/zzedk;)I

    move-result v2

    goto :goto_c

    :cond_3a
    move v3, v4

    goto :goto_19

    :cond_3c
    move v1, v4

    goto :goto_25

    :cond_3e
    if-lez v0, :cond_48

    if-eqz v1, :cond_48

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v5

    if-nez v5, :cond_2b

    :cond_48
    if-lez v0, :cond_59

    if-nez v2, :cond_59

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object p3

    goto :goto_2b

    :cond_57
    move-object p3, p2

    goto :goto_2b

    :cond_59
    if-nez v3, :cond_5d

    if-eqz v1, :cond_eb

    :cond_5d
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_7a
    invoke-interface {p3}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_92
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bb

    :cond_b4
    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzp()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bb
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v2, p2

    :goto_c2
    if-ge v4, v3, :cond_e8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v5

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v6

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v7

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/google/android/gms/internal/zzekk;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v6

    if-eq v6, v5, :cond_ee

    invoke-interface {v2, v1, v6}, Lcom/google/android/gms/internal/zzekd;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    :goto_e6
    move-object v2, v1

    goto :goto_c2

    :cond_e8
    move-object p3, v2

    goto/16 :goto_2b

    :cond_eb
    move-object p3, p2

    goto/16 :goto_2b

    :cond_ee
    move-object v1, v2

    goto :goto_e6
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekk;->zzndj:Lcom/google/android/gms/internal/zzekd;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x37

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "RangeMerge{optExclusiveStart="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", optInclusiveEnd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekk;->zzndj:Lcom/google/android/gms/internal/zzekd;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzekk;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0
.end method
