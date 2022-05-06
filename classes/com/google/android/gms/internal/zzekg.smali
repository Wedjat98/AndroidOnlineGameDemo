.class public final Lcom/google/android/gms/internal/zzekg;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    :try_start_0
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_15d

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v3, ".priority"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, ".priority"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzekj;->zzc(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    :cond_1b
    const-string v3, ".value"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const-string v3, ".value"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    :goto_2a
    if-nez v2, :cond_31

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v2

    :goto_30
    return-object v2

    :cond_31
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3e

    new-instance v3, Lcom/google/android/gms/internal/zzekl;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/zzekl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzekd;)V

    move-object v2, v3

    goto :goto_30

    :cond_3e
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_4b

    new-instance v3, Lcom/google/android/gms/internal/zzekb;

    check-cast v2, Ljava/lang/Long;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/zzekb;-><init>(Ljava/lang/Long;Lcom/google/android/gms/internal/zzekd;)V

    move-object v2, v3

    goto :goto_30

    :cond_4b
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_61

    new-instance v3, Lcom/google/android/gms/internal/zzekb;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/zzekb;-><init>(Ljava/lang/Long;Lcom/google/android/gms/internal/zzekd;)V

    move-object v2, v3

    goto :goto_30

    :cond_61
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_6e

    new-instance v3, Lcom/google/android/gms/internal/zzejt;

    check-cast v2, Ljava/lang/Double;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/zzejt;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzekd;)V

    move-object v2, v3

    goto :goto_30

    :cond_6e
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_7b

    new-instance v3, Lcom/google/android/gms/internal/zzejf;

    check-cast v2, Ljava/lang/Boolean;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/zzejf;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzekd;)V

    move-object v2, v3

    goto :goto_30

    :cond_7b
    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_83

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_137

    :cond_83
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_ed

    check-cast v2, Ljava/util/Map;

    const-string v3, ".sv"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    new-instance v3, Lcom/google/android/gms/internal/zzejs;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/zzejs;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzekd;)V

    move-object v2, v3

    goto :goto_30

    :cond_98
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a9
    :goto_a9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a9

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a9

    invoke-static {v3}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_d6} :catch_d7

    goto :goto_a9

    :catch_d7
    move-exception v2

    new-instance v3, Lcom/google/firebase/database/DatabaseException;

    const-string v4, "Failed to parse node"

    invoke-direct {v3, v4, v2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_e0
    move-object v2, v4

    :goto_e1
    :try_start_e1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12a

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v2

    goto/16 :goto_30

    :cond_ed
    check-cast v2, Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    const/4 v4, 0x0

    :goto_f9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_15b

    const/16 v5, 0xb

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_127

    invoke-static {v5}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v5

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_127
    add-int/lit8 v4, v4, 0x1

    goto :goto_f9

    :cond_12a
    sget-object v3, Lcom/google/android/gms/internal/zzeji;->zznbw:Ljava/util/Comparator;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzeah;->zza(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeag;

    move-result-object v3

    new-instance v2, Lcom/google/android/gms/internal/zzeji;

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/zzeji;-><init>(Lcom/google/android/gms/internal/zzeag;Lcom/google/android/gms/internal/zzekd;)V

    goto/16 :goto_30

    :cond_137
    new-instance v3, Lcom/google/firebase/database/DatabaseException;

    const-string v4, "Failed to parse node with class "

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_155

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_151
    invoke-direct {v3, v2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_155
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_15a
    .catch Ljava/lang/ClassCastException; {:try_start_e1 .. :try_end_15a} :catch_d7

    goto :goto_151

    :cond_15b
    move-object v2, v3

    goto :goto_e1

    :cond_15d
    move-object v2, p0

    goto/16 :goto_2a
.end method
