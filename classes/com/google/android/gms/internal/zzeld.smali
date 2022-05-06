.class final Lcom/google/android/gms/internal/zzeld;
.super Ljava/lang/Object;


# instance fields
.field private zzndt:Lcom/google/android/gms/internal/zzekz;

.field private zzneo:Ljava/io/DataInputStream;

.field private zznep:Lcom/google/android/gms/internal/zzeku;

.field private zzneq:[B

.field private zzner:Lcom/google/android/gms/internal/zzekp;

.field private volatile zznes:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeku;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneo:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zznep:Lcom/google/android/gms/internal/zzeku;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzndt:Lcom/google/android/gms/internal/zzekz;

    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeld;->zznes:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeld;->zznep:Lcom/google/android/gms/internal/zzeku;

    return-void
.end method

.method private final read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneo:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return p3
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzela;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeld;->zznes:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zznep:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeku;->zzb(Lcom/google/android/gms/internal/zzela;)V

    return-void
.end method


# virtual methods
.method final run()V
    .registers 15

    const/16 v13, 0x9

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zznep:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeku;->zzcat()Lcom/google/android/gms/internal/zzekz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzndt:Lcom/google/android/gms/internal/zzekz;

    :cond_f
    :goto_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeld;->zznes:Z

    if-nez v0, :cond_1a0

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gms/internal/zzeld;->read([BII)I

    move-result v0

    add-int/lit8 v1, v0, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/4 v4, 0x0

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3d

    move v4, v2

    :goto_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/4 v5, 0x0

    aget-byte v0, v0, v5

    and-int/lit8 v0, v0, 0x70

    if-eqz v0, :cond_3f

    move v0, v2

    :goto_31
    if-eqz v0, :cond_41

    new-instance v0, Lcom/google/android/gms/internal/zzela;

    const-string v1, "Invalid frame received"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3b
    move-exception v0

    goto :goto_f

    :cond_3d
    move v4, v3

    goto :goto_27

    :cond_3f
    move v0, v3

    goto :goto_31

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/4 v5, 0x0

    aget-byte v0, v0, v5

    and-int/lit8 v0, v0, 0xf

    int-to-byte v5, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/gms/internal/zzeld;->read([BII)I

    move-result v0

    add-int v6, v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/4 v1, 0x1

    aget-byte v7, v0, v1

    const-wide/16 v0, 0x0

    const/16 v8, 0x7e

    if-ge v7, v8, :cond_7a

    int-to-long v0, v7

    :cond_5e
    :goto_5e
    long-to-int v6, v0

    new-array v6, v6, [B

    const/4 v7, 0x0

    long-to-int v0, v0

    invoke-direct {p0, v6, v7, v0}, Lcom/google/android/gms/internal/zzeld;->read([BII)I

    if-ne v5, v12, :cond_f8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zznep:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeku;->zzcau()V
    :try_end_6d
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_6d} :catch_3b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_6d} :catch_6e
    .catch Lcom/google/android/gms/internal/zzela; {:try_start_13 .. :try_end_6d} :catch_114

    goto :goto_f

    :catch_6e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    const-string v4, "IO Error"

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzeld;->zzc(Lcom/google/android/gms/internal/zzela;)V

    goto :goto_f

    :cond_7a
    const/16 v8, 0x7e

    if-ne v7, v8, :cond_97

    :try_start_7e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v6, v1}, Lcom/google/android/gms/internal/zzeld;->read([BII)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/4 v6, 0x3

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_5e

    :cond_97
    const/16 v8, 0x7f

    if-ne v7, v8, :cond_5e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    const/16 v1, 0x8

    invoke-direct {p0, v0, v6, v1}, Lcom/google/android/gms/internal/zzeld;->read([BII)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeld;->zzneq:[B

    add-int/lit8 v0, v0, -0x8

    aget-byte v6, v1, v0

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x2

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x3

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x4

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x5

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x6

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long/2addr v0, v6

    goto/16 :goto_5e

    :cond_f8
    const/16 v0, 0xa

    if-eq v5, v0, :cond_f

    if-eq v5, v2, :cond_104

    if-eq v5, v11, :cond_104

    if-eq v5, v13, :cond_104

    if-nez v5, :cond_185

    :cond_104
    if-ne v5, v13, :cond_12a

    if-eqz v4, :cond_122

    array-length v0, v6

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_11a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zznep:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzeku;->zzaq([B)V
    :try_end_112
    .catch Ljava/net/SocketTimeoutException; {:try_start_7e .. :try_end_112} :catch_3b
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_112} :catch_6e
    .catch Lcom/google/android/gms/internal/zzela; {:try_start_7e .. :try_end_112} :catch_114

    goto/16 :goto_f

    :catch_114
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzeld;->zzc(Lcom/google/android/gms/internal/zzela;)V

    goto/16 :goto_f

    :cond_11a
    :try_start_11a
    new-instance v0, Lcom/google/android/gms/internal/zzela;

    const-string v1, "PING frame too long"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_122
    new-instance v0, Lcom/google/android/gms/internal/zzela;

    const-string v1, "PING must not fragment across frames"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzner:Lcom/google/android/gms/internal/zzekp;

    if-eqz v0, :cond_138

    if-eqz v5, :cond_138

    new-instance v0, Lcom/google/android/gms/internal/zzela;

    const-string v1, "Failed to continue outstanding frame"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_138
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzner:Lcom/google/android/gms/internal/zzekp;

    if-nez v0, :cond_146

    if-nez v5, :cond_146

    new-instance v0, Lcom/google/android/gms/internal/zzela;

    const-string v1, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_146
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzner:Lcom/google/android/gms/internal/zzekp;

    if-nez v0, :cond_153

    if-ne v5, v11, :cond_163

    new-instance v0, Lcom/google/android/gms/internal/zzeko;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeko;-><init>()V

    :goto_151
    iput-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzner:Lcom/google/android/gms/internal/zzekp;

    :cond_153
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzner:Lcom/google/android/gms/internal/zzekp;

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/zzekp;->zzao([B)Z

    move-result v0

    if-nez v0, :cond_169

    new-instance v0, Lcom/google/android/gms/internal/zzela;

    const-string v1, "Failed to decode frame"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_163
    new-instance v0, Lcom/google/android/gms/internal/zzekq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzekq;-><init>()V

    goto :goto_151

    :cond_169
    if-eqz v4, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeld;->zzner:Lcom/google/android/gms/internal/zzekp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekp;->zzcar()Lcom/google/android/gms/internal/zzelc;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeld;->zzner:Lcom/google/android/gms/internal/zzekp;

    if-nez v0, :cond_17e

    new-instance v0, Lcom/google/android/gms/internal/zzela;

    const-string v1, "Failed to decode whole message"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeld;->zzndt:Lcom/google/android/gms/internal/zzekz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzekz;->zza(Lcom/google/android/gms/internal/zzelc;)V

    goto/16 :goto_f

    :cond_185
    new-instance v0, Lcom/google/android/gms/internal/zzela;

    const/16 v1, 0x18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported opcode: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a0
    .catch Ljava/net/SocketTimeoutException; {:try_start_11a .. :try_end_1a0} :catch_3b
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_1a0} :catch_6e
    .catch Lcom/google/android/gms/internal/zzela; {:try_start_11a .. :try_end_1a0} :catch_114

    :cond_1a0
    return-void
.end method

.method final zza(Ljava/io/DataInputStream;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeld;->zzneo:Ljava/io/DataInputStream;

    return-void
.end method

.method final zzcba()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeld;->zznes:Z

    return-void
.end method
