.class final Lcom/google/android/gms/internal/zzele;
.super Ljava/lang/Object;


# instance fields
.field private final random:Ljava/util/Random;

.field private final zzndy:Ljava/lang/Thread;

.field private zznep:Lcom/google/android/gms/internal/zzeku;

.field private volatile zznes:Z

.field private zznet:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private zzneu:Z

.field private zznev:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeku;Ljava/lang/String;I)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzele;->random:Ljava/util/Random;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzele;->zznes:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzele;->zzneu:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzeku;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzelf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzelf;-><init>(Lcom/google/android/gms/internal/zzele;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzele;->zzndy:Ljava/lang/Thread;

    invoke-static {}, Lcom/google/android/gms/internal/zzeku;->zzcas()Lcom/google/android/gms/internal/zzekt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzele;->zzndy:Ljava/lang/Thread;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Writer-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzekt;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzele;->zznep:Lcom/google/android/gms/internal/zzeku;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzele;->zznet:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzele;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzele;->zzcbd()V

    return-void
.end method

.method private final zzcbb()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzele;->zznet:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzele;->zznev:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private final zzcbd()V
    .registers 4

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzele;->zznes:Z

    if-nez v0, :cond_1c

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzele;->zzcbb()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_d} :catch_2b

    goto :goto_0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    const-string v2, "IO Exception"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzele;->zznep:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeku;->zzb(Lcom/google/android/gms/internal/zzela;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzele;->zznet:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzele;->zzcbb()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_28} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_28} :catch_2b

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :catch_2b
    move-exception v0

    goto :goto_1b
.end method


# virtual methods
.method final declared-synchronized zza(BZ[B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v6, 0xffff

    const/16 v5, 0x7e

    const/4 v0, 0x0

    const/16 v2, 0x8

    monitor-enter p0

    const/4 v1, 0x6

    :try_start_a
    array-length v3, p3

    if-lt v3, v5, :cond_10

    if-gt v3, v6, :cond_40

    move v1, v2

    :cond_10
    :goto_10
    array-length v4, p3

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    or-int/lit8 v4, p1, -0x80

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-ge v3, v5, :cond_43

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_24
    const/4 v3, 0x4

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/google/android/gms/internal/zzele;->random:Ljava/util/Random;

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_2f
    array-length v4, p3

    if-ge v0, v4, :cond_5d

    aget-byte v4, p3, v0

    rem-int/lit8 v5, v0, 0x4

    aget-byte v5, v3, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_40
    const/16 v1, 0xe

    goto :goto_10

    :cond_43
    if-gt v3, v6, :cond_51

    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_4d
    .catchall {:try_start_a .. :try_end_4d} :catchall_4e

    goto :goto_24

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_51
    const/4 v4, -0x1

    :try_start_52
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_24

    :cond_5d
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzele;->zznes:Z

    if-eqz v0, :cond_72

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzele;->zzneu:Z

    if-nez v0, :cond_6a

    if-eq p1, v2, :cond_72

    :cond_6a
    new-instance v0, Lcom/google/android/gms/internal/zzela;

    const-string v1, "Shouldn\'t be sending"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    if-ne p1, v2, :cond_77

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzele;->zzneu:Z

    :cond_77
    iget-object v0, p0, Lcom/google/android/gms/internal/zzele;->zznet:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_4e

    monitor-exit p0

    return-void
.end method

.method final zzb(Ljava/io/OutputStream;)V
    .registers 3

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzele;->zznev:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method

.method final zzcbc()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzele;->zznes:Z

    return-void
.end method

.method final zzcbe()Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzele;->zzndy:Ljava/lang/Thread;

    return-object v0
.end method
