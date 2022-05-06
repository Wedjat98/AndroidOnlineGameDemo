.class public final Lcom/google/android/gms/internal/zzeih;
.super Ljava/lang/Object;


# static fields
.field public static final zznae:Lcom/google/android/gms/internal/zzeih;


# instance fields
.field private zznaa:Lcom/google/android/gms/internal/zzejv;

.field private zznaf:Ljava/lang/Integer;

.field private zznag:I

.field private zznah:Lcom/google/android/gms/internal/zzekd;

.field private zznai:Lcom/google/android/gms/internal/zzejg;

.field private zznaj:Lcom/google/android/gms/internal/zzekd;

.field private zznak:Lcom/google/android/gms/internal/zzejg;

.field private zznal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzeih;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeih;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeih;->zznae:Lcom/google/android/gms/internal/zzeih;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    invoke-static {}, Lcom/google/android/gms/internal/zzeki;->zzcap()Lcom/google/android/gms/internal/zzeki;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznal:Ljava/lang/String;

    return-void
.end method

.method public static zzam(Ljava/util/Map;)Lcom/google/android/gms/internal/zzeih;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzeih;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/zzeih;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzeih;-><init>()V

    const-string v0, "l"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    const-string v0, "sp"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "sp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeih;->zze(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    const-string v0, "sn"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3b

    invoke-static {v0}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    :cond_3b
    const-string v0, "ep"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "ep"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeih;->zze(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    const-string v0, "en"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_67

    invoke-static {v0}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    :cond_67
    const-string v0, "vf"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7d

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    sget v0, Lcom/google/android/gms/internal/zzeij;->zznan:I

    :goto_7b
    iput v0, v2, Lcom/google/android/gms/internal/zzeih;->zznag:I

    :cond_7d
    const-string v0, "i"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_95

    const-string v1, ".value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-static {}, Lcom/google/android/gms/internal/zzekn;->zzcaq()Lcom/google/android/gms/internal/zzekn;

    move-result-object v0

    :goto_93
    iput-object v0, v2, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    :cond_95
    return-object v2

    :cond_96
    sget v0, Lcom/google/android/gms/internal/zzeij;->zznao:I

    goto :goto_7b

    :cond_99
    const-string v1, ".key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-static {}, Lcom/google/android/gms/internal/zzejx;->zzcal()Lcom/google/android/gms/internal/zzejx;

    move-result-object v0

    goto :goto_93

    :cond_a6
    const-string v1, ".priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "queryDefinition shouldn\'t ever be .priority since it\'s the default"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b6
    new-instance v1, Lcom/google/android/gms/internal/zzekh;

    new-instance v3, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/zzekh;-><init>(Lcom/google/android/gms/internal/zzedk;)V

    move-object v0, v1

    goto :goto_93
.end method

.method private final zzbys()Lcom/google/android/gms/internal/zzeih;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzeih;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeih;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    iget v1, p0, Lcom/google/android/gms/internal/zzeih;->zznag:I

    iput v1, v0, Lcom/google/android/gms/internal/zzeih;->zznag:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    return-object v0
.end method

.method private static zze(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .registers 5

    instance-of v0, p0, Lcom/google/android/gms/internal/zzekl;

    if-nez v0, :cond_10

    instance-of v0, p0, Lcom/google/android/gms/internal/zzejf;

    if-nez v0, :cond_10

    instance-of v0, p0, Lcom/google/android/gms/internal/zzejt;

    if-nez v0, :cond_10

    instance-of v0, p0, Lcom/google/android/gms/internal/zzeju;

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-object p0

    :cond_11
    instance-of v0, p0, Lcom/google/android/gms/internal/zzekb;

    if-eqz v0, :cond_2e

    new-instance v1, Lcom/google/android/gms/internal/zzejt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzejt;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzekd;)V

    move-object p0, v1

    goto :goto_10

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected value passed to normalizeValue: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/google/android/gms/internal/zzeih;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_23
    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p1, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    if-nez v2, :cond_23

    :cond_29
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    :cond_37
    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p1, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    if-nez v2, :cond_37

    :cond_3d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzejg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    :cond_4b
    move v0, v1

    goto :goto_4

    :cond_4d
    iget-object v2, p1, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    if-nez v2, :cond_4b

    :cond_51
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    :cond_5f
    move v0, v1

    goto :goto_4

    :cond_61
    iget-object v2, p1, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    if-nez v2, :cond_5f

    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzejg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    :cond_73
    move v0, v1

    goto :goto_4

    :cond_75
    iget-object v2, p1, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    if-nez v2, :cond_73

    :cond_79
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    :cond_87
    move v0, v1

    goto/16 :goto_4

    :cond_8a
    iget-object v2, p1, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    if-nez v2, :cond_87

    :cond_8e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyt()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeih;->zzbyt()Z

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public final getLimit()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyp()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get limit if limit has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyt()Z

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v0, 0x4cf

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_22
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejg;->hashCode()I

    move-result v0

    :goto_2f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejg;->hashCode()I

    move-result v0

    :goto_49
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    if-eqz v2, :cond_56

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_56
    add-int/2addr v0, v1

    return v0

    :cond_58
    move v0, v1

    goto :goto_b

    :cond_5a
    const/16 v0, 0x4d5

    goto :goto_15

    :cond_5d
    move v0, v1

    goto :goto_22

    :cond_5f
    move v0, v1

    goto :goto_2f

    :cond_61
    move v0, v1

    goto :goto_3c

    :cond_63
    move v0, v1

    goto :goto_49
.end method

.method public final isDefault()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyv()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-static {}, Lcom/google/android/gms/internal/zzeki;->zzcap()Lcom/google/android/gms/internal/zzeki;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyu()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzeih;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeih;->zzbys()Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzeih;
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/zzekb;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/zzelt;->zzcp(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeih;->zzbys()Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzeih;
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/internal/zzekb;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/zzelt;->zzcp(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeih;->zzbys()Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final zzbyj()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final zzbyk()Lcom/google/android/gms/internal/zzekd;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method public final zzbyl()Lcom/google/android/gms/internal/zzejg;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    :goto_14
    return-object v0

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzn()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    goto :goto_14
.end method

.method public final zzbym()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final zzbyn()Lcom/google/android/gms/internal/zzekd;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbym()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method public final zzbyo()Lcom/google/android/gms/internal/zzejg;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbym()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    :goto_14
    return-object v0

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzo()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    goto :goto_14
.end method

.method public final zzbyp()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final zzbyq()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyp()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/zzeih;->zznag:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final zzbyr()Lcom/google/android/gms/internal/zzejv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    return-object v0
.end method

.method public final zzbyt()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzeih;->zznag:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/zzeih;->zznag:I

    sget v1, Lcom/google/android/gms/internal/zzeij;->zznan:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    goto :goto_b
.end method

.method public final zzbyu()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "sp"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznah:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    if-eqz v0, :cond_25

    const-string v0, "sn"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznai:Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbym()Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "ep"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznaj:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    if-eqz v0, :cond_45

    const-string v0, "en"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznak:Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    if-eqz v0, :cond_65

    const-string v0, "l"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/zzeih;->zznag:I

    if-nez v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    if-eqz v0, :cond_7d

    sget v0, Lcom/google/android/gms/internal/zzeij;->zznan:I

    :cond_5c
    :goto_5c
    sget-object v2, Lcom/google/android/gms/internal/zzeii;->zznam:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_90

    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-static {}, Lcom/google/android/gms/internal/zzeki;->zzcap()Lcom/google/android/gms/internal/zzeki;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    const-string v0, "i"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejv;->zzcah()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    return-object v1

    :cond_7d
    sget v0, Lcom/google/android/gms/internal/zzeij;->zznao:I

    goto :goto_5c

    :pswitch_80
    const-string v0, "vf"

    const-string v2, "l"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :pswitch_88
    const-string v0, "vf"

    const-string v2, "r"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_80
        :pswitch_88
    .end packed-switch
.end method

.method public final zzbyv()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyj()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbym()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyp()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final zzbyw()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznal:Ljava/lang/String;

    if-nez v0, :cond_e

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyu()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelh;->zzbt(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznal:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_11

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeih;->zznal:Ljava/lang/String;

    return-object v0

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzbyx()Lcom/google/android/gms/internal/zzeiw;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyv()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/zzeiu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeih;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeiu;-><init>(Lcom/google/android/gms/internal/zzejv;)V

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeih;->zzbyp()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/google/android/gms/internal/zzeiv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeiv;-><init>(Lcom/google/android/gms/internal/zzeih;)V

    goto :goto_d

    :cond_1a
    new-instance v0, Lcom/google/android/gms/internal/zzeiy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeiy;-><init>(Lcom/google/android/gms/internal/zzeih;)V

    goto :goto_d
.end method

.method public final zzgr(I)Lcom/google/android/gms/internal/zzeih;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeih;->zzbys()Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    sget v1, Lcom/google/android/gms/internal/zzeij;->zznan:I

    iput v1, v0, Lcom/google/android/gms/internal/zzeih;->zznag:I

    return-object v0
.end method

.method public final zzgs(I)Lcom/google/android/gms/internal/zzeih;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeih;->zzbys()Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzeih;->zznaf:Ljava/lang/Integer;

    sget v1, Lcom/google/android/gms/internal/zzeij;->zznao:I

    iput v1, v0, Lcom/google/android/gms/internal/zzeih;->zznag:I

    return-object v0
.end method
