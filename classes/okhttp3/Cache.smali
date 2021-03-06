.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$CacheResponseBody;,
        Lokhttp3/Cache$Entry;,
        Lokhttp3/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lokhttp3/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lokhttp3/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    .line 178
    sget-object v0, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/Cache;-><init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V

    .line 179
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V
    .registers 11
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .param p4, "fileSystem"    # Lokhttp3/internal/io/FileSystem;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lokhttp3/Cache$1;

    invoke-direct {v0, p0}, Lokhttp3/Cache$1;-><init>(Lokhttp3/Cache;)V

    iput-object v0, p0, Lokhttp3/Cache;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 182
    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/cache/DiskLruCache;->create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    .line 183
    return-void
.end method

.method private abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 3
    .param p1, "editor"    # Lokhttp3/internal/cache/DiskLruCache$Editor;

    .prologue
    .line 279
    if-eqz p1, :cond_5

    .line 280
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 284
    :cond_5
    :goto_5
    return-void

    .line 282
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static synthetic access$000(Lokhttp3/Cache;Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .registers 3
    .param p0, "x0"    # Lokhttp3/Cache;
    .param p1, "x1"    # Lokhttp3/Response;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/Cache;->put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lokhttp3/Cache;Lokhttp3/Request;)V
    .registers 2
    .param p0, "x0"    # Lokhttp3/Cache;
    .param p1, "x1"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/Cache;->remove(Lokhttp3/Request;)V

    return-void
.end method

.method static synthetic access$1000(Lokio/BufferedSource;)I
    .registers 2
    .param p0, "x0"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Lokhttp3/Cache;->readInt(Lokio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lokhttp3/Cache;Lokhttp3/Response;Lokhttp3/Response;)V
    .registers 3
    .param p0, "x0"    # Lokhttp3/Cache;
    .param p1, "x1"    # Lokhttp3/Response;
    .param p2, "x2"    # Lokhttp3/Response;

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lokhttp3/Cache;->update(Lokhttp3/Response;Lokhttp3/Response;)V

    return-void
.end method

.method static synthetic access$300(Lokhttp3/Cache;)V
    .registers 1
    .param p0, "x0"    # Lokhttp3/Cache;

    .prologue
    .line 136
    invoke-direct {p0}, Lokhttp3/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic access$400(Lokhttp3/Cache;Lokhttp3/internal/cache/CacheStrategy;)V
    .registers 2
    .param p0, "x0"    # Lokhttp3/Cache;
    .param p1, "x1"    # Lokhttp3/internal/cache/CacheStrategy;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/Cache;->trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V

    return-void
.end method

.method static synthetic access$600(Lokhttp3/Cache;)Lokhttp3/internal/cache/DiskLruCache;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Cache;

    .prologue
    .line 136
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    return-object v0
.end method

.method static synthetic access$808(Lokhttp3/Cache;)I
    .registers 3
    .param p0, "x0"    # Lokhttp3/Cache;

    .prologue
    .line 136
    iget v0, p0, Lokhttp3/Cache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lokhttp3/Cache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$908(Lokhttp3/Cache;)I
    .registers 3
    .param p0, "x0"    # Lokhttp3/Cache;

    .prologue
    .line 136
    iget v0, p0, Lokhttp3/Cache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lokhttp3/Cache;->writeAbortCount:I

    return v0
.end method

.method private put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .registers 9
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 225
    :try_start_17
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-direct {p0, v5}, Lokhttp3/Cache;->remove(Lokhttp3/Request;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_52

    .line 253
    :cond_1e
    :goto_1e
    return-object v4

    .line 231
    :cond_1f
    const-string v5, "GET"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 238
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Response;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 242
    new-instance v2, Lokhttp3/Cache$Entry;

    invoke-direct {v2, p1}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 243
    .local v2, "entry":Lokhttp3/Cache$Entry;
    const/4 v1, 0x0

    .line 245
    .local v1, "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_start_33
    iget-object v5, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/Cache;->urlToKey(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_1e

    .line 249
    invoke-virtual {v2, v1}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 250
    new-instance v5, Lokhttp3/Cache$CacheRequestImpl;

    invoke-direct {v5, p0, v1}, Lokhttp3/Cache$CacheRequestImpl;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4b} :catch_4d

    move-object v4, v5

    goto :goto_1e

    .line 251
    :catch_4d
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_1e

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    .end local v2    # "entry":Lokhttp3/Cache$Entry;
    :catch_52
    move-exception v5

    goto :goto_1e
.end method

.method private static readInt(Lokio/BufferedSource;)I
    .registers 8
    .param p0, "source"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    :try_start_0
    invoke-interface {p0}, Lokio/BufferedSource;->readDecimalLong()J

    move-result-wide v2

    .line 726
    .local v2, "result":J
    invoke-interface {p0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "line":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1b

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_49

    .line 728
    :cond_1b
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected an int but was \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3e} :catch_3e

    .line 731
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "result":J
    :catch_3e
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "result":J
    :cond_49
    long-to-int v4, v2

    return v4
.end method

.method private remove(Lokhttp3/Request;)V
    .registers 4
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {p1}, Lokhttp3/Cache;->urlToKey(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 259
    return-void
.end method

.method private declared-synchronized trackConditionalCacheHit()V
    .registers 2

    .prologue
    .line 414
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 415
    monitor-exit p0

    return-void

    .line 414
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
    .registers 3
    .param p1, "cacheStrategy"    # Lokhttp3/internal/cache/CacheStrategy;

    .prologue
    .line 402
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->requestCount:I

    .line 404
    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v0, :cond_13

    .line 406
    iget v0, p0, Lokhttp3/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->networkCount:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1e

    .line 411
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 407
    :cond_13
    :try_start_13
    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    if-eqz v0, :cond_11

    .line 409
    iget v0, p0, Lokhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 402
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private update(Lokhttp3/Response;Lokhttp3/Response;)V
    .registers 8
    .param p1, "cached"    # Lokhttp3/Response;
    .param p2, "network"    # Lokhttp3/Response;

    .prologue
    .line 262
    new-instance v2, Lokhttp3/Cache$Entry;

    invoke-direct {v2, p2}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 263
    .local v2, "entry":Lokhttp3/Cache$Entry;
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    check-cast v4, Lokhttp3/Cache$CacheResponseBody;

    # getter for: Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    invoke-static {v4}, Lokhttp3/Cache$CacheResponseBody;->access$500(Lokhttp3/Cache$CacheResponseBody;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v3

    .line 264
    .local v3, "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    const/4 v1, 0x0

    .line 266
    .local v1, "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_start_10
    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_1c

    .line 268
    invoke-virtual {v2, v1}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 269
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 274
    :cond_1c
    :goto_1c
    return-void

    .line 271
    :catch_1d
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_1c
.end method

.method private static urlToKey(Lokhttp3/Request;)Ljava/lang/String;
    .registers 2
    .param p0, "request"    # Lokhttp3/Request;

    .prologue
    .line 186
    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 391
    return-void
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->delete()V

    .line 307
    return-void
.end method

.method public directory()Ljava/io/File;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public evictAll()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->evictAll()V

    .line 315
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    .line 387
    return-void
.end method

.method get(Lokhttp3/Request;)Lokhttp3/Response;
    .registers 9
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    const/4 v5, 0x0

    .line 190
    invoke-static {p1}, Lokhttp3/Cache;->urlToKey(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "key":Ljava/lang/String;
    :try_start_5
    iget-object v6, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v6, v2}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_f

    move-result-object v4

    .line 195
    .local v4, "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    if-nez v4, :cond_12

    move-object v3, v5

    .line 217
    .end local v4    # "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :cond_e
    :goto_e
    return-object v3

    .line 198
    :catch_f
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v5

    .line 200
    goto :goto_e

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :cond_12
    :try_start_12
    new-instance v1, Lokhttp3/Cache$Entry;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v6

    invoke-direct {v1, v6}, Lokhttp3/Cache$Entry;-><init>(Lokio/Source;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_2f

    .line 210
    .local v1, "entry":Lokhttp3/Cache$Entry;
    invoke-virtual {v1, v4}, Lokhttp3/Cache$Entry;->response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;

    move-result-object v3

    .line 212
    .local v3, "response":Lokhttp3/Response;
    invoke-virtual {v1, p1, v3}, Lokhttp3/Cache$Entry;->matches(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 213
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 214
    goto :goto_e

    .line 205
    .end local v1    # "entry":Lokhttp3/Cache$Entry;
    .end local v3    # "response":Lokhttp3/Response;
    :catch_2f
    move-exception v0

    .line 206
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 207
    goto :goto_e
.end method

.method public declared-synchronized hitCount()I
    .registers 2

    .prologue
    .line 422
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 299
    return-void
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public maxSize()J
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized networkCount()I
    .registers 2

    .prologue
    .line 418
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->networkCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestCount()I
    .registers 2

    .prologue
    .line 426
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->requestCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public urls()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lokhttp3/Cache$2;

    invoke-direct {v0, p0}, Lokhttp3/Cache$2;-><init>(Lokhttp3/Cache;)V

    return-object v0
.end method

.method public declared-synchronized writeAbortCount()I
    .registers 2

    .prologue
    .line 370
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->writeAbortCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeSuccessCount()I
    .registers 2

    .prologue
    .line 374
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->writeSuccessCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
