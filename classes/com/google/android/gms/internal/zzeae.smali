.class public final Lcom/google/android/gms/internal/zzeae;
.super Lcom/google/android/gms/internal/zzeag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzeag",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final zzmly:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final zzmlz:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private final zzmma:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TK;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeag;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmlz:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeae;->zzmma:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TK;>;[TK;[TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeag;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeae;->zzmlz:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeae;->zzmma:Ljava/util/Comparator;

    return-void
.end method

.method public static zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzeaj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeae;
    .registers 9
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
            "Lcom/google/android/gms/internal/zzeae",
            "<TA;TC;>;"
        }
    .end annotation

    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/zzeaj;->zzbk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_29
    new-instance v0, Lcom/google/android/gms/internal/zzeae;

    invoke-direct {v0, p3, v1, v2}, Lcom/google/android/gms/internal/zzeae;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeae;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    return-object v0
.end method

.method private static zza([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static zza([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v1, p1

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeae;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmlz:[Ljava/lang/Object;

    return-object v0
.end method

.method private static zzb([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v1, p1

    return-object v1
.end method

.method private final zzbi(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmma:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return v0
.end method

.method private final zzbj(Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v4, v3

    move v1, v0

    :goto_5
    if-ge v1, v4, :cond_19

    aget-object v2, v3, v1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzeae;->zzmma:Ljava/util/Comparator;

    invoke-interface {v5, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_12

    :goto_11
    return v0

    :cond_12
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_5

    :cond_19
    const/4 v0, -0x1

    goto :goto_11
.end method

.method private final zzj(IZ)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeaf;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzeaf;-><init>(Lcom/google/android/gms/internal/zzeae;IZ)V

    return-object v0
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeae;->zzbj(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeae;->zzbj(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmlz:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmma:Ljava/util/Comparator;

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeae;->zzbj(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/android/gms/internal/zzeae;->zzj(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzear;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzear",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeae;->zzmlz:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzear;->zzh(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method public final zzbf(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeag;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/android/gms/internal/zzeag",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeae;->zzbj(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    :goto_7
    return-object p0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzeae;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeae;->zzmlz:[Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzeae;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzeae;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeae;->zzmma:Ljava/util/Comparator;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzeae;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_7
.end method

.method public final zzbg(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeae;->zzbi(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzeae;->zzj(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzbh(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeae;->zzbj(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t find predecessor of nonexistent key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-lez v0, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final zzbtg()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final zzbth()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final zzbti()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzeae;->zzj(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeag;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/android/gms/internal/zzeag",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeae;->zzbj(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmlz:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p2, :cond_14

    :goto_13
    return-object p0

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/zzeae;->zzb([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeae;->zzmlz:[Ljava/lang/Object;

    invoke-static {v2, v0, p2}, Lcom/google/android/gms/internal/zzeae;->zzb([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzeae;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeae;->zzmma:Ljava/util/Comparator;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzeae;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_13

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v0, v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_58

    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    :goto_3b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_4e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeae;->zzmlz:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_4e
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeae;->zzmma:Ljava/util/Comparator;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzeau;->zzb(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeau;

    move-result-object p0

    goto :goto_13

    :cond_58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeae;->zzbi(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeae;->zzmly:[Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/zzeae;->zza([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeae;->zzmlz:[Ljava/lang/Object;

    invoke-static {v2, v0, p2}, Lcom/google/android/gms/internal/zzeae;->zza([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzeae;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeae;->zzmma:Ljava/util/Comparator;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzeae;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_13
.end method
