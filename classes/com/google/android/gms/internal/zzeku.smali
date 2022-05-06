.class public final Lcom/google/android/gms/internal/zzeku;
.super Ljava/lang/Object;


# static fields
.field private static final zzndq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final zzndr:Ljava/nio/charset/Charset;

.field private static zzndz:Ljava/util/concurrent/ThreadFactory;

.field private static zznea:Lcom/google/android/gms/internal/zzekt;


# instance fields
.field private volatile socket:Ljava/net/Socket;

.field private final zzfny:I

.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private final zzmnu:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private volatile zznds:I

.field private zzndt:Lcom/google/android/gms/internal/zzekz;

.field private final zzndu:Ljava/net/URI;

.field private final zzndv:Lcom/google/android/gms/internal/zzeld;

.field private final zzndw:Lcom/google/android/gms/internal/zzele;

.field private final zzndx:Lcom/google/android/gms/internal/zzelb;

.field private final zzndy:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeku;->zzndq:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzeku;->zzndr:Ljava/nio/charset/Charset;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzeku;->zzndz:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Lcom/google/android/gms/internal/zzekv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzekv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeku;->zznea:Lcom/google/android/gms/internal/zzekt;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzebi;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzebi;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/zzeky;->zzned:I

    iput v0, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    iput-object v6, p0, Lcom/google/android/gms/internal/zzeku;->socket:Ljava/net/Socket;

    iput-object v6, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    sget-object v0, Lcom/google/android/gms/internal/zzeku;->zzndq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzeku;->zzfny:I

    sget-object v0, Lcom/google/android/gms/internal/zzeku;->zzndz:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Lcom/google/android/gms/internal/zzekw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzekw;-><init>(Lcom/google/android/gms/internal/zzeku;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndy:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeku;->zzndu:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebi;->zzbug()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzmnu:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzebi;->zzbub()Lcom/google/android/gms/internal/zzejd;

    move-result-object v1

    const-string v2, "WebSocket"

    iget v3, p0, Lcom/google/android/gms/internal/zzeku;->zzfny:I

    const/16 v4, 0xe

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "sk_"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzejc;-><init>(Lcom/google/android/gms/internal/zzejd;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    new-instance v0, Lcom/google/android/gms/internal/zzelb;

    invoke-direct {v0, p2, v6, p4}, Lcom/google/android/gms/internal/zzelb;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndx:Lcom/google/android/gms/internal/zzelb;

    new-instance v0, Lcom/google/android/gms/internal/zzeld;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeld;-><init>(Lcom/google/android/gms/internal/zzeku;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndv:Lcom/google/android/gms/internal/zzeld;

    new-instance v0, Lcom/google/android/gms/internal/zzele;

    const-string v1, "TubeSock"

    iget v2, p0, Lcom/google/android/gms/internal/zzeku;->zzfny:I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzele;-><init>(Lcom/google/android/gms/internal/zzeku;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndw:Lcom/google/android/gms/internal/zzele;

    return-void
.end method

.method private final createSocket()Ljava/net/Socket;
    .registers 8

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndu:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndu:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndu:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    if-eqz v1, :cond_70

    const-string v2, "ws"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    if-ne v0, v4, :cond_144

    const/16 v0, 0x50

    move v1, v0

    :goto_22
    :try_start_22
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v3, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_22 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_46

    :cond_27
    return-object v0

    :catch_28
    move-exception v0

    move-object v1, v0

    new-instance v2, Lcom/google/android/gms/internal/zzela;

    const-string v4, "unknown host: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_40
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3c

    :catch_46
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeku;->zzndu:Ljava/net/URI;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "error while creating socket to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_70
    if-eqz v1, :cond_128

    const-string v2, "wss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    if-ne v0, v4, :cond_7e

    const/16 v0, 0x1bb

    :cond_7e
    const/4 v2, 0x0

    :try_start_7f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzmnu:Ljava/lang/String;

    if-eqz v1, :cond_f6

    new-instance v1, Landroid/net/SSLSessionCache;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzeku;->zzmnu:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Landroid/net/SSLSessionCache;-><init>(Ljava/io/File;)V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_8f} :catch_eb

    :goto_8f
    const v2, 0xea60

    :try_start_92
    invoke-static {v2, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_27

    new-instance v0, Lcom/google/android/gms/internal/zzela;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzndu:Ljava/net/URI;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error while verifying secure socket to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d3
    .catch Ljava/net/UnknownHostException; {:try_start_92 .. :try_end_d3} :catch_d3
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_d3} :catch_fe

    :catch_d3
    move-exception v0

    move-object v1, v0

    new-instance v2, Lcom/google/android/gms/internal/zzela;

    const-string v4, "unknown host: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f8

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e7
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_eb
    move-exception v1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeku;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    const-string v5, "Failed to initialize SSL session cache"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v1, v6}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_f6
    move-object v1, v2

    goto :goto_8f

    :cond_f8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_e7

    :catch_fe
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeku;->zzndu:Ljava/net/URI;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "error while creating secure socket to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_128
    new-instance v2, Lcom/google/android/gms/internal/zzela;

    const-string v3, "unsupported protocol: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13e

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13a
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_13a

    :cond_144
    move v1, v0

    goto/16 :goto_22
.end method

.method static getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzeku;->zzndz:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method private final declared-synchronized zza(B[B)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    sget v1, Lcom/google/android/gms/internal/zzeky;->zznef:I

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    const-string v2, "error while sending data: not connected"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekz;->zza(Lcom/google/android/gms/internal/zzela;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2d

    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndw:Lcom/google/android/gms/internal/zzele;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/internal/zzele;->zza(BZ[B)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_1c
    .catchall {:try_start_15 .. :try_end_1b} :catchall_2d

    goto :goto_13

    :catch_1c
    move-exception v0

    :try_start_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    new-instance v2, Lcom/google/android/gms/internal/zzela;

    const-string v3, "Failed to send frame"

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzekz;->zza(Lcom/google/android/gms/internal/zzela;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeku;->close()V
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_2d

    goto :goto_13

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeku;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeku;->zzcax()V

    return-void
.end method

.method static zzcas()Lcom/google/android/gms/internal/zzekt;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzeku;->zznea:Lcom/google/android/gms/internal/zzekt;

    return-object v0
.end method

.method private final declared-synchronized zzcav()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    sget v1, Lcom/google/android/gms/internal/zzeky;->zzneh:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_26

    if-ne v0, v1, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndv:Lcom/google/android/gms/internal/zzeld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeld;->zzcba()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndw:Lcom/google/android/gms/internal/zzele;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzele;->zzcbc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->socket:Ljava/net/Socket;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_26

    if-eqz v0, :cond_1c

    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_29
    .catchall {:try_start_17 .. :try_end_1c} :catchall_26

    :cond_1c
    :try_start_1c
    sget v0, Lcom/google/android/gms/internal/zzeky;->zzneh:I

    iput v0, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekz;->onClose()V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    goto :goto_7

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_29
    move-exception v0

    :try_start_2a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_26
.end method

.method private final zzcax()V
    .registers 13

    const/4 v4, 0x1

    const/16 v11, 0x3e8

    const/4 v3, 0x0

    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeku;->createSocket()Ljava/net/Socket;

    move-result-object v1

    monitor-enter p0
    :try_end_9
    .catch Lcom/google/android/gms/internal/zzela; {:try_start_4 .. :try_end_9} :catch_28
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_66
    .catchall {:try_start_4 .. :try_end_9} :catchall_c1

    :try_start_9
    iput-object v1, p0, Lcom/google/android/gms/internal/zzeku;->socket:Ljava/net/Socket;

    iget v2, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    sget v5, Lcom/google/android/gms/internal/zzeky;->zzneh:I
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_25

    if-ne v2, v5, :cond_32

    :try_start_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_1e
    .catchall {:try_start_11 .. :try_end_16} :catchall_25

    const/4 v1, 0x0

    :try_start_17
    iput-object v1, p0, Lcom/google/android/gms/internal/zzeku;->socket:Ljava/net/Socket;

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeku;->close()V

    :goto_1d
    return-void

    :catch_1e
    move-exception v1

    :try_start_1f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_25

    :try_start_27
    throw v1
    :try_end_28
    .catch Lcom/google/android/gms/internal/zzela; {:try_start_27 .. :try_end_28} :catch_28
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_28} :catch_66
    .catchall {:try_start_27 .. :try_end_28} :catchall_c1

    :catch_28
    move-exception v1

    :try_start_29
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzekz;->zza(Lcom/google/android/gms/internal/zzela;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_c1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeku;->close()V

    goto :goto_1d

    :cond_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_25

    :try_start_33
    new-instance v7, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzndx:Lcom/google/android/gms/internal/zzelb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelb;->zzcay()[B

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0x3e8

    new-array v1, v1, [B

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    move-object v6, v1

    move v1, v3

    :cond_55
    :goto_55
    if-nez v1, :cond_eb

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_89

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    const-string v2, "Connection closed before handshake was complete"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_66
    .catch Lcom/google/android/gms/internal/zzela; {:try_start_33 .. :try_end_66} :catch_28
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_66} :catch_66
    .catchall {:try_start_33 .. :try_end_66} :catchall_c1

    :catch_66
    move-exception v1

    :try_start_67
    iget-object v3, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    new-instance v4, Lcom/google/android/gms/internal/zzela;

    const-string v5, "error while connecting: "

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1c7

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7f
    invoke-direct {v4, v2, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/zzekz;->zza(Lcom/google/android/gms/internal/zzela;)V
    :try_end_85
    .catchall {:try_start_67 .. :try_end_85} :catchall_c1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeku;->close()V

    goto :goto_1d

    :cond_89
    int-to-byte v9, v9

    :try_start_8a
    aput-byte v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v5, -0x1

    aget-byte v9, v6, v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_c6

    add-int/lit8 v9, v5, -0x2

    aget-byte v9, v6, v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_c6

    new-instance v5, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/zzeku;->zzndr:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    move v1, v4

    :goto_b2
    const/16 v5, 0x3e8

    new-array v5, v5, [B

    move-object v6, v5

    move v5, v3

    goto :goto_55

    :cond_b9
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c0
    .catch Lcom/google/android/gms/internal/zzela; {:try_start_8a .. :try_end_c0} :catch_28
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_c0} :catch_66
    .catchall {:try_start_8a .. :try_end_c0} :catchall_c1

    goto :goto_b2

    :catchall_c1
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeku;->close()V

    throw v1

    :cond_c6
    if-ne v5, v11, :cond_55

    :try_start_c8
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzeku;->zzndr:Ljava/nio/charset/Charset;

    invoke-direct {v1, v6, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Lcom/google/android/gms/internal/zzela;

    const-string v3, "Unexpected long line in handshake: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e5

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_e1
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_e1

    :cond_eb
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v4, 0x9

    const/16 v5, 0xc

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x197

    if-ne v1, v4, :cond_10e

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    const-string v2, "connection failed: proxy authentication not supported"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10e
    const/16 v4, 0x194

    if-ne v1, v4, :cond_11a

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    const-string v2, "connection failed: 404 not found"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11a
    const/16 v4, 0x65

    if-eq v1, v4, :cond_139

    new-instance v2, Lcom/google/android/gms/internal/zzela;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "connection failed: unknown status code "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_139
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_14a
    if-ge v3, v5, :cond_165

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Ljava/lang/String;

    const-string v6, ": "

    const/4 v9, 0x2

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v9, 0x1

    aget-object v2, v2, v9

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14a

    :cond_165
    const-string v1, "Upgrade"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "websocket"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_183

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    const-string v2, "connection failed: missing header field in server handshake: Upgrade"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_183
    const-string v1, "Connection"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "upgrade"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a1

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    const-string v2, "connection failed: missing header field in server handshake: Connection"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzndw:Lcom/google/android/gms/internal/zzele;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/zzele;->zzb(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzndv:Lcom/google/android/gms/internal/zzeld;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/zzeld;->zza(Ljava/io/DataInputStream;)V

    sget v1, Lcom/google/android/gms/internal/zzeky;->zznef:I

    iput v1, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzndw:Lcom/google/android/gms/internal/zzele;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzele;->zzcbe()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekz;->zzbvg()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzndv:Lcom/google/android/gms/internal/zzeld;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeld;->run()V
    :try_end_1c2
    .catch Lcom/google/android/gms/internal/zzela; {:try_start_c8 .. :try_end_1c2} :catch_28
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_1c2} :catch_66
    .catchall {:try_start_c8 .. :try_end_1c2} :catchall_c1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeku;->close()V

    goto/16 :goto_1d

    :cond_1c7
    :try_start_1c7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1cc
    .catchall {:try_start_1c7 .. :try_end_1cc} :catchall_c1

    goto/16 :goto_7f
.end method


# virtual methods
.method public final declared-synchronized close()V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzekx;->zznec:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    packed-switch v0, :pswitch_data_3e

    :goto_c
    :pswitch_c
    monitor-exit p0

    return-void

    :pswitch_e
    :try_start_e
    sget v0, Lcom/google/android/gms/internal/zzeky;->zzneh:I

    iput v0, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_c

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_16
    :try_start_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeku;->zzcav()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_13

    goto :goto_c

    :pswitch_1a
    :try_start_1a
    sget v0, Lcom/google/android/gms/internal/zzeky;->zzneg:I

    iput v0, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndw:Lcom/google/android/gms/internal/zzele;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzele;->zzcbc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndw:Lcom/google/android/gms/internal/zzele;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzele;->zza(BZ[B)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2e} :catch_2f
    .catchall {:try_start_1a .. :try_end_2e} :catchall_13

    goto :goto_c

    :catch_2f
    move-exception v0

    :try_start_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    new-instance v2, Lcom/google/android/gms/internal/zzela;

    const-string v3, "Failed to send close frame"

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzekz;->zza(Lcom/google/android/gms/internal/zzela;)V
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_13

    goto :goto_c

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_1a
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public final declared-synchronized connect()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    sget v1, Lcom/google/android/gms/internal/zzeky;->zzned:I

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    const-string v2, "connect() already called"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekz;->zza(Lcom/google/android/gms/internal/zzela;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeku;->close()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_48

    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    sget-object v0, Lcom/google/android/gms/internal/zzeku;->zznea:Lcom/google/android/gms/internal/zzekt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeku;->zzndy:Ljava/lang/Thread;

    const-string v2, "TubeSockReader-"

    iget v3, p0, Lcom/google/android/gms/internal/zzeku;->zzfny:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzekt;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    sget v0, Lcom/google/android/gms/internal/zzeky;->zznee:I

    iput v0, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndy:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_47
    .catchall {:try_start_18 .. :try_end_47} :catchall_48

    goto :goto_16

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzekz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    return-void
.end method

.method final declared-synchronized zzaq([B)V
    .registers 3

    monitor-enter p0

    const/16 v0, 0xa

    :try_start_3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzeku;->zza(B[B)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final zzb(Lcom/google/android/gms/internal/zzela;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekz;->zza(Lcom/google/android/gms/internal/zzela;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzeku;->zznds:I

    sget v1, Lcom/google/android/gms/internal/zzeky;->zznef:I

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeku;->close()V

    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeku;->zzcav()V

    return-void
.end method

.method final zzcat()Lcom/google/android/gms/internal/zzekz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndt:Lcom/google/android/gms/internal/zzekz;

    return-object v0
.end method

.method final zzcau()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeku;->zzcav()V

    return-void
.end method

.method public final zzcaw()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndw:Lcom/google/android/gms/internal/zzele;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzele;->zzcbe()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndw:Lcom/google/android/gms/internal/zzele;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzele;->zzcbe()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeku;->zzndy:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method

.method public final declared-synchronized zzps(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/zzeku;->zzndr:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzeku;->zza(B[B)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
