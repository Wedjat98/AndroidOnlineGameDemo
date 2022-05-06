.class public final Lcom/google/android/gms/internal/zzcxt;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static zzkcd:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzgdn:Ljava/lang/String;

.field private final zzgdp:Ljava/lang/String;

.field private final zzkce:Landroid/os/PowerManager$WakeLock;

.field private zzkcf:Landroid/os/WorkSource;

.field private final zzkcg:I

.field private final zzkch:Ljava/lang/String;

.field private zzkci:Z

.field private final zzkcj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzkck:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WakeLock"

    sput-object v0, Lcom/google/android/gms/internal/zzcxt;->TAG:Ljava/lang/String;

    const-string v0, "*gcore*:"

    sput-object v0, Lcom/google/android/gms/internal/zzcxt;->zzkcd:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzcxt;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_c

    move-object v5, v4

    :goto_5
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcxt;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_5
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcxt;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkci:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcj:Ljava/util/Map;

    const-string v0, "Wake lock name can NOT be empty"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcg:I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcxt;->zzkch:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcxt;->zzgdp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->mContext:Landroid/content/Context;

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    sget-object v0, Lcom/google/android/gms/internal/zzcxt;->zzkcd:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_84

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3f
    iput-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzgdn:Ljava/lang/String;

    :goto_41
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkce:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzy;->zzcy(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-static {p5}, Lcom/google/android/gms/common/util/zzu;->zzgs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    :cond_61
    invoke-static {p1, p5}, Lcom/google/android/gms/common/util/zzy;->zzaa(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcf:Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcf:Landroid/os/WorkSource;

    if-eqz v0, :cond_83

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzy;->zzcy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcf:Landroid/os/WorkSource;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcf:Landroid/os/WorkSource;

    invoke-virtual {v1, v0}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    :goto_7c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcf:Landroid/os/WorkSource;

    :try_start_7e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxt;->zzkce:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7e .. :try_end_83} :catch_90

    :cond_83
    :goto_83
    return-void

    :cond_84
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3f

    :cond_8a
    iput-object p3, p0, Lcom/google/android/gms/internal/zzcxt;->zzgdn:Ljava/lang/String;

    goto :goto_41

    :cond_8d
    iput-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcf:Landroid/os/WorkSource;

    goto :goto_7c

    :catch_90
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzcxt;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83
.end method

.method private final zzkz(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcxt;->zzkci:Z

    if-eqz v1, :cond_f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkch:Ljava/lang/String;

    goto :goto_b

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkch:Ljava/lang/String;

    goto :goto_b
.end method


# virtual methods
.method public final acquire(J)V
    .registers 15

    const-wide/16 v10, 0x3e8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcxt;->zzkz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    monitor-enter p0

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkck:I

    if-lez v0, :cond_26

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkce:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkck:I

    :cond_26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkci:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcj:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcj:Ljava/util/Map;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_45
    if-nez v0, :cond_4f

    :cond_47
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkci:Z

    if-nez v0, :cond_71

    iget v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkck:I

    if-nez v0, :cond_71

    :cond_4f
    invoke-static {}, Lcom/google/android/gms/common/stats/zze;->zzamf()Lcom/google/android/gms/common/stats/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxt;->zzkce:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1, v4}, Lcom/google/android/gms/common/stats/zzc;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcxt;->zzgdn:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcg:I

    iget-object v7, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcf:Landroid/os/WorkSource;

    invoke-static {v7}, Lcom/google/android/gms/common/util/zzy;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/common/stats/zze;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkck:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkck:I

    :cond_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_a .. :try_end_72} :catchall_8a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkce:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :cond_78
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_7a
    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    move v0, v2

    goto :goto_45

    :catchall_8a
    move-exception v0

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_7a .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method public final isHeld()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkce:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public final release()V
    .registers 9

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcxt;->zzkz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    monitor-enter p0

    :try_start_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkci:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcj:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-nez v0, :cond_49

    move v0, v1

    :goto_17
    if-nez v0, :cond_21

    :cond_19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkci:Z

    if-nez v0, :cond_42

    iget v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkck:I

    if-ne v0, v2, :cond_42

    :cond_21
    invoke-static {}, Lcom/google/android/gms/common/stats/zze;->zzamf()Lcom/google/android/gms/common/stats/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxt;->zzkce:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1, v4}, Lcom/google/android/gms/common/stats/zzc;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcxt;->zzgdn:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcg:I

    iget-object v7, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcf:Landroid/os/WorkSource;

    invoke-static {v7}, Lcom/google/android/gms/common/util/zzy;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/stats/zze;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkck:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkck:I

    :cond_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_6b

    :try_start_43
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkce:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_48} :catch_6e

    :goto_48
    return-void

    :cond_49
    const/4 v3, 0x0

    :try_start_4a
    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkcj:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_17

    :cond_59
    const/4 v3, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    move v0, v1

    goto :goto_17

    :catchall_6b
    move-exception v0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_4a .. :try_end_6d} :catchall_6b

    throw v0

    :catch_6e
    move-exception v0

    goto :goto_48
.end method

.method public final setReferenceCounted(Z)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxt;->zzkce:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcxt;->zzkci:Z

    return-void
.end method
