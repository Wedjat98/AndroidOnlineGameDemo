.class Lcom/qiniu/android/http/Client$2;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor;


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


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/Client;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qiniu/android/http/Client;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/qiniu/android/http/Client$2;->this$0:Lcom/qiniu/android/http/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;
    .registers 8
    .param p1, "chain"    # Lcom/squareup/okhttp/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p1}, Lcom/squareup/okhttp/Interceptor$Chain;->request()Lcom/squareup/okhttp/Request;

    move-result-object v2

    .line 78
    .local v2, "request":Lcom/squareup/okhttp/Request;
    invoke-interface {p1, v2}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v3

    .line 79
    .local v3, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qiniu/android/http/Client$IpTag;

    .line 80
    .local v4, "tag":Lcom/qiniu/android/http/Client$IpTag;
    const-string v1, ""

    .line 82
    .local v1, "ip":Ljava/lang/String;
    :try_start_10
    invoke-interface {p1}, Lcom/squareup/okhttp/Interceptor$Chain;->connection()Lcom/squareup/okhttp/Connection;

    move-result-object v5

    invoke-interface {v5}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_23

    move-result-object v1

    .line 86
    :goto_20
    iput-object v1, v4, Lcom/qiniu/android/http/Client$IpTag;->ip:Ljava/lang/String;

    .line 87
    return-object v3

    .line 83
    :catch_23
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method
