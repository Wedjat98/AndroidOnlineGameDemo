.class public final enum Lmobi/androidcloud/lib/session/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum jX:Lmobi/androidcloud/lib/session/h;


# instance fields
.field private jY:Ljava/net/DatagramSocket;

.field private jZ:Ljava/lang/String;

.field private ka:I

.field private kb:Ljava/net/InetAddress;

.field private kc:Ljava/lang/String;

.field private kd:I

.field private ke:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lmobi/androidcloud/lib/session/h;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/session/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Lmobi/androidcloud/lib/session/h;

    sget-object v1, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/net/DatagramPacket;)V
    .registers 3

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_9

    .line 66
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->kc:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1b

    if-nez v0, :cond_b

    .line 77
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 73
    :cond_b
    :try_start_b
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->ke:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 74
    iget v0, p0, Lmobi/androidcloud/lib/session/h;->kd:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 75
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    goto :goto_9

    .line 64
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lmobi/androidcloud/lib/session/h;->jZ:Ljava/lang/String;

    .line 28
    iput p2, p0, Lmobi/androidcloud/lib/session/h;->ka:I

    .line 29
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jZ:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/session/h;->kb:Ljava/net/InetAddress;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 30
    monitor-exit p0

    return-void

    .line 27
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 4

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_d

    .line 83
    :try_start_5
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_f
    .catchall {:try_start_5 .. :try_end_d} :catchall_1f

    .line 90
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 85
    :catch_f
    move-exception v0

    .line 86
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while closing udp socket "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1f

    goto :goto_d

    .line 81
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 34
    monitor-enter p0

    if-nez p1, :cond_5

    .line 43
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 37
    :cond_5
    :try_start_5
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->kc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lmobi/androidcloud/lib/session/h;->kd:I

    if-eq p2, v0, :cond_3

    .line 40
    :cond_11
    iput-object p1, p0, Lmobi/androidcloud/lib/session/h;->kc:Ljava/lang/String;

    .line 41
    iput p2, p0, Lmobi/androidcloud/lib/session/h;->kd:I

    .line 42
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->kc:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/session/h;->ke:Ljava/net/InetAddress;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    goto :goto_3

    .line 34
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized kn()Ljava/net/DatagramSocket;
    .registers 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ko()V
    .registers 3

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lmobi/androidcloud/lib/session/h;->close()V

    .line 99
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jZ:Ljava/lang/String;

    iget v1, p0, Lmobi/androidcloud/lib/session/h;->ka:I

    invoke-static {v0, v1}, Lcom/google/protobuf/d;->a(Ljava/lang/String;I)Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;

    .line 104
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 105
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    .line 108
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 130
    monitor-exit p0

    return-void

    .line 95
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized send(Ljava/net/DatagramPacket;)V
    .registers 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_14

    .line 53
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->kb:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 58
    iget v0, p0, Lmobi/androidcloud/lib/session/h;->ka:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 59
    iget-object v0, p0, Lmobi/androidcloud/lib/session/h;->jY:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 61
    :cond_14
    monitor-exit p0

    return-void

    .line 51
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
