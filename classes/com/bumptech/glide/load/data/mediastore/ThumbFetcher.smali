.class public Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
.super Ljava/lang/Object;
.source "ThumbFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;,
        Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaStoreThumbFetcher"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private final mediaStoreImageUri:Landroid/net/Uri;

.field private final opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;)V
    .registers 3
    .param p1, "mediaStoreImageUri"    # Landroid/net/Uri;
    .param p2, "opener"    # Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->mediaStoreImageUri:Landroid/net/Uri;

    .line 51
    iput-object p2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    .line 52
    return-void
.end method

.method private static build(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "query"    # Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v0

    .line 42
    .local v0, "byteArrayPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    new-instance v1, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V

    .line 45
    .local v1, "opener":Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;
    new-instance v2, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    invoke-direct {v2, p1, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;-><init>(Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;)V

    return-object v2
.end method

.method public static buildImageFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 33
    new-instance v0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$ImageThumbnailQuery;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->build(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    move-result-object v0

    return-object v0
.end method

.method public static buildVideoFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 37
    new-instance v0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher$VideoThumbnailQuery;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->build(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    move-result-object v0

    return-object v0
.end method

.method private openThumbInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    iget-object v4, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->mediaStoreImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->open(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 73
    .local v1, "result":Ljava/io/InputStream;
    const/4 v0, -0x1

    .line 74
    .local v0, "orientation":I
    if-eqz v1, :cond_13

    .line 75
    iget-object v3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->opener:Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;

    iget-object v4, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->mediaStoreImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->getOrientation(Landroid/net/Uri;)I

    move-result v0

    .line 78
    :cond_13
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1c

    .line 79
    new-instance v2, Lcom/bumptech/glide/load/data/ExifOrientationStream;

    invoke-direct {v2, v1, v0}, Lcom/bumptech/glide/load/data/ExifOrientationStream;-><init>(Ljava/io/InputStream;I)V

    .end local v1    # "result":Ljava/io/InputStream;
    .local v2, "result":Ljava/io/InputStream;
    move-object v1, v2

    .line 81
    .end local v2    # "result":Ljava/io/InputStream;
    .restart local v1    # "result":Ljava/io/InputStream;
    :cond_1c
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public cleanup()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 88
    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 93
    :cond_9
    :goto_9
    return-void

    .line 89
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 6
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
            "<-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "callback":Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;, "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<-Ljava/io/InputStream;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->openThumbInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->inputStream:Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_6} :catch_c

    .line 67
    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->inputStream:Ljava/io/InputStream;

    invoke-interface {p2, v1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 68
    :goto_b
    return-void

    .line 59
    :catch_c
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "MediaStoreThumbFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 61
    const-string v1, "MediaStoreThumbFetcher"

    const-string v2, "Failed to find thumbnail file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_1d
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_b
.end method
