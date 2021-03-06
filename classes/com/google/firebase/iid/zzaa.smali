.class final Lcom/google/firebase/iid/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zznys:Lcom/google/firebase/iid/zzu;

.field private final zznzv:J

.field private final zznzw:Landroid/os/PowerManager$WakeLock;

.field private final zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzu;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzaa;->zznys:Lcom/google/firebase/iid/zzu;

    iput-wide p3, p0, Lcom/google/firebase/iid/zzaa;->zznzv:J

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaa;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "fiid-sync"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzaa;->zznzw:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zznzw:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private final zzcjn()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzciu()Lcom/google/firebase/iid/zzz;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v3, p0, Lcom/google/firebase/iid/zzaa;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzu;->zzcjg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/iid/zzz;->zzro(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzciv()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    const-string v0, "FirebaseInstanceId"

    const-string v2, "Token retrieval failed: null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_16

    :cond_28
    const-string v4, "FirebaseInstanceId"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v4, "FirebaseInstanceId"

    const-string v5, "Token successfully retrieved"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    if-eqz v2, :cond_44

    if-eqz v2, :cond_16

    iget-object v2, v2, Lcom/google/firebase/iid/zzz;->zzldj:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_44
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaa;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.firebase.iid.TOKEN_REFRESH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "wrapped_intent"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_63} :catch_64
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_63} :catch_86

    goto :goto_16

    :catch_64
    move-exception v0

    :goto_65
    const-string v2, "FirebaseInstanceId"

    const-string v3, "Token retrieval failed: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_80

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7b
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_16

    :cond_80
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7b

    :catch_86
    move-exception v0

    goto :goto_65
.end method

.method private final zzcjo()Z
    .registers 4

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzciw()Lcom/google/firebase/iid/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzy;->zzcjm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    const-string v0, "FirebaseInstanceId"

    const-string v2, "topic sync succeeded"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    monitor-exit v1

    :goto_16
    return v0

    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_20

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzaa;->zzrp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v0, 0x0

    goto :goto_16

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzciw()Lcom/google/firebase/iid/zzy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzy;->zzri(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private final zzrp(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "!"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    aget-object v3, v2, v1

    aget-object v4, v2, v0

    const/4 v2, -0x1

    :try_start_11
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_78

    :cond_18
    :goto_18
    :pswitch_18
    packed-switch v2, :pswitch_data_82

    :cond_1b
    :goto_1b
    return v0

    :pswitch_1c
    const-string v5, "S"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v2, v1

    goto :goto_18

    :pswitch_26
    const-string v5, "U"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v2, v0

    goto :goto_18

    :pswitch_30
    iget-object v2, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v2, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzrg(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcix()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "FirebaseInstanceId"

    const-string v3, "subscribe operation succeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_42} :catch_43

    goto :goto_1b

    :catch_43
    move-exception v0

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Topic sync failed: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_72

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5a
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1b

    :pswitch_5f
    :try_start_5f
    iget-object v2, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v2, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzrh(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcix()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "FirebaseInstanceId"

    const-string v3, "unsubscribe operation succeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_71} :catch_43

    goto :goto_1b

    :cond_72
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5a

    :pswitch_data_78
    .packed-switch 0x53
        :pswitch_1c
        :pswitch_18
        :pswitch_26
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_30
        :pswitch_5f
    .end packed-switch
.end method


# virtual methods
.method final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/iid/zzaa;->zznzw:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_7
    iget-object v2, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcr(Z)V

    iget-object v2, p0, Lcom/google/firebase/iid/zzaa;->zznys:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzu;->zzcjf()I

    move-result v2

    if-eqz v2, :cond_23

    :goto_15
    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcr(Z)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_59

    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zznzw:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_22
    return-void

    :cond_23
    move v0, v1

    goto :goto_15

    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaa;->zzcjp()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Lcom/google/firebase/iid/zzab;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzab;-><init>(Lcom/google/firebase/iid/zzaa;)V

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzab;->zzcjq()V
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_59

    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zznzw:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_22

    :cond_39
    :try_start_39
    invoke-direct {p0}, Lcom/google/firebase/iid/zzaa;->zzcjn()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-direct {p0}, Lcom/google/firebase/iid/zzaa;->zzcjo()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcr(Z)V
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_59

    :goto_4b
    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zznzw:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_22

    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/google/firebase/iid/zzaa;->zznzx:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v2, p0, Lcom/google/firebase/iid/zzaa;->zznzv:J

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcc(J)V
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_59

    goto :goto_4b

    :catchall_59
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzaa;->zznzw:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method final zzcjp()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaa;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1b
.end method
