.class public final Lcom/qiniu/android/dns/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field private static previousIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, ""

    sput-object v0, Lcom/qiniu/android/dns/Network;->previousIp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIp()Ljava/lang/String;
    .registers 6

    .prologue
    .line 15
    const/4 v3, 0x0

    .line 17
    .local v3, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1d

    .line 18
    .end local v3    # "socket":Ljava/net/DatagramSocket;
    .local v4, "socket":Ljava/net/DatagramSocket;
    :try_start_6
    const-string v5, "114.114.114.114"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 19
    .local v0, "addr":Ljava/net/InetAddress;
    const/16 v5, 0x35

    invoke-virtual {v4, v0, v5}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_24

    .line 25
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 26
    .local v2, "local":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 27
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "local":Ljava/net/InetAddress;
    .end local v4    # "socket":Ljava/net/DatagramSocket;
    :goto_1c
    return-object v5

    .line 20
    .restart local v3    # "socket":Ljava/net/DatagramSocket;
    :catch_1d
    move-exception v1

    .line 21
    .local v1, "e":Ljava/io/IOException;
    :goto_1e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    const-string v5, ""

    goto :goto_1c

    .line 20
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    :catch_24
    move-exception v1

    move-object v3, v4

    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "socket":Ljava/net/DatagramSocket;
    goto :goto_1e
.end method

.method public static declared-synchronized isNetworkChanged()Z
    .registers 3

    .prologue
    .line 32
    const-class v2, Lcom/qiniu/android/dns/Network;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "nowIp":Ljava/lang/String;
    sget-object v1, Lcom/qiniu/android/dns/Network;->previousIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    move-result v1

    if-eqz v1, :cond_12

    .line 34
    const/4 v1, 0x0

    .line 37
    :goto_10
    monitor-exit v2

    return v1

    .line 36
    :cond_12
    :try_start_12
    sput-object v0, Lcom/qiniu/android/dns/Network;->previousIp:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    .line 37
    const/4 v1, 0x1

    goto :goto_10

    .line 32
    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method
