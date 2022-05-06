.class public Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;
.super Ljava/lang/Object;
.source "LruCacheUtils.java"

# interfaces
.implements Lcom/games37/riversdk/core/util/imageloader/BaseCache;


# static fields
.field private static lruCacheUtils:Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;


# instance fields
.field private mImageCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->initCache()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->lruCacheUtils:Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;

    invoke-direct {v0}, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->lruCacheUtils:Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;

    .line 44
    :cond_b
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->lruCacheUtils:Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;

    return-object v0
.end method

.method private initCache()V
    .registers 5

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v0, v2

    .line 30
    .local v0, "maxMemory":I
    div-int/lit8 v0, v0, 0x4

    .line 31
    new-instance v1, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils$1;

    invoke-direct {v1, p0, v0}, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils$1;-><init>(Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;I)V

    iput-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->mImageCache:Landroid/support/v4/util/LruCache;

    .line 38
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    if-nez p1, :cond_a

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this key is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_a
    const-class v1, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;

    monitor-enter v1

    .line 61
    :try_start_d
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->mImageCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    if-nez p1, :cond_a

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this key is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_a
    const-class v1, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;

    monitor-enter v1

    .line 52
    :try_start_d
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/LruCacheUtils;->mImageCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method
