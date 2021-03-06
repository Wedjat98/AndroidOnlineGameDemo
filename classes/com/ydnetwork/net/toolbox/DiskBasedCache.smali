.class public Lcom/ydnetwork/net/toolbox/DiskBasedCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;,
        Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20150306

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field private static final HYSTERESIS_FACTOR:F = 0.9f


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    iput-object p1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    iput p2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pruneIfNeeded(I)V
    .registers 16

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v4, p1

    add-long/2addr v0, v4

    iget v3, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    sget-boolean v0, Lcom/ydnetwork/net/VolleyLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "Pruning old cache entries."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ydnetwork/net/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-wide v4, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;

    iget-object v8, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_8d

    iget-wide v8, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v10, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v1, 0x1

    iget-wide v8, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v10, p1

    add-long/2addr v8, v10

    long-to-float v1, v8

    iget v8, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    cmpg-float v1, v1, v8

    if-gez v1, :cond_a1

    :goto_65
    sget-boolean v1, Lcom/ydnetwork/net/VolleyLog;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "pruned %d files, %d bytes, %d ms"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    iget-wide v8, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v13

    invoke-static {v1, v3}, Lcom/ydnetwork/net/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_8d
    const-string v8, "Could not delete cache entry for key=%s, filename=%s"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    aput-object v10, v9, v2

    iget-object v0, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Lcom/ydnetwork/net/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_50

    :cond_a1
    move v1, v0

    goto :goto_2b

    :cond_a3
    move v0, v1

    goto :goto_65
.end method

.method private putEntry(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;)V
    .registers 9

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v2, p2, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    :goto_f
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;

    iget-wide v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v4, p2, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-wide v0, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    goto :goto_f
.end method

.method private static read(Ljava/io/InputStream;)I
    .registers 3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_d
    return v0
.end method

.method static readInt(Ljava/io/InputStream;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readLong(Ljava/io/InputStream;)J
    .registers 9

    const-wide/16 v6, 0xff

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method static readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v2

    if-nez v2, :cond_23

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_29

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_a

    :cond_29
    return-object v0
.end method

.method private removeEntry(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;

    if-eqz v0, :cond_17

    iget-wide v2, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v0, v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method private static streamToBytes(Ljava/io/InputStream;I)[B
    .registers 6

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_10

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    add-int/2addr v0, v2

    goto :goto_3

    :cond_10
    if-eq v0, p1, :cond_3b

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    return-object v1
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .registers 3

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static writeLong(Ljava/io/OutputStream;J)V
    .registers 6

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method static writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_30

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_11

    :cond_30
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    :cond_34
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_15

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mTotalSize:J

    const-string v0, "Cache cleared."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ydnetwork/net/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/ydnetwork/net/Cache$Entry;
    .registers 10

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_94

    if-nez v0, :cond_f

    move-object v0, v1

    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_94

    move-result-object v3

    :try_start_13
    new-instance v2, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;Lcom/ydnetwork/net/toolbox/DiskBasedCache$1;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_23} :catch_42
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_13 .. :try_end_23} :catch_67
    .catchall {:try_start_13 .. :try_end_23} :catchall_8c

    :try_start_23
    invoke-static {v2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    # getter for: Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I
    invoke-static {v2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->access$100(Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v4}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/ydnetwork/net/Cache$Entry;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_38} :catch_9f
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_23 .. :try_end_38} :catch_9d
    .catchall {:try_start_23 .. :try_end_38} :catchall_9b

    move-result-object v0

    if-eqz v2, :cond_d

    :try_start_3b
    invoke-virtual {v2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_94

    goto :goto_d

    :catch_3f
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catch_42
    move-exception v0

    move-object v2, v1

    :goto_44
    :try_start_44
    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/ydnetwork/net/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_44 .. :try_end_5d} :catchall_9b

    if-eqz v2, :cond_62

    :try_start_5f
    invoke-virtual {v2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_64
    .catchall {:try_start_5f .. :try_end_62} :catchall_94

    :cond_62
    move-object v0, v1

    goto :goto_d

    :catch_64
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catch_67
    move-exception v0

    move-object v2, v1

    :goto_69
    :try_start_69
    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/NegativeArraySizeException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/ydnetwork/net/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_9b

    if-eqz v2, :cond_87

    :try_start_84
    invoke-virtual {v2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_89
    .catchall {:try_start_84 .. :try_end_87} :catchall_94

    :cond_87
    move-object v0, v1

    goto :goto_d

    :catch_89
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catchall_8c
    move-exception v0

    move-object v2, v1

    :goto_8e
    if-eqz v2, :cond_93

    :try_start_90
    invoke-virtual {v2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_97
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    :cond_93
    :try_start_93
    throw v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_97
    move-exception v0

    move-object v0, v1

    goto/16 :goto_d

    :catchall_9b
    move-exception v0

    goto :goto_8e

    :catch_9d
    move-exception v0

    goto :goto_69

    :catch_9f
    move-exception v0

    goto :goto_44
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ydnetwork/net/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_6c

    :cond_23
    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_23

    array-length v4, v3

    move v2, v0

    :goto_2f
    if-ge v2, v4, :cond_23

    aget-object v5, v3, v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_6c

    const/4 v1, 0x0

    :try_start_34
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3e} :catch_56
    .catchall {:try_start_34 .. :try_end_3e} :catchall_65

    :try_start_3e
    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-object v6, v1, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4d} :catch_78
    .catchall {:try_start_3e .. :try_end_4d} :catchall_73

    if-eqz v0, :cond_52

    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_6f
    .catchall {:try_start_4f .. :try_end_52} :catchall_6c

    :cond_52
    :goto_52
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2f

    :catch_56
    move-exception v0

    move-object v0, v1

    :goto_58
    if-eqz v5, :cond_5d

    :try_start_5a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_73

    :cond_5d
    if-eqz v0, :cond_52

    :try_start_5f
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_6c

    goto :goto_52

    :catch_63
    move-exception v0

    goto :goto_52

    :catchall_65
    move-exception v0

    :goto_66
    if-eqz v1, :cond_6b

    :try_start_68
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_71
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    :cond_6b
    :goto_6b
    :try_start_6b
    throw v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_6f
    move-exception v0

    goto :goto_52

    :catch_71
    move-exception v1

    goto :goto_6b

    :catchall_73
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_66

    :catch_78
    move-exception v1

    goto :goto_58
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/ydnetwork/net/Cache$Entry;

    move-result-object v0

    if-eqz v0, :cond_14

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/ydnetwork/net/Cache$Entry;->softTtl:J

    if-eqz p2, :cond_11

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/ydnetwork/net/Cache$Entry;->ttl:J

    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/ydnetwork/net/Cache$Entry;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/ydnetwork/net/Cache$Entry;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p2, Lcom/ydnetwork/net/Cache$Entry;->data:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->pruneIfNeeded(I)V

    invoke-virtual {p0, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_5c

    move-result-object v0

    :try_start_b
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v2, p1, p2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/ydnetwork/net/Cache$Entry;)V

    invoke-virtual {v2, v1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    const-string v1, "Failed to write header for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ydnetwork/net/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_38
    .catchall {:try_start_b .. :try_end_38} :catchall_5c

    :catch_38
    move-exception v1

    :try_start_39
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "Could not clean up file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/ydnetwork/net/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_5c

    :cond_4e
    :goto_4e
    monitor-exit p0

    return-void

    :cond_50
    :try_start_50
    iget-object v3, p2, Lcom/ydnetwork/net/Cache$Entry;->data:[B

    invoke-virtual {v1, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    invoke-direct {p0, p1, v2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/ydnetwork/net/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5b} :catch_38
    .catchall {:try_start_50 .. :try_end_5b} :catchall_5c

    goto :goto_4e

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    if-nez v0, :cond_20

    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ydnetwork/net/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
