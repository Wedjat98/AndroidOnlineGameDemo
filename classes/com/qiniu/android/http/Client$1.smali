.class Lcom/qiniu/android/http/Client$1;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/squareup/okhttp/Dns;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/Client;-><init>(Lcom/qiniu/android/http/Proxy;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/Client;

.field final synthetic val$dns:Lcom/qiniu/android/dns/DnsManager;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/dns/DnsManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qiniu/android/http/Client;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/qiniu/android/http/Client$1;->this$0:Lcom/qiniu/android/http/Client;

    iput-object p2, p0, Lcom/qiniu/android/http/Client$1;->val$dns:Lcom/qiniu/android/dns/DnsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/qiniu/android/http/Client$1;->val$dns:Lcom/qiniu/android/dns/DnsManager;

    new-instance v4, Lcom/qiniu/android/dns/Domain;

    invoke-direct {v4, p1}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/qiniu/android/dns/DnsManager;->queryInetAdress(Lcom/qiniu/android/dns/Domain;)[Ljava/net/InetAddress;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_26

    move-result-object v1

    .line 64
    .local v1, "ips":[Ljava/net/InetAddress;
    if-nez v1, :cond_34

    .line 65
    new-instance v3, Ljava/net/UnknownHostException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resolve failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    .end local v1    # "ips":[Ljava/net/InetAddress;
    :catch_26
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    new-instance v3, Ljava/net/UnknownHostException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "ips":[Ljava/net/InetAddress;
    :cond_34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 69
    return-object v2
.end method
