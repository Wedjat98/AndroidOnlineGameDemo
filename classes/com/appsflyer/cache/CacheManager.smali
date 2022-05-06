.class public Lcom/appsflyer/cache/CacheManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AF_CACHE_DIR:Ljava/lang/String; = "AFRequestCache"

.field public static final CACHE_MAX_SIZE:I = 0x28

.field private static ˋ:Lcom/appsflyer/cache/CacheManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/appsflyer/cache/CacheManager;

    invoke-direct {v0}, Lcom/appsflyer/cache/CacheManager;-><init>()V

    sput-object v0, Lcom/appsflyer/cache/CacheManager;->ˋ:Lcom/appsflyer/cache/CacheManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/appsflyer/cache/CacheManager;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/appsflyer/cache/CacheManager;->ˋ:Lcom/appsflyer/cache/CacheManager;

    return-object v0
.end method

.method private static ˋ(Ljava/io/File;)Lcom/appsflyer/cache/RequestCacheData;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 118
    .line 120
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_20
    .catchall {:try_start_1 .. :try_end_6} :catchall_29

    .line 121
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v3, v0, [C

    .line 122
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    .line 123
    new-instance v0, Lcom/appsflyer/cache/RequestCacheData;

    invoke-direct {v0, v3}, Lcom/appsflyer/cache/RequestCacheData;-><init>([C)V

    .line 124
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appsflyer/cache/RequestCacheData;->setCacheKey(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_39
    .catchall {:try_start_6 .. :try_end_1c} :catchall_37

    .line 131
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_31

    .line 127
    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    move-object v0, v1

    .line 130
    :goto_22
    if-eqz v0, :cond_27

    .line 131
    :try_start_24
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_33

    :cond_27
    :goto_27
    move-object v0, v1

    .line 127
    goto :goto_1f

    .line 129
    :catchall_29
    move-exception v0

    move-object v2, v1

    .line 130
    :goto_2b
    if-eqz v2, :cond_30

    .line 131
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_35

    .line 134
    :cond_30
    :goto_30
    throw v0

    :catch_31
    move-exception v1

    goto :goto_1f

    :catch_33
    move-exception v0

    goto :goto_27

    :catch_35
    move-exception v1

    goto :goto_30

    .line 129
    :catchall_37
    move-exception v0

    goto :goto_2b

    :catch_39
    move-exception v0

    move-object v0, v2

    goto :goto_22
.end method


# virtual methods
.method public cacheRequest(Lcom/appsflyer/cache/RequestCacheData;Landroid/content/Context;)V
    .registers 10

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 13034
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "AFRequestCache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 93
    :cond_15
    :goto_15
    return-void

    .line 61
    :cond_16
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_39

    array-length v1, v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_39

    .line 63
    const-string v1, "AppsFlyer_4.8.15"

    const-string v2, "reached cache limit, not caching request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29
    .catchall {:try_start_1 .. :try_end_28} :catchall_a8

    goto :goto_15

    .line 85
    :catch_29
    move-exception v1

    :goto_2a
    :try_start_2a
    const-string v1, "AppsFlyer_4.8.15"

    const-string v2, "Could not cache request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_b6

    .line 88
    if-eqz v0, :cond_15

    .line 89
    :try_start_33
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_15

    .line 93
    :catch_37
    move-exception v0

    goto :goto_15

    .line 66
    :cond_39
    :try_start_39
    const-string v1, "AppsFlyer_4.8.15"

    const-string v2, "caching request..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v2, Ljava/io/File;

    .line 15034
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "AFRequestCache"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 69
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_6a} :catch_29
    .catchall {:try_start_39 .. :try_end_6a} :catchall_a8

    .line 70
    :try_start_6a
    const-string v0, "version="

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/appsflyer/cache/RequestCacheData;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 72
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 74
    const-string v0, "url="

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 78
    const-string v0, "data="

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/appsflyer/cache/RequestCacheData;->getPostData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 82
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_a0} :catch_bb
    .catchall {:try_start_6a .. :try_end_a0} :catchall_b4

    .line 89
    :try_start_a0
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a5

    goto/16 :goto_15

    .line 93
    :catch_a5
    move-exception v0

    goto/16 :goto_15

    .line 87
    :catchall_a8
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 88
    :goto_ac
    if-eqz v1, :cond_b1

    .line 89
    :try_start_ae
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    .line 92
    :cond_b1
    :goto_b1
    throw v0

    :catch_b2
    move-exception v1

    goto :goto_b1

    .line 87
    :catchall_b4
    move-exception v0

    goto :goto_ac

    :catchall_b6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_ac

    .line 85
    :catch_bb
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2a
.end method

.method public clearCache(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 153
    .line 21034
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AFRequestCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 166
    :cond_14
    :goto_14
    return-void

    .line 157
    :cond_15
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 158
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v2, :cond_14

    aget-object v3, v1, v0

    .line 159
    const-string v4, "AppsFlyer_4.8.15"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found cached request"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {v3}, Lcom/appsflyer/cache/CacheManager;->ˋ(Ljava/io/File;)Lcom/appsflyer/cache/RequestCacheData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/cache/RequestCacheData;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/appsflyer/cache/CacheManager;->deleteRequest(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_45

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 164
    :catch_45
    move-exception v0

    const-string v0, "AppsFlyer_4.8.15"

    const-string v1, "Could not cache request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public deleteRequest(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 19034
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AFRequestCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    const-string v0, "AppsFlyer_4.8.15"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 144
    :try_start_30
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    .line 149
    :cond_33
    :goto_33
    return-void

    .line 145
    :catch_34
    move-exception v0

    .line 146
    const-string v1, "AppsFlyer_4.8.15"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public getCachedRequests(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/appsflyer/cache/RequestCacheData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17034
    :try_start_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "AFRequestCache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 114
    :cond_19
    :goto_19
    return-object v1

    .line 104
    :cond_1a
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 105
    array-length v3, v2

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 106
    const-string v5, "AppsFlyer_4.8.15"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found cached request"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v4}, Lcom/appsflyer/cache/CacheManager;->ˋ(Ljava/io/File;)Lcom/appsflyer/cache/RequestCacheData;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_46

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 111
    :catch_46
    move-exception v0

    const-string v0, "AppsFlyer_4.8.15"

    const-string v2, "Could not cache request"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 39
    .line 9034
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AFRequestCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 11034
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AFRequestCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 45
    :cond_1f
    :goto_1f
    return-void

    .line 43
    :catch_20
    move-exception v0

    const-string v0, "AppsFlyer_4.8.15"

    const-string v1, "Could not create cache directory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
