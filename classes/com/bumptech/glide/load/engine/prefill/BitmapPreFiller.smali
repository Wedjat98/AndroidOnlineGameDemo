.class public final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

.field private final defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private final handler:Landroid/os/Handler;

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .registers 6
    .param p1, "memoryCache"    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "defaultFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 31
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 32
    return-void
.end method

.method private static getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I
    .registers 4
    .param p0, "size"    # Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method


# virtual methods
.method varargs generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    .registers 16
    .param p1, "preFillSizes"    # [Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 59
    iget-object v10, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 60
    invoke-interface {v10}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()J

    move-result-wide v10

    iget-object v12, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v12}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()J

    move-result-wide v12

    sub-long/2addr v10, v12

    iget-object v12, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v12}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getMaxSize()J

    move-result-wide v12

    add-long v6, v10, v12

    .line 62
    .local v6, "maxSize":J
    const/4 v8, 0x0

    .line 63
    .local v8, "totalWeight":I
    array-length v11, p1

    move v10, v9

    :goto_19
    if-ge v10, v11, :cond_25

    aget-object v5, p1, v10

    .line 64
    .local v5, "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v12

    add-int/2addr v8, v12

    .line 63
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 67
    .end local v5    # "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    :cond_25
    long-to-float v10, v6

    int-to-float v11, v8

    div-float v4, v10, v11

    .line 69
    .local v4, "bytesPerWeight":F
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "attributeToCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/engine/prefill/PreFillType;Ljava/lang/Integer;>;"
    array-length v10, p1

    :goto_2f
    if-ge v9, v10, :cond_4d

    aget-object v5, p1, v9

    .line 71
    .restart local v5    # "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 72
    .local v2, "bytesForSize":I
    invoke-static {v5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I

    move-result v3

    .line 73
    .local v3, "bytesPerBitmap":I
    div-int v1, v2, v3

    .line 74
    .local v1, "bitmapsForSize":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    .line 77
    .end local v1    # "bitmapsForSize":I
    .end local v2    # "bytesForSize":I
    .end local v3    # "bytesPerBitmap":I
    .end local v5    # "size":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    :cond_4d
    new-instance v9, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-direct {v9, v0}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;-><init>(Ljava/util/Map;)V

    return-object v9
.end method

.method public varargs preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .registers 9
    .param p1, "bitmapAttributeBuilders"    # [Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    .prologue
    .line 36
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    if-eqz v4, :cond_9

    .line 37
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->cancel()V

    .line 40
    :cond_9
    array-length v4, p1

    new-array v1, v4, [Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    .line 41
    .local v1, "bitmapAttributes":[Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    array-length v4, p1

    if-ge v3, v4, :cond_35

    .line 42
    aget-object v2, p1, v3

    .line 43
    .local v2, "builder":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-nez v4, :cond_29

    .line 46
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v5, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq v4, v5, :cond_24

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v5, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888_DISALLOW_HARDWARE:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v4, v5, :cond_32

    .line 47
    :cond_24
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 44
    :goto_26
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    .line 49
    :cond_29
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->build()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v4

    aput-object v4, v1, v3

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 47
    :cond_32
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_26

    .line 52
    .end local v2    # "builder":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    :cond_35
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    move-result-object v0

    .line 53
    .local v0, "allocationOrder":Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    new-instance v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-direct {v4, v5, v6, v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V

    iput-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    .line 54
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method
