.class Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ydnetwork/net/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheHeader"
.end annotation


# instance fields
.field public etag:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public lastModified:J

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ydnetwork/net/Cache$Entry;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    iget-object v0, p2, Lcom/ydnetwork/net/Cache$Entry;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-object v0, p2, Lcom/ydnetwork/net/Cache$Entry;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iget-wide v0, p2, Lcom/ydnetwork/net/Cache$Entry;->serverDate:J

    iput-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    iget-wide v0, p2, Lcom/ydnetwork/net/Cache$Entry;->lastModified:J

    iput-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    iget-wide v0, p2, Lcom/ydnetwork/net/Cache$Entry;->ttl:J

    iput-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    iget-wide v0, p2, Lcom/ydnetwork/net/Cache$Entry;->softTtl:J

    iput-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    iget-object v0, p2, Lcom/ydnetwork/net/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method public static readHeader(Ljava/io/InputStream;)Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;
    .registers 5

    new-instance v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;-><init>()V

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x20150306

    if-eq v1, v2, :cond_14

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_14
    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iget-object v1, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    :cond_2d
    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public toCacheEntry([B)Lcom/ydnetwork/net/Cache$Entry;
    .registers 6

    new-instance v0, Lcom/ydnetwork/net/Cache$Entry;

    invoke-direct {v0}, Lcom/ydnetwork/net/Cache$Entry;-><init>()V

    iput-object p1, v0, Lcom/ydnetwork/net/Cache$Entry;->data:[B

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/ydnetwork/net/Cache$Entry;->etag:Ljava/lang/String;

    iget-wide v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    iput-wide v2, v0, Lcom/ydnetwork/net/Cache$Entry;->serverDate:J

    iget-wide v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    iput-wide v2, v0, Lcom/ydnetwork/net/Cache$Entry;->lastModified:J

    iget-wide v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    iput-wide v2, v0, Lcom/ydnetwork/net/Cache$Entry;->ttl:J

    iget-wide v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    iput-wide v2, v0, Lcom/ydnetwork/net/Cache$Entry;->softTtl:J

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    iput-object v1, v0, Lcom/ydnetwork/net/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public writeHeader(Ljava/io/OutputStream;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x20150306

    :try_start_5
    invoke-static {p1, v2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    iget-object v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    if-nez v2, :cond_33

    const-string v2, ""

    :goto_13
    invoke-static {p1, v2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-static {p1, v2, v3}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    invoke-static {p1, v2, v3}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    invoke-static {p1, v2, v3}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-static {p1, v2, v3}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    iget-object v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :goto_32
    return v0

    :cond_33
    iget-object v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_35} :catch_36

    goto :goto_13

    :catch_36
    move-exception v2

    const-string v3, "%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/ydnetwork/net/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_32
.end method
