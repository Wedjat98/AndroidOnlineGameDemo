.class public Lcom/google/android/gms/internal/zzedc;
.super Ljava/lang/Object;


# instance fields
.field protected cacheSize:J

.field protected zzmlg:Lcom/google/firebase/FirebaseApp;

.field private zzmnq:Lcom/google/android/gms/internal/zzejd;

.field protected zzmnr:Z

.field private zzmnt:Ljava/lang/String;

.field private zzmrp:Z

.field protected zzmsc:Lcom/google/android/gms/internal/zzedj;

.field protected zzmsd:Lcom/google/android/gms/internal/zzect;

.field protected zzmse:Lcom/google/android/gms/internal/zzeew;

.field protected zzmsf:Ljava/lang/String;

.field protected zzmsg:Lcom/google/android/gms/internal/zzeje;

.field private zzmsh:Z

.field private zzmsi:Lcom/google/android/gms/internal/zzedm;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbn:Lcom/google/android/gms/internal/zzeje;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsg:Lcom/google/android/gms/internal/zzeje;

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzedc;->cacheSize:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzedc;->zzmrp:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzedc;->zzmsh:Z

    return-void
.end method

.method private final zzbud()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmse:Lcom/google/android/gms/internal/zzeew;

    instance-of v1, v0, Lcom/google/android/gms/internal/zzelk;

    if-nez v1, :cond_e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Custom run loops are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    check-cast v0, Lcom/google/android/gms/internal/zzelk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelk;->zzbud()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private final zzbvu()Lcom/google/android/gms/internal/zzedm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsi:Lcom/google/android/gms/internal/zzedm;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvv()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsi:Lcom/google/android/gms/internal/zzedm;

    return-object v0
.end method

.method private final declared-synchronized zzbvv()V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/zzdzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedc;->zzmlg:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdzw;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsi:Lcom/google/android/gms/internal/zzedm;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final isPersistenceEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmnr:Z

    return v0
.end method

.method final stop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmse:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeew;->shutdown()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzebk;Lcom/google/android/gms/internal/zzebn;)Lcom/google/android/gms/internal/zzebm;
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvu()Lcom/google/android/gms/internal/zzedm;

    move-result-object v8

    new-instance v0, Lcom/google/android/gms/internal/zzebi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedc;->zzmnq:Lcom/google/android/gms/internal/zzejd;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzedc;->zzmsd:Lcom/google/android/gms/internal/zzect;

    new-instance v2, Lcom/google/android/gms/internal/zzedd;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzedd;-><init>(Lcom/google/android/gms/internal/zzect;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;->zzbud()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzedc;->zzmnr:Z

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzedc;->zzmnt:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvu()Lcom/google/android/gms/internal/zzedm;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/internal/zzedm;->zzbta()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzebi;-><init>(Lcom/google/android/gms/internal/zzejd;Lcom/google/android/gms/internal/zzebg;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzedm;->zza(Lcom/google/android/gms/internal/zzedc;Lcom/google/android/gms/internal/zzebi;Lcom/google/android/gms/internal/zzebk;Lcom/google/android/gms/internal/zzebn;)Lcom/google/android/gms/internal/zzebm;

    move-result-object v0

    return-object v0
.end method

.method public final zzbuf()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmnt:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized zzbvl()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmrp:Z

    if-nez v0, :cond_81

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmrp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmnq:Lcom/google/android/gms/internal/zzejd;

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvu()Lcom/google/android/gms/internal/zzedm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedc;->zzmsg:Lcom/google/android/gms/internal/zzeje;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzedm;->zza(Lcom/google/android/gms/internal/zzedc;Lcom/google/android/gms/internal/zzeje;Ljava/util/List;)Lcom/google/android/gms/internal/zzejd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmnq:Lcom/google/android/gms/internal/zzejd;

    :cond_19
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvu()Lcom/google/android/gms/internal/zzedm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmnt:Ljava/lang/String;

    if-nez v0, :cond_4d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvu()Lcom/google/android/gms/internal/zzedm;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzedm;->zzc(Lcom/google/android/gms/internal/zzedc;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firebase/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "5/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmnt:Ljava/lang/String;

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsc:Lcom/google/android/gms/internal/zzedj;

    if-nez v0, :cond_5b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvu()Lcom/google/android/gms/internal/zzedm;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzedm;->zza(Lcom/google/android/gms/internal/zzedc;)Lcom/google/android/gms/internal/zzedj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsc:Lcom/google/android/gms/internal/zzedj;

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmse:Lcom/google/android/gms/internal/zzeew;

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsi:Lcom/google/android/gms/internal/zzedm;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzedm;->zzb(Lcom/google/android/gms/internal/zzedc;)Lcom/google/android/gms/internal/zzeew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmse:Lcom/google/android/gms/internal/zzeew;

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsf:Ljava/lang/String;

    if-nez v0, :cond_6f

    const-string v0, "default"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsf:Ljava/lang/String;

    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsd:Lcom/google/android/gms/internal/zzect;

    if-nez v0, :cond_81

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvu()Lcom/google/android/gms/internal/zzedm;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;->zzbud()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzedm;->zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsd:Lcom/google/android/gms/internal/zzect;
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_83

    :cond_81
    monitor-exit p0

    return-void

    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzbvw()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsh:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmse:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeew;->restart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsh:Z

    :cond_c
    return-void
.end method

.method protected final zzbvx()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmrp:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Modifications to DatabaseConfig objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method public final zzbvy()Lcom/google/android/gms/internal/zzeje;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsg:Lcom/google/android/gms/internal/zzeje;

    return-object v0
.end method

.method public final zzbvz()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzedc;->cacheSize:J

    return-wide v0
.end method

.method public final zzbwa()Lcom/google/android/gms/internal/zzedj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsc:Lcom/google/android/gms/internal/zzedj;

    return-object v0
.end method

.method public final zzbwb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzpv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejc;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzejc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedc;->zzmnq:Lcom/google/android/gms/internal/zzejd;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzejc;-><init>(Lcom/google/android/gms/internal/zzejd;Ljava/lang/String;)V

    return-object v0
.end method

.method final zzpw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzegy;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmnr:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedc;->zzmsi:Lcom/google/android/gms/internal/zzedm;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/zzedm;->zza(Lcom/google/android/gms/internal/zzedc;Ljava/lang/String;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/zzegx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzegx;-><init>()V

    goto :goto_a
.end method
