.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;


# static fields
.field private static zzifg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/iid/FirebaseInstanceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final zznyp:J

.field private static zznyq:Lcom/google/firebase/iid/zzy;

.field private static zznyr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private zzifj:Ljava/security/KeyPair;

.field private final zzmki:Lcom/google/firebase/FirebaseApp;

.field private final zznys:Lcom/google/firebase/iid/zzu;

.field private final zznyt:Lcom/google/firebase/iid/zzv;

.field private zznyu:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyp:J

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzifg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyu:Z

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmki:Lcom/google/firebase/FirebaseApp;

    invoke-static {p1}, Lcom/google/firebase/iid/zzu;->zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lcom/google/firebase/iid/zzu;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/iid/zzu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    new-instance v0, Lcom/google/firebase/iid/zzv;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/iid/zzv;-><init>(Landroid/content/Context;Lcom/google/firebase/iid/zzu;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyt:Lcom/google/firebase/iid/zzv;

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzciu()Lcom/google/firebase/iid/zzz;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzu;->zzcjg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzz;->zzro(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzy;->zzcjm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    :cond_48
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    :cond_4b
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 1

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 5
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzifg:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    if-nez v0, :cond_36

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    if-nez v0, :cond_24

    new-instance v0, Lcom/google/firebase/iid/zzy;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/firebase/iid/zzy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    :cond_24
    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;)V

    sget-object v2, Lcom/google/firebase/iid/FirebaseInstanceId;->zzifg:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit v1

    return-object v0

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final declared-synchronized startSync()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyu:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcc(J)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzavf()V
    .registers 3

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzy;->zzrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzifj:Ljava/security/KeyPair;

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sender"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "subtype"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appid"

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gmp_app_id"

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmki:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gmsv"

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzu;->zzcji()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "osv"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_ver"

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzu;->zzcjg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_ver_name"

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzu;->zzcjh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cliv"

    const-string v1, "fiid-11910000"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyt:Lcom/google/firebase/iid/zzv;

    invoke-virtual {v0, p3}, Lcom/google/firebase/iid/zzv;->zzad(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_6e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    const-string v0, "registration_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_91

    :cond_76
    const-string v1, "RST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    const-string v1, "RST|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_da

    :cond_86
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzciy()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    const-string v0, "unregistered"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_76

    const-string v0, "error"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a7

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a7
    const-string v0, "FirebaseInstanceId"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_da
    return-object v0
.end method

.method static zzb(Ljava/lang/Runnable;J)V
    .registers 6

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_f
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyr:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method static zzciw()Lcom/google/firebase/iid/zzy;
    .registers 1

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    return-object v0
.end method

.method static zzcix()Z
    .registers 3

    const/4 v2, 0x3

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_19

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public deleteInstanceId()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "*"

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->deleteToken(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzavf()V

    return-void
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delete"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    const-string v1, ""

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/zzy;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final getApp()Lcom/google/firebase/FirebaseApp;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmki:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzy;->zzrj(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzifj:Ljava/security/KeyPair;

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzy;->zzrm(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzifj:Ljava/security/KeyPair;

    :cond_e
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzifj:Ljava/security/KeyPair;

    if-nez v0, :cond_1c

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzy;->zzrk(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzifj:Ljava/security/KeyPair;

    :cond_1c
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzifj:Ljava/security/KeyPair;

    invoke-static {v0}, Lcom/google/firebase/iid/zzu;->zzb(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzciu()Lcom/google/firebase/iid/zzz;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzu;->zzcjg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzz;->zzro(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_12
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    :cond_15
    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/google/firebase/iid/zzz;->zzldj:Ljava/lang/String;

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    const-string v1, ""

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/zzy;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzu;->zzcjg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzz;->zzro(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v4, v0, Lcom/google/firebase/iid/zzz;->zzldj:Ljava/lang/String;

    :cond_2a
    :goto_2a
    return-object v4

    :cond_2b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2a

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    const-string v1, ""

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzu;->zzcjg()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method final declared-synchronized zzcc(J)V
    .registers 8

    const/4 v2, 0x1

    monitor-enter p0

    const-wide/16 v0, 0x1e

    shl-long v2, p1, v2

    :try_start_6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/firebase/iid/zzaa;

    iget-object v3, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/google/firebase/iid/zzaa;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzu;J)V

    invoke-static {v2, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyu:Z
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final zzciu()Lcom/google/firebase/iid/zzz;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    const-string v1, ""

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmki:Lcom/google/firebase/FirebaseApp;

    invoke-static {v2}, Lcom/google/firebase/iid/zzu;->zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/iid/zzy;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;

    move-result-object v0

    return-object v0
.end method

.method final zzciv()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzmki:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzu;->zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzciy()V
    .registers 2

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzy;->zzavj()V

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzavf()V

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    return-void
.end method

.method final zzciz()V
    .registers 3

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzy;->zzia(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    return-void
.end method

.method final declared-synchronized zzcr(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyu:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzrf(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznyq:Lcom/google/firebase/iid/zzy;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzy;->zzrf(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final zzrg(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzciu()Lcom/google/firebase/iid/zzz;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzu;->zzcjg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzz;->zzro(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "token not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gcm.topic"

    const-string v0, "/topics/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_52

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_35
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/firebase/iid/zzz;->zzldj:Ljava/lang/String;

    const-string v0, "/topics/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_58

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4e
    invoke-direct {p0, v1, v0, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    return-void

    :cond_52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_35

    :cond_58
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4e
.end method

.method final zzrh(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzciu()Lcom/google/firebase/iid/zzz;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzu;->zzcjg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzz;->zzro(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "token not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gcm.topic"

    const-string v0, "/topics/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_35
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "delete"

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/firebase/iid/zzz;->zzldj:Ljava/lang/String;

    const-string v0, "/topics/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_55
    invoke-direct {p0, v1, v0, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    return-void

    :cond_59
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_35

    :cond_5f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_55
.end method
