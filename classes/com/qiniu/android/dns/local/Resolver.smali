.class public final Lcom/qiniu/android/dns/local/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# static fields
.field private static final random:Ljava/util/Random;


# instance fields
.field final address:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/qiniu/android/dns/local/Resolver;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    .line 25
    return-void
.end method

.method private udpCommunicate([B)[B
    .registers 8
    .param p1, "question"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 45
    .local v1, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_30

    .line 46
    .end local v1    # "socket":Ljava/net/DatagramSocket;
    .local v2, "socket":Ljava/net/DatagramSocket;
    :try_start_6
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v3, p1

    iget-object v4, p0, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    const/16 v5, 0x35

    invoke-direct {v0, p1, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 48
    .local v0, "packet":Ljava/net/DatagramPacket;
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 49
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 50
    new-instance v0, Ljava/net/DatagramPacket;

    .end local v0    # "packet":Ljava/net/DatagramPacket;
    const/16 v3, 0x5dc

    new-array v3, v3, [B

    const/16 v4, 0x5dc

    invoke-direct {v0, v3, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 51
    .restart local v0    # "packet":Ljava/net/DatagramPacket;
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 53
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_37

    move-result-object v3

    .line 55
    if-eqz v2, :cond_2f

    .line 56
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_2f
    return-object v3

    .line 55
    .end local v0    # "packet":Ljava/net/DatagramPacket;
    .end local v2    # "socket":Ljava/net/DatagramSocket;
    .restart local v1    # "socket":Ljava/net/DatagramSocket;
    :catchall_30
    move-exception v3

    :goto_31
    if-eqz v1, :cond_36

    .line 56
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_36
    throw v3

    .line 55
    .end local v1    # "socket":Ljava/net/DatagramSocket;
    .restart local v2    # "socket":Ljava/net/DatagramSocket;
    :catchall_37
    move-exception v3

    move-object v1, v2

    .end local v2    # "socket":Ljava/net/DatagramSocket;
    .restart local v1    # "socket":Ljava/net/DatagramSocket;
    goto :goto_31
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .registers 9
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .param p2, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    sget-object v4, Lcom/qiniu/android/dns/local/Resolver;->random:Ljava/util/Random;

    monitor-enter v4

    .line 31
    :try_start_3
    sget-object v3, Lcom/qiniu/android/dns/local/Resolver;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 32
    .local v1, "id":I
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_22

    .line 33
    iget-object v3, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/qiniu/android/dns/local/DnsMessage;->buildQuery(Ljava/lang/String;I)[B

    move-result-object v2

    .line 34
    .local v2, "query":[B
    invoke-direct {p0, v2}, Lcom/qiniu/android/dns/local/Resolver;->udpCommunicate([B)[B

    move-result-object v0

    .line 35
    .local v0, "answer":[B
    if-nez v0, :cond_25

    .line 36
    new-instance v3, Lcom/qiniu/android/dns/DnsException;

    iget-object v4, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    const-string v5, "cant get answer"

    invoke-direct {v3, v4, v5}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 32
    .end local v0    # "answer":[B
    .end local v1    # "id":I
    .end local v2    # "query":[B
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v3

    .line 39
    .restart local v0    # "answer":[B
    .restart local v1    # "id":I
    .restart local v2    # "query":[B
    :cond_25
    iget-object v3, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/qiniu/android/dns/local/DnsMessage;->parseResponse([BILjava/lang/String;)[Lcom/qiniu/android/dns/Record;

    move-result-object v3

    return-object v3
.end method
