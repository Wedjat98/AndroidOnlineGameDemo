.class public final Lcom/google/android/gms/internal/zzcig;
.super Lcom/google/android/gms/internal/zzcjl;


# static fields
.field private static zzjdx:I

.field private static zzjdy:I


# instance fields
.field private final zzjdz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzjea:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzjeb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzjec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcly;",
            ">;"
        }
    .end annotation
.end field

.field private final zzjed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzjee:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xffff

    sput v0, Lcom/google/android/gms/internal/zzcig;->zzjdx:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/zzcig;->zzjdy:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjdz:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjea:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjeb:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjec:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjee:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjed:Ljava/util/Map;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcly;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcly;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    if-eqz p0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcly;->zzjky:[Lcom/google/android/gms/internal/zzclz;

    if-eqz v0, :cond_1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcly;->zzjky:[Lcom/google/android/gms/internal/zzclz;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_1f

    aget-object v4, v2, v0

    if-eqz v4, :cond_1c

    iget-object v5, v4, Lcom/google/android/gms/internal/zzclz;->key:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzclz;->value:Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    return-object v1
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcly;)V
    .registers 13

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    if-eqz p2, :cond_83

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcly;->zzjkz:[Lcom/google/android/gms/internal/zzclx;

    if-eqz v0, :cond_83

    iget-object v4, p2, Lcom/google/android/gms/internal/zzcly;->zzjkz:[Lcom/google/android/gms/internal/zzclx;

    array-length v5, v4

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v5, :cond_83

    aget-object v6, v4, v0

    iget-object v7, v6, Lcom/google/android/gms/internal/zzclx;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v6

    const-string v7, "EventConfig contained null event name"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_32
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    iget-object v7, v6, Lcom/google/android/gms/internal/zzclx;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_43

    iput-object v7, v6, Lcom/google/android/gms/internal/zzclx;->name:Ljava/lang/String;

    :cond_43
    iget-object v7, v6, Lcom/google/android/gms/internal/zzclx;->name:Ljava/lang/String;

    iget-object v8, v6, Lcom/google/android/gms/internal/zzclx;->zzjkt:Ljava/lang/Boolean;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v6, Lcom/google/android/gms/internal/zzclx;->name:Ljava/lang/String;

    iget-object v8, v6, Lcom/google/android/gms/internal/zzclx;->zzjku:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v6, Lcom/google/android/gms/internal/zzclx;->zzjkv:Ljava/lang/Integer;

    if-eqz v7, :cond_32

    iget-object v7, v6, Lcom/google/android/gms/internal/zzclx;->zzjkv:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lcom/google/android/gms/internal/zzcig;->zzjdy:I

    if-lt v7, v8, :cond_69

    iget-object v7, v6, Lcom/google/android/gms/internal/zzclx;->zzjkv:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lcom/google/android/gms/internal/zzcig;->zzjdx:I

    if-le v7, v8, :cond_7b

    :cond_69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v7

    const-string v8, "Invalid sampling rate. Event name, sample rate"

    iget-object v9, v6, Lcom/google/android/gms/internal/zzclx;->name:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzclx;->zzjkv:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_32

    :cond_7b
    iget-object v7, v6, Lcom/google/android/gms/internal/zzclx;->name:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzclx;->zzjkv:Ljava/lang/Integer;

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_83
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjea:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjeb:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjed:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzc(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzcly;
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    if-nez p2, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzcly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcly;-><init>()V

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/zzfjj;->zzn([BII)Lcom/google/android/gms/internal/zzfjj;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzcly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcly;-><init>()V

    :try_start_13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfjs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Parsed config. version, gmp_app_id"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcly;->zzjkw:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcly;->zzixs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_27} :catch_28

    goto :goto_7

    :catch_28
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Unable to merge remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcly;-><init>()V

    goto :goto_7
.end method

.method private final zzjr(Ljava/lang/String;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjec:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcgo;->zzjd(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjdz:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjea:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjeb:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjec:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjee:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjed:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcig;->zzc(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzcly;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcig;->zzjdz:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcig;->zza(Lcom/google/android/gms/internal/zzcly;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcig;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcly;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcig;->zzjec:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjee:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zzam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcig;->zzjr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjdz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_17

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method final zzan(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcig;->zzjr(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzclq;->zzkl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {p2}, Lcom/google/android/gms/internal/zzclq;->zzki(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzclq;->zzkm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {p2}, Lcom/google/android/gms/internal/zzclq;->zzjz(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjea:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_42

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_3d

    move v0, v1

    goto :goto_18

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_18

    :cond_42
    move v0, v1

    goto :goto_18
.end method

.method final zzao(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcig;->zzjr(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjeb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2a

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_10

    :cond_25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_10

    :cond_2a
    move v0, v1

    goto :goto_10
.end method

.method final zzap(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcig;->zzjr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjed:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_20

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1a

    :cond_20
    move v0, v1

    goto :goto_1a
.end method

.method public final bridge synthetic zzawi()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawi()V

    return-void
.end method

.method public final bridge synthetic zzawj()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawj()V

    return-void
.end method

.method public final bridge synthetic zzawk()Lcom/google/android/gms/internal/zzcgd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawl()Lcom/google/android/gms/internal/zzcgk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawm()Lcom/google/android/gms/internal/zzcjn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawn()Lcom/google/android/gms/internal/zzchh;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawo()Lcom/google/android/gms/internal/zzcgu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawp()Lcom/google/android/gms/internal/zzckg;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawq()Lcom/google/android/gms/internal/zzckc;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawr()Lcom/google/android/gms/internal/zzchi;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaws()Lcom/google/android/gms/internal/zzcgo;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawt()Lcom/google/android/gms/internal/zzchk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawu()Lcom/google/android/gms/internal/zzclq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawv()Lcom/google/android/gms/internal/zzcig;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaww()Lcom/google/android/gms/internal/zzclf;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaww()Lcom/google/android/gms/internal/zzclf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawx()Lcom/google/android/gms/internal/zzcih;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawy()Lcom/google/android/gms/internal/zzchm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawz()Lcom/google/android/gms/internal/zzchx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaxa()Lcom/google/android/gms/internal/zzcgn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaxa()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzaxz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzb(Ljava/lang/String;[BLjava/lang/String;)Z
    .registers 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/zzcig;->zzc(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzcly;

    move-result-object v5

    if-nez v5, :cond_11

    const/4 v2, 0x0

    :goto_10
    return v2

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzcig;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcly;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcig;->zzjec:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcig;->zzjee:Ljava/util/Map;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcig;->zzjdz:Ljava/util/Map;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcig;->zza(Lcom/google/android/gms/internal/zzcly;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/internal/zzcly;->zzjla:[Lcom/google/android/gms/internal/zzclr;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v8, v7

    const/4 v2, 0x0

    move v4, v2

    :goto_45
    if-ge v4, v8, :cond_8e

    aget-object v9, v7, v4

    iget-object v10, v9, Lcom/google/android/gms/internal/zzclr;->zzjju:[Lcom/google/android/gms/internal/zzcls;

    array-length v11, v10

    const/4 v2, 0x0

    move v3, v2

    :goto_4e
    if-ge v3, v11, :cond_75

    aget-object v2, v10, v3

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5c

    iput-object v12, v2, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    :cond_5c
    iget-object v12, v2, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    array-length v13, v12

    const/4 v2, 0x0

    :goto_60
    if-ge v2, v13, :cond_71

    aget-object v14, v12, v2

    iget-object v15, v14, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    invoke-static {v15}, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zziq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6e

    iput-object v15, v14, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    :cond_71
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4e

    :cond_75
    iget-object v3, v9, Lcom/google/android/gms/internal/zzclr;->zzjjt:[Lcom/google/android/gms/internal/zzclv;

    array-length v9, v3

    const/4 v2, 0x0

    :goto_79
    if-ge v2, v9, :cond_8a

    aget-object v10, v3, v2

    iget-object v11, v10, Lcom/google/android/gms/internal/zzclv;->zzjkm:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_87

    iput-object v11, v10, Lcom/google/android/gms/internal/zzclv;->zzjkm:Ljava/lang/String;

    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_8a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_45

    :cond_8e
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcjk;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v7}, Lcom/google/android/gms/internal/zzcgo;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzclr;)V

    const/4 v2, 0x0

    :try_start_98
    iput-object v2, v5, Lcom/google/android/gms/internal/zzcly;->zzjla:[Lcom/google/android/gms/internal/zzclr;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzfjs;->zzho()I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzfjk;->zzo([BII)Lcom/google/android/gms/internal/zzfjk;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjk;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a9} :catch_f1

    move-object/from16 p2, v2

    :goto_ab
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "remote_config"

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_c4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "apps"

    const-string v6, "app_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_ee

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Failed to update remote config (got 0). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ee
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c4 .. :try_end_ee} :catch_104

    :cond_ee
    :goto_ee
    const/4 v2, 0x1

    goto/16 :goto_10

    :catch_f1
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ab

    :catch_104
    move-exception v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Error storing remote config. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ee
.end method

.method protected final zzjs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcly;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcig;->zzjr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjec:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcly;

    return-object v0
.end method

.method protected final zzjt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjee:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected final zzju(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjee:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzjv(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjec:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic zzve()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzve()V

    return-void
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/common/util/zzd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method
