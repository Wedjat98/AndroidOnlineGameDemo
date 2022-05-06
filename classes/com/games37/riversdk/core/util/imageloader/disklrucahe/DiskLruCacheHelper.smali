.class public Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;
.super Ljava/lang/Object;
.source "DiskLruCacheHelper.java"


# static fields
.field private static final DEFAULT_APP_VERSION:I = 0x1

.field private static final DIR_NAME:Ljava/lang/String; = "diskCache"

.field private static final MAX_COUNT:I = 0x500000

.field private static final TAG:Ljava/lang/String; = "DiskLruCacheHelper"


# instance fields
.field private mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "diskCache"

    const/high16 v1, 0x500000

    invoke-direct {p0, p1, v0, v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->generateCache(Landroid/content/Context;Ljava/lang/String;I)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, p2, v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->generateCache(Landroid/content/Context;Ljava/io/File;I)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "maxCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->generateCache(Landroid/content/Context;Ljava/io/File;I)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, p2, v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->generateCache(Landroid/content/Context;Ljava/lang/String;I)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "maxCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->generateCache(Landroid/content/Context;Ljava/lang/String;I)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    const/high16 v1, 0x500000

    invoke-direct {p0, v0, p1, v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->generateCache(Landroid/content/Context;Ljava/io/File;I)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .line 51
    return-void
.end method

.method private generateCache(Landroid/content/Context;Ljava/io/File;I)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "maxCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_26

    .line 63
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a directory or does not exists. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_26
    if-nez p1, :cond_2f

    move v0, v2

    .line 69
    .local v0, "appVersion":I
    :goto_29
    int-to-long v4, p3

    invoke-static {p2, v0, v2, v4, v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    move-result-object v1

    .line 75
    .local v1, "diskLruCache":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    return-object v1

    .line 67
    .end local v0    # "appVersion":I
    .end local v1    # "diskLruCache":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    :cond_2f
    invoke-static {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    goto :goto_29
.end method

.method private generateCache(Landroid/content/Context;Ljava/lang/String;I)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "maxCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 81
    invoke-static {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->getAppVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    int-to-long v4, p3

    .line 79
    invoke-static {v1, v2, v3, v4, v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    move-result-object v0

    .line 84
    .local v0, "diskLruCache":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    return-object v0
.end method

.method private getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 417
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_37

    .line 418
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "cachePath":Ljava/lang/String;
    :goto_1a
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 420
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_37
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cachePath":Ljava/lang/String;
    goto :goto_1a
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
    .line 336
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->close()V

    .line 337
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
    .line 340
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->delete()V

    .line 341
    return-void
.end method

.method public editor(Ljava/lang/String;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 374
    :try_start_0
    invoke-static {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 376
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-virtual {v2, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->edit(Ljava/lang/String;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v1

    .line 378
    .local v1, "edit":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    if-nez v1, :cond_2a

    .line 379
    const-string v2, "DiskLruCacheHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the entry spcified key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is editing by other . "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 386
    .end local v1    # "edit":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    :cond_2a
    :goto_2a
    return-object v1

    .line 382
    :catch_2b
    move-exception v0

    .line 383
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 386
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->flush()V

    .line 345
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 393
    :try_start_1
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-static {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->get(Ljava/lang/String;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;

    move-result-object v1

    .line 394
    .local v1, "snapshot":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;
    if-nez v1, :cond_15

    .line 396
    const-string v3, "DiskLruCacheHelper"

    const-string v4, "not find entry , or entry.readable = false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v1    # "snapshot":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;
    :goto_14
    return-object v2

    .line 400
    .restart local v1    # "snapshot":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_1b

    move-result-object v2

    goto :goto_14

    .line 402
    .end local v1    # "snapshot":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;
    :catch_1b
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public getAsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->getAsBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 303
    .local v0, "bytes":[B
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 304
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_7
.end method

.method public getAsBytes(Ljava/lang/String;)[B
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v5, 0x0

    .line 224
    .local v5, "res":[B
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 225
    .local v3, "is":Ljava/io/InputStream;
    if-nez v3, :cond_9

    const/4 v6, 0x0

    .line 237
    :goto_8
    return-object v6

    .line 226
    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 228
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x100

    :try_start_10
    new-array v1, v6, [B

    .line 229
    .local v1, "buf":[B
    const/4 v4, 0x0

    .line 230
    .local v4, "len":I
    :goto_13
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_25

    .line 231
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_1f

    goto :goto_13

    .line 234
    .end local v1    # "buf":[B
    .end local v4    # "len":I
    :catch_1f
    move-exception v2

    .line 235
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :goto_23
    move-object v6, v5

    .line 237
    goto :goto_8

    .line 233
    .restart local v1    # "buf":[B
    .restart local v4    # "len":I
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_1f

    move-result-object v5

    goto :goto_23
.end method

.method public getAsDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->getAsBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 316
    .local v0, "bytes":[B
    if-nez v0, :cond_8

    .line 317
    const/4 v1, 0x0

    .line 319
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_7
.end method

.method public getAsJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 176
    :goto_9
    return-object v2

    .line 174
    :catch_a
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public getAsJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 154
    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_c

    .line 158
    :goto_b
    return-object v2

    .line 155
    :catch_c
    move-exception v0

    .line 156
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 158
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_10
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public getAsSerializable(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 272
    const/4 v4, 0x0

    .line 273
    .local v4, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 274
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 275
    .local v2, "ois":Ljava/io/ObjectInputStream;
    if-nez v1, :cond_a

    const/4 v4, 0x0

    .line 291
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    :cond_9
    :goto_9
    return-object v4

    .line 277
    .restart local v4    # "t":Ljava/lang/Object;, "TT;"
    :cond_a
    :try_start_a
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_f} :catch_20
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_2f
    .catchall {:try_start_a .. :try_end_f} :catchall_3e

    .line 278
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_12} :catch_50
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_4d
    .catchall {:try_start_f .. :try_end_12} :catchall_4a

    move-result-object v4

    .line 285
    if-eqz v3, :cond_18

    .line 286
    :try_start_15
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1a

    :cond_18
    move-object v2, v3

    .line 289
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_9

    .line 287
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_1a
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 290
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_9

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_21
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_3e

    .line 285
    if-eqz v2, :cond_9

    .line 286
    :try_start_26
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_9

    .line 287
    :catch_2a
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 281
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2f
    move-exception v0

    .line 282
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3e

    .line 285
    if-eqz v2, :cond_9

    .line 286
    :try_start_35
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_9

    .line 287
    :catch_39
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3e
    move-exception v5

    .line 285
    :goto_3f
    if-eqz v2, :cond_44

    .line 286
    :try_start_41
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    .line 289
    :cond_44
    :goto_44
    throw v5

    .line 287
    :catch_45
    move-exception v0

    .line 288
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catchall_4a
    move-exception v5

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_3f

    .line 281
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_4d
    move-exception v0

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_30

    .line 279
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_50
    move-exception v0

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_21
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 119
    const/4 v3, 0x0

    .line 122
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 123
    if-nez v3, :cond_9

    .line 142
    :cond_8
    :goto_8
    return-object v6

    .line 124
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 126
    .local v4, "len":I
    const/16 v7, 0x80

    new-array v0, v7, [B

    .line 127
    .local v0, "buf":[B
    :goto_13
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_33

    .line 128
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_13

    .line 133
    .end local v0    # "buf":[B
    .end local v4    # "len":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_24
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    if-eqz v3, :cond_8

    .line 137
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_8

    .line 138
    :catch_2e
    move-exception v2

    .line 139
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v4    # "len":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_33
    :try_start_33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_24

    move-result-object v6

    goto :goto_8
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()J
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 298
    invoke-static {p2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->put(Ljava/lang/String;[B)V

    .line 299
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 311
    invoke-static {p2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 312
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->editor(Ljava/lang/String;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v2

    .line 246
    .local v2, "editor":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    const/4 v3, 0x0

    .line 247
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    if-nez v2, :cond_8

    .line 269
    :cond_7
    :goto_7
    return-void

    .line 249
    :cond_8
    const/4 v6, 0x0

    :try_start_9
    invoke-virtual {v2, v6}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v5

    .line 250
    .local v5, "os":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_28
    .catchall {:try_start_9 .. :try_end_12} :catchall_3f

    .line 251
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_12
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 253
    invoke-virtual {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->commit()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_4e
    .catchall {:try_start_12 .. :try_end_1b} :catchall_4b

    .line 263
    if-eqz v4, :cond_20

    .line 264
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_22

    :cond_20
    move-object v3, v4

    .line 267
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_7

    .line 265
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_22
    move-exception v0

    .line 266
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 268
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_7

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "os":Ljava/io/OutputStream;
    :catch_28
    move-exception v0

    .line 255
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_29
    :try_start_29
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3f

    .line 257
    :try_start_2c
    invoke-virtual {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->abort()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_3a
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3f

    .line 263
    :goto_2f
    if-eqz v3, :cond_7

    .line 264
    :try_start_31
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_7

    .line 265
    :catch_35
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 258
    :catch_3a
    move-exception v1

    .line 259
    .local v1, "e1":Ljava/io/IOException;
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_2f

    .line 262
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_3f
    move-exception v6

    .line 263
    :goto_40
    if-eqz v3, :cond_45

    .line 264
    :try_start_42
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 267
    :cond_45
    :goto_45
    throw v6

    .line 265
    :catch_46
    move-exception v0

    .line 266
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 262
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_4b
    move-exception v6

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_40

    .line 254
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_4e
    move-exception v0

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_29
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v4, 0x0

    .line 92
    .local v4, "edit":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    const/4 v0, 0x0

    .line 94
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->editor(Ljava/lang/String;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_35
    .catchall {:try_start_2 .. :try_end_5} :catchall_4c

    move-result-object v4

    .line 95
    if-nez v4, :cond_13

    .line 110
    if-eqz v0, :cond_d

    .line 111
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    .line 116
    :cond_d
    :goto_d
    return-void

    .line 112
    :catch_e
    move-exception v2

    .line 113
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    :cond_13
    const/4 v6, 0x0

    :try_start_14
    invoke-virtual {v4, v6}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v5

    .line 97
    .local v5, "os":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_35
    .catchall {:try_start_14 .. :try_end_22} :catchall_4c

    .line 98
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_22
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->commit()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_5b
    .catchall {:try_start_22 .. :try_end_28} :catchall_58

    .line 110
    if-eqz v1, :cond_2d

    .line 111
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    :cond_2d
    move-object v0, v1

    .line 114
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_d

    .line 112
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_2f
    move-exception v2

    .line 113
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 115
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_d

    .line 100
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "os":Ljava/io/OutputStream;
    :catch_35
    move-exception v2

    .line 101
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_36
    :try_start_36
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_4c

    .line 104
    :try_start_39
    invoke-virtual {v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->abort()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_47
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4c

    .line 110
    :goto_3c
    if-eqz v0, :cond_d

    .line 111
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_d

    .line 112
    :catch_42
    move-exception v2

    .line 113
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 105
    :catch_47
    move-exception v3

    .line 106
    .local v3, "e1":Ljava/io/IOException;
    :try_start_48
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_3c

    .line 109
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    :catchall_4c
    move-exception v6

    .line 110
    :goto_4d
    if-eqz v0, :cond_52

    .line 111
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 114
    :cond_52
    :goto_52
    throw v6

    .line 112
    :catch_53
    move-exception v2

    .line 113
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 109
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_58
    move-exception v6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_4d

    .line 100
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_5b
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_36
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 166
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 147
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 194
    .local v2, "editor":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->editor(Ljava/lang/String;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_2c
    .catchall {:try_start_2 .. :try_end_5} :catchall_43

    move-result-object v2

    .line 195
    if-nez v2, :cond_13

    .line 211
    if-eqz v3, :cond_d

    .line 213
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    .line 219
    :cond_d
    :goto_d
    return-void

    .line 214
    :catch_e
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :cond_13
    const/4 v4, 0x0

    :try_start_14
    invoke-virtual {v2, v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 199
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 200
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 201
    invoke-virtual {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->commit()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_2c
    .catchall {:try_start_14 .. :try_end_21} :catchall_43

    .line 211
    if-eqz v3, :cond_d

    .line 213
    :try_start_23
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_d

    .line 214
    :catch_27
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 202
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2c
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_43

    .line 205
    :try_start_30
    invoke-virtual {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->abort()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3e
    .catchall {:try_start_30 .. :try_end_33} :catchall_43

    .line 211
    :goto_33
    if-eqz v3, :cond_d

    .line 213
    :try_start_35
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_d

    .line 214
    :catch_39
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v1

    .line 207
    .local v1, "e1":Ljava/io/IOException;
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_33

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_43
    move-exception v4

    if-eqz v3, :cond_49

    .line 213
    :try_start_46
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 216
    :cond_49
    :goto_49
    throw v4

    .line 214
    :catch_4a
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 327
    :try_start_0
    invoke-static {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-virtual {v1, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 332
    :goto_a
    return v1

    .line 329
    :catch_b
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setMaxSize(J)V
    .registers 4
    .param p1, "maxSize"    # J

    .prologue
    .line 356
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->setMaxSize(J)V

    .line 357
    return-void
.end method

.method public size()J
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCacheHelper;->mDiskLruCache:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method
