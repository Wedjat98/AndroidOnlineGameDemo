.class final Lcom/google/firebase/iid/zzv;
.super Ljava/lang/Object;


# static fields
.field private static zzicn:Landroid/app/PendingIntent;

.field private static zzift:I


# instance fields
.field private final zzair:Landroid/content/Context;

.field private zzicr:Landroid/os/Messenger;

.field private zzifw:Landroid/os/Messenger;

.field private zzifx:Lcom/google/android/gms/iid/MessengerCompat;

.field private final zznys:Lcom/google/firebase/iid/zzu;

.field private final zznzn:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/google/firebase/iid/zzv;->zzift:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/iid/zzu;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p1, p0, Lcom/google/firebase/iid/zzv;->zzair:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/zzv;->zznys:Lcom/google/firebase/iid/zzu;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/firebase/iid/zzw;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/iid/zzw;-><init>(Lcom/google/firebase/iid/zzv;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzv;->zzicr:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzv;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzv;->zze(Landroid/os/Message;)V

    return-void
.end method

.method private final zzae(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzv;->zzaf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzv;->zzaf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    :cond_1d
    return-object v0
.end method

.method private final zzaf(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    invoke-static {}, Lcom/google/firebase/iid/zzv;->zzavi()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_e
    iget-object v3, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_24

    iget-object v2, p0, Lcom/google/firebase/iid/zzv;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzu;->zzcjf()I

    move-result v2

    if-nez v2, :cond_27

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/firebase/iid/zzv;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzu;->zzcjf()I

    move-result v3

    if-ne v3, v7, :cond_d6

    const-string v3, "com.google.iid.TOKEN_REQUEST"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3e
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/firebase/iid/zzv;->zzair:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/firebase/iid/zzv;->zzd(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v3, "kid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "|ID|"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "FirebaseInstanceId"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a0

    const-string v3, "FirebaseInstanceId"

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    const-string v3, "google.messenger"

    iget-object v4, p0, Lcom/google/firebase/iid/zzv;->zzicr:Landroid/os/Messenger;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/firebase/iid/zzv;->zzifw:Landroid/os/Messenger;

    if-nez v3, :cond_af

    iget-object v3, p0, Lcom/google/firebase/iid/zzv;->zzifx:Lcom/google/android/gms/iid/MessengerCompat;

    if-eqz v3, :cond_f3

    :cond_af
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_b5
    iget-object v4, p0, Lcom/google/firebase/iid/zzv;->zzifw:Landroid/os/Messenger;

    if-eqz v4, :cond_dd

    iget-object v4, p0, Lcom/google/firebase/iid/zzv;->zzifw:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_be} :catch_e3

    :goto_be
    :try_start_be
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_cc
    .catch Ljava/lang/InterruptedException; {:try_start_be .. :try_end_cc} :catch_10a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_be .. :try_end_cc} :catch_13a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_be .. :try_end_cc} :catch_125
    .catchall {:try_start_be .. :try_end_cc} :catchall_11a

    iget-object v2, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_cf
    iget-object v3, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_cf .. :try_end_d5} :catchall_107

    return-object v0

    :cond_d6
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3e

    :cond_dd
    :try_start_dd
    iget-object v4, p0, Lcom/google/firebase/iid/zzv;->zzifx:Lcom/google/android/gms/iid/MessengerCompat;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/iid/MessengerCompat;->send(Landroid/os/Message;)V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_e2} :catch_e3

    goto :goto_be

    :catch_e3
    move-exception v3

    const-string v3, "FirebaseInstanceId"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_f3

    const-string v3, "FirebaseInstanceId"

    const-string v4, "Messenger failed, fallback to startService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f3
    iget-object v3, p0, Lcom/google/firebase/iid/zzv;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzu;->zzcjf()I

    move-result v3

    if-ne v3, v7, :cond_101

    iget-object v3, p0, Lcom/google/firebase/iid/zzv;->zzair:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_be

    :cond_101
    iget-object v3, p0, Lcom/google/firebase/iid/zzv;->zzair:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_be

    :catchall_107
    move-exception v0

    :try_start_108
    monitor-exit v2
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v0

    :catch_10a
    move-exception v0

    :goto_10b
    :try_start_10b
    const-string v0, "FirebaseInstanceId"

    const-string v2, "No response"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v2, "TIMEOUT"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11a
    .catchall {:try_start_10b .. :try_end_11a} :catchall_11a

    :catchall_11a
    move-exception v0

    iget-object v2, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_11e
    iget-object v3, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_124
    .catchall {:try_start_11e .. :try_end_124} :catchall_137

    throw v0

    :catch_125
    move-exception v0

    :try_start_126
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_131

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_131
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_137
    .catchall {:try_start_126 .. :try_end_137} :catchall_11a

    :catchall_137
    move-exception v0

    :try_start_138
    monitor-exit v2
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_137

    throw v0

    :catch_13a
    move-exception v0

    goto :goto_10b
.end method

.method private static declared-synchronized zzavi()Ljava/lang/String;
    .registers 3

    const-class v1, Lcom/google/firebase/iid/zzv;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/google/firebase/iid/zzv;->zzift:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/google/firebase/iid/zzv;->zzift:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final zzbl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v2, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    if-nez p1, :cond_2a

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    iget-object v0, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_23
    iget-object v0, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    :goto_28
    monitor-exit v2

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-nez v0, :cond_54

    const-string v1, "FirebaseInstanceId"

    const-string v3, "Missing callback for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_46
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_29

    :catchall_4b
    move-exception v0

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw v0

    :cond_4e
    :try_start_4e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_46

    :cond_54
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_4b

    goto :goto_28
.end method

.method private static declared-synchronized zzd(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-class v1, Lcom/google/firebase/iid/zzv;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/firebase/iid/zzv;->zzicn:Landroid/app/PendingIntent;

    if-nez v0, :cond_19

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.example.invalidpackage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/iid/zzv;->zzicn:Landroid/app/PendingIntent;

    :cond_19
    const-string v0, "app"

    sget-object v2, Lcom/google/firebase/iid/zzv;->zzicn:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final zze(Landroid/os/Message;)V
    .registers 13

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x3

    if-eqz p1, :cond_1a2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_1a2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/iid/MessengerCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v0, v1, Lcom/google/android/gms/iid/MessengerCompat;

    if-eqz v0, :cond_2f

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/iid/MessengerCompat;

    iput-object v0, p0, Lcom/google/firebase/iid/zzv;->zzifx:Lcom/google/android/gms/iid/MessengerCompat;

    :cond_2f
    instance-of v0, v1, Landroid/os/Messenger;

    if-eqz v0, :cond_37

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/google/firebase/iid/zzv;->zzifw:Landroid/os/Messenger;

    :cond_37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Unexpected response action: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_61
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    :goto_64
    return-void

    :cond_65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_61

    :cond_6b
    const-string v1, "registration_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_79

    const-string v1, "unregistered"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_79
    if-nez v1, :cond_128

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ae

    const-string v1, "FirebaseInstanceId"

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response, no error or registration id "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_ae
    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v2, "FirebaseInstanceId"

    const-string v4, "Received InstanceID error "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_116

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_c8
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    const/4 v2, 0x0

    const-string v1, "|"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ab

    const-string v1, "\\|"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v1, "ID"

    aget-object v5, v4, v8

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    const-string v5, "FirebaseInstanceId"

    const-string v6, "Unexpected structured response "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11c

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_f6
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    array-length v1, v4

    if-le v1, v9, :cond_122

    aget-object v1, v4, v9

    aget-object v2, v4, v7

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10c

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_10c
    :goto_10c
    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_111
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/iid/zzv;->zzbl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_64

    :cond_116
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_c8

    :cond_11c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_f6

    :cond_122
    const-string v1, "UNKNOWN"

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_10c

    :cond_128
    const-string v2, "\\|ID\\|([^|]+)\\|:?+(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_15d

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Unexpected response string: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_157

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_152
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    :cond_157
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_152

    :cond_15d
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "registration_id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_171
    iget-object v0, p0, Lcom/google/firebase/iid/zzv;->zznzn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-nez v0, :cond_19c

    const-string v3, "FirebaseInstanceId"

    const-string v4, "Missing callback for "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_196

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18d
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto/16 :goto_64

    :catchall_193
    move-exception v0

    monitor-exit v2
    :try_end_195
    .catchall {:try_start_171 .. :try_end_195} :catchall_193

    throw v0

    :cond_196
    :try_start_196
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_18d

    :cond_19c
    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_1a0
    .catchall {:try_start_196 .. :try_end_1a0} :catchall_193

    goto/16 :goto_64

    :cond_1a2
    const-string v0, "FirebaseInstanceId"

    const-string v1, "Dropping invalid message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    :cond_1ab
    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_111
.end method


# virtual methods
.method final zzad(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/zzv;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzu;->zzcji()I

    move-result v0

    const v1, 0xb71b00

    if-lt v0, v1, :cond_69

    iget-object v0, p0, Lcom/google/firebase/iid/zzv;->zzair:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/iid/zzi;->zzev(Landroid/content/Context;)Lcom/google/firebase/iid/zzi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/zzi;->zzi(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :try_start_16
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1c} :catch_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1c} :catch_6e

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    :goto_1e
    const-string v1, "FirebaseInstanceId"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "FirebaseInstanceId"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error making request: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/firebase/iid/zzs;

    if-eqz v1, :cond_67

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzs;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzs;->getErrorCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_67

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzv;->zzae(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1c

    :cond_67
    const/4 v0, 0x0

    goto :goto_1c

    :cond_69
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzv;->zzae(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1c

    :catch_6e
    move-exception v0

    goto :goto_1e
.end method
