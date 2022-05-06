.class public final Lcom/squareup/okhttp/internal/huc/CacheAdapter;
.super Ljava/lang/Object;
.source "CacheAdapter.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/InternalCache;


# instance fields
.field private final delegate:Ljava/net/ResponseCache;


# direct methods
.method public constructor <init>(Ljava/net/ResponseCache;)V
    .registers 2
    .param p1, "delegate"    # Ljava/net/ResponseCache;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    .line 40
    return-void
.end method

.method private getJavaCachedResponse(Lcom/squareup/okhttp/Request;)Ljava/net/CacheResponse;
    .registers 6
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->extractJavaHeaders(Lcom/squareup/okhttp/Request;)Ljava/util/Map;

    move-result-object v0

    .line 103
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public get(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .registers 4
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->getJavaCachedResponse(Lcom/squareup/okhttp/Request;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 48
    .local v0, "javaResponse":Ljava/net/CacheResponse;
    if-nez v0, :cond_8

    .line 49
    const/4 v1, 0x0

    .line 51
    :goto_7
    return-object v1

    :cond_8
    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->createOkResponse(Lcom/squareup/okhttp/Request;Ljava/net/CacheResponse;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    goto :goto_7
.end method

.method public getDelegate()Ljava/net/ResponseCache;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    return-object v0
.end method

.method public put(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;
    .registers 6
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v2

    .line 56
    .local v2, "uri":Ljava/net/URI;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->createJavaUrlConnection(Lcom/squareup/okhttp/Response;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 57
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    invoke-virtual {v3, v2, v0}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v1

    .line 58
    .local v1, "request":Ljava/net/CacheRequest;
    if-nez v1, :cond_16

    .line 59
    const/4 v3, 0x0

    .line 61
    :goto_15
    return-object v3

    :cond_16
    new-instance v3, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;-><init>(Lcom/squareup/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V

    goto :goto_15
.end method

.method public remove(Lcom/squareup/okhttp/Request;)V
    .registers 2
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public trackConditionalCacheHit()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public trackResponse(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .registers 2
    .param p1, "cacheStrategy"    # Lcom/squareup/okhttp/internal/http/CacheStrategy;

    .prologue
    .line 95
    return-void
.end method

.method public update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .registers 3
    .param p1, "cached"    # Lcom/squareup/okhttp/Response;
    .param p2, "network"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    return-void
.end method
