.class final Lcom/google/firebase/iid/zzu;
.super Ljava/lang/Object;


# instance fields
.field private final zzair:Landroid/content/Context;

.field private zzct:Ljava/lang/String;

.field private zznzk:Ljava/lang/String;

.field private zznzl:I

.field private zznzm:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/iid/zzu;->zznzm:I

    iput-object p1, p0, Lcom/google/firebase/iid/zzu;->zzair:Landroid/content/Context;

    return-void
.end method

.method public static zzb(Ljava/security/KeyPair;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    :try_start_8
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x70

    const/4 v2, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_25} :catch_27

    move-result-object v0

    :goto_26
    return-object v0

    :catch_27
    move-exception v0

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Unexpected error, device missing required algorithms"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_26
.end method

.method private final declared-synchronized zzcjj()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzu;->zzair:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzu;->zzoa(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/iid/zzu;->zznzk:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/iid/zzu;->zzct:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static zzf(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_28

    move-object v0, v1

    goto :goto_b

    :cond_28
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v0, v1

    goto :goto_b
.end method

.method private final zzoa(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzu;->zzair:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    const-string v1, "FirebaseInstanceId"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to find package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final declared-synchronized zzcjf()I
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/firebase/iid/zzu;->zznzm:I

    if-eqz v1, :cond_a

    iget v0, p0, Lcom/google/firebase/iid/zzu;->zznzm:I
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_23

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/firebase/iid/zzu;->zzair:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.permission.SEND"

    const-string v3, "com.google.android.gms"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    const-string v1, "FirebaseInstanceId"

    const-string v2, "Google Play services missing or without correct permission."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_23

    goto :goto_8

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_26
    :try_start_26
    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_4b

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4b

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/iid/zzu;->zznzm:I

    iget v0, p0, Lcom/google/firebase/iid/zzu;->zznzm:I

    goto :goto_8

    :cond_4b
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.iid.TOKEN_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6a

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firebase/iid/zzu;->zznzm:I

    iget v0, p0, Lcom/google/firebase/iid/zzu;->zznzm:I

    goto :goto_8

    :cond_6a
    const-string v0, "FirebaseInstanceId"

    const-string v1, "Failed to resolve IID implementation package, falling back"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firebase/iid/zzu;->zznzm:I

    :goto_7a
    iget v0, p0, Lcom/google/firebase/iid/zzu;->zznzm:I

    goto :goto_8

    :cond_7d
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/iid/zzu;->zznzm:I
    :try_end_80
    .catchall {:try_start_26 .. :try_end_80} :catchall_23

    goto :goto_7a
.end method

.method public final declared-synchronized zzcjg()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzu;->zznzk:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/firebase/iid/zzu;->zzcjj()V

    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/zzu;->zznzk:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzcjh()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzu;->zzct:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/firebase/iid/zzu;->zzcjj()V

    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/zzu;->zzct:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzcji()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzu;->zznzl:I

    if-nez v0, :cond_11

    const-string v0, "com.google.android.gms"

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzu;->zzoa(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/google/firebase/iid/zzu;->zznzl:I

    :cond_11
    iget v0, p0, Lcom/google/firebase/iid/zzu;->zznzl:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
