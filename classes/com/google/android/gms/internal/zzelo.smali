.class public final Lcom/google/android/gms/internal/zzelo;
.super Ljava/lang/Object;


# direct methods
.method private static zzc(Lcom/google/android/gms/internal/zzejy;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzejy",
            "<*>;)J"
        }
    .end annotation

    const-wide/16 v0, 0x8

    instance-of v2, p0, Lcom/google/android/gms/internal/zzejt;

    if-eqz v2, :cond_11

    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzejy;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_59

    :goto_10
    return-wide v0

    :cond_11
    instance-of v2, p0, Lcom/google/android/gms/internal/zzekb;

    if-nez v2, :cond_6

    instance-of v0, p0, Lcom/google/android/gms/internal/zzejf;

    if-eqz v0, :cond_1c

    const-wide/16 v0, 0x4

    goto :goto_6

    :cond_1c
    instance-of v0, p0, Lcom/google/android/gms/internal/zzekl;

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzejy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    goto :goto_6

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown leaf node type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    const-wide/16 v2, 0x18

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzejy;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzejy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelo;->zzc(Lcom/google/android/gms/internal/zzejy;)J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_10
.end method

.method public static zzn(Lcom/google/android/gms/internal/zzekd;)J
    .registers 11

    const-wide/16 v4, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    move-wide v2, v4

    :cond_9
    :goto_9
    return-wide v2

    :cond_a
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-eqz v0, :cond_17

    check-cast p0, Lcom/google/android/gms/internal/zzejy;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzelo;->zzc(Lcom/google/android/gms/internal/zzejy;)J

    move-result-wide v2

    goto :goto_9

    :cond_17
    const-wide/16 v0, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v2, v8

    add-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelo;->zzn(Lcom/google/android/gms/internal/zzekd;)J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_1e

    :cond_44
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0xc

    add-long/2addr v2, v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzejy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelo;->zzc(Lcom/google/android/gms/internal/zzejy;)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_9
.end method

.method public static zzo(Lcom/google/android/gms/internal/zzekd;)I
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelo;->zzo(Lcom/google/android/gms/internal/zzekd;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_15

    :cond_2c
    move v0, v1

    goto :goto_7
.end method
