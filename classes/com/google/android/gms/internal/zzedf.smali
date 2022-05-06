.class public final Lcom/google/android/gms/internal/zzedf;
.super Lcom/google/android/gms/internal/zzedc;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized setLogLevel(Lcom/google/firebase/database/Logger$Level;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvx()V

    sget-object v0, Lcom/google/android/gms/internal/zzedg;->zzmsk:[I

    invoke-virtual {p1}, Lcom/google/firebase/database/Logger$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown log level: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_39
    :try_start_39
    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbm:Lcom/google/android/gms/internal/zzeje;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedf;->zzmsg:Lcom/google/android/gms/internal/zzeje;
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_36

    :goto_3d
    monitor-exit p0

    return-void

    :pswitch_3f
    :try_start_3f
    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbn:Lcom/google/android/gms/internal/zzeje;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedf;->zzmsg:Lcom/google/android/gms/internal/zzeje;

    goto :goto_3d

    :pswitch_44
    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbo:Lcom/google/android/gms/internal/zzeje;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedf;->zzmsg:Lcom/google/android/gms/internal/zzeje;

    goto :goto_3d

    :pswitch_49
    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbp:Lcom/google/android/gms/internal/zzeje;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedf;->zzmsg:Lcom/google/android/gms/internal/zzeje;

    goto :goto_3d

    :pswitch_4e
    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbq:Lcom/google/android/gms/internal/zzeje;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedf;->zzmsg:Lcom/google/android/gms/internal/zzeje;
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_36

    goto :goto_3d

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_39
        :pswitch_3f
        :pswitch_44
        :pswitch_49
        :pswitch_4e
    .end packed-switch
.end method

.method public final declared-synchronized setPersistenceCacheSizeBytes(J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvx()V

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_16

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "The minimum cache size must be at least 1MB"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_16
    const-wide/32 v0, 0x6400000

    cmp-long v0, p1, v0

    if-lez v0, :cond_25

    :try_start_1d
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Firebase Database currently doesn\'t support a cache size larger than 100MB"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzedf;->cacheSize:J
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_13

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized setPersistenceEnabled(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvx()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmnr:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzd(Lcom/google/firebase/FirebaseApp;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmlg:Lcom/google/firebase/FirebaseApp;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzpx(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvx()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session identifier is not allowed to be empty or null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_17
    :try_start_17
    iput-object p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmsf:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_14

    monitor-exit p0

    return-void
.end method
