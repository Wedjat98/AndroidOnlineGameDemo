.class public Lcom/ydnetwork/net/toolbox/BasicNetwork;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/Network;


# static fields
.field protected static final DEBUG:Z

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field protected final mHttpStack:Lcom/ydnetwork/net/toolbox/HttpStack;

.field protected final mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/ydnetwork/net/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->DEBUG:Z

    const/16 v0, 0xbb8

    sput v0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    const/16 v0, 0x1000

    sput v0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/ydnetwork/net/toolbox/HttpStack;)V
    .registers 4

    new-instance v0, Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    sget v1, Lcom/ydnetwork/net/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/ydnetwork/net/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/ydnetwork/net/toolbox/BasicNetwork;-><init>(Lcom/ydnetwork/net/toolbox/HttpStack;Lcom/ydnetwork/net/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/ydnetwork/net/toolbox/HttpStack;Lcom/ydnetwork/net/toolbox/ByteArrayPool;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->mHttpStack:Lcom/ydnetwork/net/toolbox/HttpStack;

    iput-object p2, p0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lcom/ydnetwork/net/Cache$Entry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ydnetwork/net/Cache$Entry;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p2, Lcom/ydnetwork/net/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "If-None-Match"

    iget-object v1, p2, Lcom/ydnetwork/net/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-wide v0, p2, Lcom/ydnetwork/net/Cache$Entry;->lastModified:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/ydnetwork/net/Cache$Entry;->lastModified:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ydnetwork/net/Request",
            "<*>;",
            "Lcom/ydnetwork/net/VolleyError;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/ydnetwork/net/Request;->getRetryPolicy()Lcom/ydnetwork/net/RetryPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ydnetwork/net/Request;->getTimeoutMs()I

    move-result v1

    :try_start_b
    invoke-interface {v0, p2}, Lcom/ydnetwork/net/RetryPolicy;->retry(Lcom/ydnetwork/net/VolleyError;)V
    :try_end_e
    .catch Lcom/ydnetwork/net/VolleyError; {:try_start_b .. :try_end_e} :catch_22

    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_22
    move-exception v0

    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ydnetwork/net/Request;->addMarker(Ljava/lang/String;)V

    throw v0
.end method

.method protected static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    return-object v1
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;)[B
    .registers 9

    const/4 v6, 0x0

    new-instance v2, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/ydnetwork/net/toolbox/ByteArrayPool;I)V

    const/4 v1, 0x0

    :try_start_e
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v0, Lcom/ydnetwork/net/ServerError;

    invoke-direct {v0}, Lcom/ydnetwork/net/ServerError;-><init>()V

    throw v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    :try_start_1b
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_54

    :goto_1e
    iget-object v3, p0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    invoke-virtual {v3, v1}, Lcom/ydnetwork/net/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v2}, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v0

    :cond_27
    :try_start_27
    iget-object v3, p0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/ydnetwork/net/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3b

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_2f

    :cond_3b
    invoke-virtual {v2}, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_1a

    move-result-object v0

    :try_start_3f
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4b

    :goto_42
    iget-object v3, p0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->mPool:Lcom/ydnetwork/net/toolbox/ByteArrayPool;

    invoke-virtual {v3, v1}, Lcom/ydnetwork/net/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v2}, Lcom/ydnetwork/net/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v0

    :catch_4b
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/ydnetwork/net/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    :catch_54
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/ydnetwork/net/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method private logSlowRequests(JLcom/ydnetwork/net/Request;[BLorg/apache/http/StatusLine;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ydnetwork/net/Request",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_b

    sget v0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_41

    :cond_b
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_42

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_22
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/ydnetwork/net/Request;->getRetryPolicy()Lcom/ydnetwork/net/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/ydnetwork/net/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/ydnetwork/net/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    return-void

    :cond_42
    const-string v0, "null"

    goto :goto_22
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Lcom/ydnetwork/net/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public performRequest(Lcom/ydnetwork/net/Request;)Lcom/ydnetwork/net/NetworkResponse;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<*>;)",
            "Lcom/ydnetwork/net/NetworkResponse;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    :goto_4
    const/4 v3, 0x0

    const/4 v14, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    :try_start_a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/ydnetwork/net/Request;->getCacheEntry()Lcom/ydnetwork/net/Cache$Entry;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/ydnetwork/net/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lcom/ydnetwork/net/Cache$Entry;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ydnetwork/net/toolbox/BasicNetwork;->mHttpStack:Lcom/ydnetwork/net/toolbox/HttpStack;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v2}, Lcom/ydnetwork/net/toolbox/HttpStack;->performRequest(Lcom/ydnetwork/net/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_21
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_21} :catch_a5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_21} :catch_c6
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_21} :catch_d5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_21} :catch_f3

    move-result-object v15

    :try_start_22
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Lcom/ydnetwork/net/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v6

    const/16 v2, 0x130

    if-ne v4, v2, :cond_65

    invoke-virtual/range {p1 .. p1}, Lcom/ydnetwork/net/Request;->getCacheEntry()Lcom/ydnetwork/net/Cache$Entry;

    move-result-object v2

    if-nez v2, :cond_4c

    new-instance v3, Lcom/ydnetwork/net/NetworkResponse;

    const/16 v4, 0x130

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lcom/ydnetwork/net/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    :goto_4b
    return-object v3

    :cond_4c
    iget-object v3, v2, Lcom/ydnetwork/net/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v7, Lcom/ydnetwork/net/NetworkResponse;

    const/16 v8, 0x130

    iget-object v9, v2, Lcom/ydnetwork/net/Cache$Entry;->data:[B

    iget-object v10, v2, Lcom/ydnetwork/net/Cache$Entry;->responseHeaders:Ljava/util/Map;

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v12, v2, v16

    invoke-direct/range {v7 .. v13}, Lcom/ydnetwork/net/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    move-object v3, v7

    goto :goto_4b

    :cond_65
    const/16 v2, 0x12d

    if-eq v4, v2, :cond_6d

    const/16 v2, 0x12e

    if-ne v4, v2, :cond_7a

    :cond_6d
    const-string v2, "Location"

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/ydnetwork/net/Request;->setRedirectUrl(Ljava/lang/String;)V

    :cond_7a
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_b4

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ydnetwork/net/toolbox/BasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;)[B
    :try_end_89
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_89} :catch_a5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_22 .. :try_end_89} :catch_c6
    .catch Ljava/net/MalformedURLException; {:try_start_22 .. :try_end_89} :catch_d5
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_89} :catch_180

    move-result-object v11

    :goto_8a
    :try_start_8a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v8, v2, v16

    move-object/from16 v7, p0

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/ydnetwork/net/toolbox/BasicNetwork;->logSlowRequests(JLcom/ydnetwork/net/Request;[BLorg/apache/http/StatusLine;)V

    const/16 v2, 0xc8

    if-lt v4, v2, :cond_9f

    const/16 v2, 0x12b

    if-le v4, v2, :cond_b8

    :cond_9f
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_a5
    .catch Ljava/net/SocketTimeoutException; {:try_start_8a .. :try_end_a5} :catch_a5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8a .. :try_end_a5} :catch_c6
    .catch Ljava/net/MalformedURLException; {:try_start_8a .. :try_end_a5} :catch_d5
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_a5} :catch_185

    :catch_a5
    move-exception v2

    const-string v2, "socket"

    new-instance v3, Lcom/ydnetwork/net/TimeoutError;

    invoke-direct {v3}, Lcom/ydnetwork/net/TimeoutError;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/ydnetwork/net/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V

    goto/16 :goto_4

    :cond_b4
    const/4 v2, 0x0

    :try_start_b5
    new-array v11, v2, [B
    :try_end_b7
    .catch Ljava/net/SocketTimeoutException; {:try_start_b5 .. :try_end_b7} :catch_a5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b5 .. :try_end_b7} :catch_c6
    .catch Ljava/net/MalformedURLException; {:try_start_b5 .. :try_end_b7} :catch_d5
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b7} :catch_180

    goto :goto_8a

    :cond_b8
    :try_start_b8
    new-instance v3, Lcom/ydnetwork/net/NetworkResponse;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    move-object v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/ydnetwork/net/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_c5
    .catch Ljava/net/SocketTimeoutException; {:try_start_b8 .. :try_end_c5} :catch_a5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b8 .. :try_end_c5} :catch_c6
    .catch Ljava/net/MalformedURLException; {:try_start_b8 .. :try_end_c5} :catch_d5
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c5} :catch_185

    goto :goto_4b

    :catch_c6
    move-exception v2

    const-string v2, "connection"

    new-instance v3, Lcom/ydnetwork/net/TimeoutError;

    invoke-direct {v3}, Lcom/ydnetwork/net/TimeoutError;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/ydnetwork/net/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V

    goto/16 :goto_4

    :catch_d5
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/ydnetwork/net/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_f3
    move-exception v2

    move-object v5, v14

    :goto_f5
    if-eqz v3, :cond_141

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v3, 0x12d

    if-eq v4, v3, :cond_107

    const/16 v3, 0x12e

    if-ne v4, v3, :cond_147

    :cond_107
    const-string v3, "Request at %s has been redirected to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/ydnetwork/net/Request;->getOriginUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/ydnetwork/net/Request;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v7}, Lcom/ydnetwork/net/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_11d
    if-eqz v5, :cond_17a

    new-instance v3, Lcom/ydnetwork/net/NetworkResponse;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lcom/ydnetwork/net/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v2, 0x191

    if-eq v4, v2, :cond_133

    const/16 v2, 0x193

    if-ne v4, v2, :cond_15e

    :cond_133
    const-string v2, "auth"

    new-instance v4, Lcom/ydnetwork/net/AuthFailureError;

    invoke-direct {v4, v3}, Lcom/ydnetwork/net/AuthFailureError;-><init>(Lcom/ydnetwork/net/NetworkResponse;)V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v4}, Lcom/ydnetwork/net/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V

    goto/16 :goto_4

    :cond_141
    new-instance v3, Lcom/ydnetwork/net/NoConnectionError;

    invoke-direct {v3, v2}, Lcom/ydnetwork/net/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_147
    const-string v3, "Unexpected response code %d for %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/ydnetwork/net/Request;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v7}, Lcom/ydnetwork/net/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11d

    :cond_15e
    const/16 v2, 0x12d

    if-eq v4, v2, :cond_166

    const/16 v2, 0x12e

    if-ne v4, v2, :cond_174

    :cond_166
    const-string v2, "redirect"

    new-instance v4, Lcom/ydnetwork/net/RedirectError;

    invoke-direct {v4, v3}, Lcom/ydnetwork/net/RedirectError;-><init>(Lcom/ydnetwork/net/NetworkResponse;)V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v4}, Lcom/ydnetwork/net/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/ydnetwork/net/Request;Lcom/ydnetwork/net/VolleyError;)V

    goto/16 :goto_4

    :cond_174
    new-instance v2, Lcom/ydnetwork/net/ServerError;

    invoke-direct {v2, v3}, Lcom/ydnetwork/net/ServerError;-><init>(Lcom/ydnetwork/net/NetworkResponse;)V

    throw v2

    :cond_17a
    new-instance v3, Lcom/ydnetwork/net/NetworkError;

    invoke-direct {v3, v2}, Lcom/ydnetwork/net/NetworkError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_180
    move-exception v2

    move-object v5, v14

    move-object v3, v15

    goto/16 :goto_f5

    :catch_185
    move-exception v2

    move-object v5, v11

    move-object v3, v15

    goto/16 :goto_f5
.end method
