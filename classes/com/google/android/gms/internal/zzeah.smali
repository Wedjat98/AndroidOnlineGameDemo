.class public final Lcom/google/android/gms/internal/zzeah;
.super Ljava/lang/Object;


# static fields
.field private static final zzmmf:Lcom/google/android/gms/internal/zzeaj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzeai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeai;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeah;->zzmmf:Lcom/google/android/gms/internal/zzeaj;

    return-void
.end method

.method public static zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeag;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/zzeag",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeae;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static zza(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeag;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/android/gms/internal/zzeag",
            "<TA;TB;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/google/android/gms/internal/zzeah;->zzmmf:Lcom/google/android/gms/internal/zzeaj;

    invoke-static {v0, p0, v1, p1}, Lcom/google/android/gms/internal/zzeae;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzeaj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeae;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzeau;->zzb(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeau;

    move-result-object v0

    goto :goto_17
.end method

.method public static zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzeaj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeag;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/android/gms/internal/zzeaj",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/android/gms/internal/zzeag",
            "<TA;TC;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_d

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeae;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzeaj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeae;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeaw;->zzc(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzeaj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeau;

    move-result-object v0

    goto :goto_c
.end method

.method public static zzbtj()Lcom/google/android/gms/internal/zzeaj;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/zzeaj",
            "<TA;TA;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzeah;->zzmmf:Lcom/google/android/gms/internal/zzeaj;

    return-object v0
.end method
