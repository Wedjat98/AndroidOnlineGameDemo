.class public final Lcom/google/android/gms/internal/zzckc;
.super Lcom/google/android/gms/internal/zzcjl;


# instance fields
.field protected zzjhn:Lcom/google/android/gms/internal/zzckf;

.field private volatile zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private zzjhp:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private zzjhq:J

.field private final zzjhr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/zzckf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzjhs:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzjht:Z

.field private zzjhu:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private zzjhv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhr:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhs:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private final zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzckf;Z)V
    .registers 13
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    :goto_9
    if-eqz v1, :cond_af

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    move-object v1, v0

    :goto_11
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzckc;->zzjht:Z

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/AppMeasurement$zza;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_25} :catch_56
    .catchall {:try_start_13 .. :try_end_25} :catchall_a8

    :try_start_25
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/measurement/AppMeasurement$zza;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_47
    .catchall {:try_start_25 .. :try_end_28} :catchall_a8

    move-result v0

    and-int/2addr v2, v0

    goto :goto_19

    :cond_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjhp:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v1, :cond_b2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzckc;->zzjhq:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_b2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjhp:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    goto :goto_9

    :catch_47
    move-exception v0

    :try_start_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "onScreenChangeCallback threw exception"

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_55} :catch_56
    .catchall {:try_start_48 .. :try_end_55} :catchall_a8

    goto :goto_19

    :catch_56
    move-exception v0

    move-object v1, v0

    move v0, v2

    :try_start_59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "onScreenChangeCallback loop threw exception"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_a8

    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzckc;->zzjht:Z

    :goto_68
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v1, :cond_ac

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjhp:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    :goto_6e
    if-eqz v0, :cond_a3

    iget-object v0, p2, Lcom/google/android/gms/internal/zzckf;->zziwl:Ljava/lang/String;

    if-nez v0, :cond_82

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckc;->zzjy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/zzckf;->zziwl:Ljava/lang/String;

    :cond_82
    new-instance v0, Lcom/google/android/gms/internal/zzckf;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzckf;-><init>(Lcom/google/android/gms/internal/zzckf;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzckc;->zzjhp:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzckc;->zzjhq:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzckd;

    invoke-direct {v3, p0, p3, v1, v0}, Lcom/google/android/gms/internal/zzckd;-><init>(Lcom/google/android/gms/internal/zzckc;ZLcom/google/android/gms/measurement/AppMeasurement$zzb;Lcom/google/android/gms/internal/zzckf;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    :cond_a3
    return-void

    :cond_a4
    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzckc;->zzjht:Z

    move v0, v2

    goto :goto_68

    :catchall_a8
    move-exception v0

    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzckc;->zzjht:Z

    throw v0

    :cond_ac
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    goto :goto_6e

    :cond_af
    move-object v1, v0

    goto/16 :goto_11

    :cond_b2
    move-object v1, v0

    goto/16 :goto_9
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzckc;Lcom/google/android/gms/internal/zzckf;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzckc;->zza(Lcom/google/android/gms/internal/zzckf;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzckf;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/zzckf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcgd;->zzaj(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzaww()Lcom/google/android/gms/internal/zzclf;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzckf;->zzjib:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzclf;->zzbs(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzckf;->zzjib:Z

    :cond_1e
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V
    .registers 6

    if-eqz p1, :cond_25

    if-eqz p0, :cond_25

    const-string v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwk:Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string v0, "_sn"

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwk:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string v0, "_sc"

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_si"

    iget-wide v2, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwm:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_25
    return-void
.end method

.method private static zzjy(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x24

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_11

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_10

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzckc;->zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzckf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjhp:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzckc;->zzjhq:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcke;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzcke;-><init>(Lcom/google/android/gms/internal/zzckc;Lcom/google/android/gms/internal/zzckf;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 7
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzckc;->zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzckf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzckc;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzckf;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/zzcgg;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzcgg;-><init>(Lcom/google/android/gms/internal/zzcgd;J)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 9
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzckf;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzckf;->zziwm:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "name"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzckf;->zziwk:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "referrer_name"

    iget-object v0, v0, Lcom/google/android/gms/internal/zzckf;->zziwl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public final registerOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zza;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Attempting to register null OnScreenChangeCallback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/16 v2, 0x64

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called with a non-null activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    invoke-static {}, Lcom/google/android/gms/internal/zzcih;->zzau()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called from the main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto :goto_11

    :cond_29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjht:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Cannot call setCurrentScreen from onScreenChangeCallback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto :goto_11

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto :goto_11

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_63

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto :goto_11

    :cond_63
    if-nez p3, :cond_71

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckc;->zzjy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_71
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwl:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwk:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzclq;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_94

    if-eqz v1, :cond_94

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazg()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_94
    if-eqz p2, :cond_b9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_b9

    :cond_a2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_b9
    if-eqz p3, :cond_de

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_de

    :cond_c7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_de
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Setting current screen to name, class"

    if-nez p2, :cond_107

    const-string v0, "null"

    :goto_ec
    invoke-virtual {v1, v2, v0, p3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzckf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclq;->zzbay()J

    move-result-wide v2

    invoke-direct {v0, p2, p3, v2, v3}, Lcom/google/android/gms/internal/zzckf;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjhr:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzckc;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzckf;Z)V

    goto/16 :goto_11

    :cond_107
    move-object v0, p2

    goto :goto_ec
.end method

.method public final unregisterOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zza;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhv:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhv:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_16

    :cond_12
    iput-object p1, p0, Lcom/google/android/gms/internal/zzckc;->zzjhv:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckc;->zzjhu:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v0
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

.method public final zzbao()Lcom/google/android/gms/internal/zzckf;
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhn:Lcom/google/android/gms/internal/zzckf;

    return-object v0
.end method

.method public final zzbap()Lcom/google/android/gms/measurement/AppMeasurement$zzb;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjho:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    goto :goto_5
.end method

.method final zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzckf;
    .registers 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckc;->zzjhr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzckf;

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckc;->zzjy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzckf;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzclq;->zzbay()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/google/android/gms/internal/zzckf;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckc;->zzjhr:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-object v0
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
