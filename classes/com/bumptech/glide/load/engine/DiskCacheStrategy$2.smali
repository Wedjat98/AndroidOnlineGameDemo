.class Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;
.super Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeCachedData()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public decodeCachedResource()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z
    .registers 3
    .param p1, "dataSource"    # Lcom/bumptech/glide/load/DataSource;

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .registers 5
    .param p1, "isFromAlternateCacheKey"    # Z
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .param p3, "encodeStrategy"    # Lcom/bumptech/glide/load/EncodeStrategy;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
