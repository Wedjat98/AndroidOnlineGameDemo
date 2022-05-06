.class public final Lcom/facebook/internal/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;,
        Lcom/facebook/internal/Utility$Mapper;,
        Lcom/facebook/internal/Utility$PermissionsPair;,
        Lcom/facebook/internal/Utility$Predicate;
    }
.end annotation


# static fields
.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x2000

.field private static final EXTRA_APP_EVENTS_INFO_FORMAT_VERSION:Ljava/lang/String; = "a2"

.field private static final GINGERBREAD_MR1:I = 0xa

.field private static final HASH_ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field private static final HASH_ALGORITHM_SHA1:Ljava/lang/String; = "SHA-1"

.field static final LOG_TAG:Ljava/lang/String; = "FacebookSDK"

.field private static final REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS:I = 0x1b7740

.field private static final URL_SCHEME:Ljava/lang/String; = "https"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static availableExternalStorageGB:J = 0x0L

.field private static carrierName:Ljava/lang/String; = null

.field private static deviceTimeZoneName:Ljava/lang/String; = null

.field private static deviceTimezoneAbbreviation:Ljava/lang/String; = null

.field private static final noCarrierConstant:Ljava/lang/String; = "NoCarrier"

.field private static numCPUCores:I

.field private static timestampOfLastCheck:J

.field private static totalExternalStorageGB:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, -0x1

    .line 115
    const/4 v0, 0x0

    sput v0, Lcom/facebook/internal/Utility;->numCPUCores:I

    .line 117
    sput-wide v2, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    .line 118
    sput-wide v2, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    .line 119
    sput-wide v2, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    .line 120
    const-string v0, ""

    sput-object v0, Lcom/facebook/internal/Utility;->deviceTimezoneAbbreviation:Ljava/lang/String;

    .line 121
    const-string v0, ""

    sput-object v0, Lcom/facebook/internal/Utility;->deviceTimeZoneName:Ljava/lang/String;

    .line 122
    const-string v0, "NoCarrier"

    sput-object v0, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 596
    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 598
    :goto_5
    return v0

    .line 596
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 598
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static varargs arrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "ts"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_8
    if-lt v2, v3, :cond_b

    .line 257
    return-object v0

    .line 254
    :cond_b
    aget-object v1, p0, v2

    .line 255
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public static varargs asListNoNulls([Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_7
    if-lt v2, v3, :cond_a

    .line 655
    return-object v0

    .line 650
    :cond_a
    aget-object v1, p0, v2

    .line 651
    .local v1, "t":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_11

    .line 652
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public static awaitGetGraphMeRequestWithCache(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .param p0, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 990
    invoke-static {p0}, Lcom/facebook/internal/ProfileInformationCache;->getProfileInformation(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 991
    .local v0, "cachedValue":Lorg/json/JSONObject;
    if-eqz v0, :cond_7

    .line 1001
    .end local v0    # "cachedValue":Lorg/json/JSONObject;
    :goto_6
    return-object v0

    .line 995
    .restart local v0    # "cachedValue":Lorg/json/JSONObject;
    :cond_7
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCache(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 996
    .local v1, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v2

    .line 997
    .local v2, "response":Lcom/facebook/GraphResponse;
    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 998
    const/4 v0, 0x0

    goto :goto_6

    .line 1001
    :cond_17
    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_6
.end method

.method public static buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 8
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 306
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 307
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "https"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 308
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 309
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 310
    if-eqz p2, :cond_20

    .line 311
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_25

    .line 318
    :cond_20
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 311
    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 313
    .local v2, "parameter":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_1a

    .line 314
    check-cast v2, Ljava/lang/String;

    .end local v2    # "parameter":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1a
.end method

.method public static clearCaches(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 629
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->clearCache(Landroid/content/Context;)V

    .line 630
    return-void
.end method

.method private static clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 544
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v6

    .line 545
    .local v6, "syncManager":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v6}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 547
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 549
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, "cookies":Ljava/lang/String;
    if-nez v3, :cond_13

    .line 564
    :goto_12
    return-void

    .line 554
    :cond_13
    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 555
    .local v5, "splitCookies":[Ljava/lang/String;
    array-length v9, v5

    move v7, v8

    :goto_1b
    if-lt v7, v9, :cond_21

    .line 563
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    goto :goto_12

    .line 555
    :cond_21
    aget-object v0, v5, v7

    .line 556
    .local v0, "cookie":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "cookieParts":[Ljava/lang/String;
    array-length v10, v2

    if-lez v10, :cond_48

    .line 558
    new-instance v10, Ljava/lang/StringBuilder;

    aget-object v11, v2, v8

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    const-string v11, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 558
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 560
    .local v4, "newCookie":Ljava/lang/String;
    invoke-virtual {v1, p1, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .end local v4    # "newCookie":Ljava/lang/String;
    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b
.end method

.method public static clearFacebookCookies(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 570
    const-string v0, "facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 571
    const-string v0, ".facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 572
    const-string v0, "https://facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 573
    const-string v0, "https://.facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 407
    if-eqz p0, :cond_5

    .line 408
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 413
    :cond_5
    :goto_5
    return-void

    .line 410
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "valueIfNullOrEmpty"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    .end local p1    # "valueIfNullOrEmpty":Ljava/lang/String;
    :goto_6
    return-object p1

    .restart local p1    # "valueIfNullOrEmpty":Ljava/lang/String;
    :cond_7
    move-object p1, p0

    goto :goto_6
.end method

.method private static convertBytesToGB(D)J
    .registers 4
    .param p0, "bytes"    # D

    .prologue
    .line 1131
    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method static convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 431
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 432
    .local v2, "keys":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_11

    .line 444
    return-object v3

    .line 435
    :cond_11
    :try_start_11
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 437
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_23

    .line 438
    check-cast v4, Lorg/json/JSONObject;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 440
    :cond_23
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_26} :catch_29

    .line 432
    .end local v1    # "key":Ljava/lang/String;
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 441
    :catch_29
    move-exception v5

    goto :goto_26
.end method

.method public static copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    const/4 v1, 0x0

    .line 503
    .local v1, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 505
    .local v4, "totalBytes":I
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_23

    .line 507
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/16 v5, 0x2000

    :try_start_9
    new-array v0, v5, [B

    .line 509
    .local v0, "buffer":[B
    :goto_b
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_2f

    move-result v3

    .local v3, "bytesRead":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1d

    .line 514
    if-eqz v2, :cond_17

    .line 515
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 517
    :cond_17
    if-eqz p0, :cond_1c

    .line 518
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 522
    :cond_1c
    return v4

    .line 510
    :cond_1d
    const/4 v5, 0x0

    :try_start_1e
    invoke-virtual {p1, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2f

    .line 511
    add-int/2addr v4, v3

    goto :goto_b

    .line 513
    .end local v0    # "buffer":[B
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "bytesRead":I
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_23
    move-exception v5

    .line 514
    :goto_24
    if-eqz v1, :cond_29

    .line 515
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 517
    :cond_29
    if-eqz p0, :cond_2e

    .line 518
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 520
    :cond_2e
    throw v5

    .line 513
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_2f
    move-exception v5

    move-object v1, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_24
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .registers 5
    .param p0, "directoryOrFile"    # Ljava/io/File;

    .prologue
    .line 633
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 646
    :goto_6
    return-void

    .line 637
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 638
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 639
    .local v1, "children":[Ljava/io/File;
    if-eqz v1, :cond_17

    .line 640
    array-length v3, v1

    const/4 v2, 0x0

    :goto_15
    if-lt v2, v3, :cond_1b

    .line 645
    .end local v1    # "children":[Ljava/io/File;
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_6

    .line 640
    .restart local v1    # "children":[Ljava/io/File;
    :cond_1b
    aget-object v0, v1, v2

    .line 641
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method

.method public static disconnectQuietly(Ljava/net/URLConnection;)V
    .registers 2
    .param p0, "connection"    # Ljava/net/URLConnection;

    .prologue
    .line 416
    if-eqz p0, :cond_b

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_b

    .line 417
    check-cast p0, Ljava/net/HttpURLConnection;

    .end local p0    # "connection":Ljava/net/URLConnection;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 419
    :cond_b
    return-void
.end method

.method private static externalStorageExists()Z
    .registers 2

    .prologue
    .line 1095
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static filter(Ljava/util/List;Lcom/facebook/internal/Utility$Predicate;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/facebook/internal/Utility$Predicate",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "predicate":Lcom/facebook/internal/Utility$Predicate;, "Lcom/facebook/internal/Utility$Predicate<TT;>;"
    const/4 v2, 0x0

    .line 832
    if-nez p0, :cond_4

    .line 841
    :goto_3
    return-object v2

    .line 835
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 841
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1a

    move-object v1, v2

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1a
    move-object v2, v1

    goto :goto_3

    .line 836
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 837
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lcom/facebook/internal/Utility$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 838
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public static generateRandomString(I)Ljava/lang/String;
    .registers 4
    .param p0, "length"    # I

    .prologue
    .line 1187
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1188
    .local v0, "r":Ljava/util/Random;
    new-instance v1, Ljava/math/BigInteger;

    mul-int/lit8 v2, p0, 0x5

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getActivityName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 818
    if-nez p0, :cond_5

    .line 819
    const-string v0, "null"

    .line 823
    :goto_4
    return-object v0

    .line 820
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne p0, v0, :cond_e

    .line 821
    const-string v0, "unknown"

    goto :goto_4

    .line 823
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .registers 13
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dateBase"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x0

    .line 900
    if-nez p0, :cond_4

    .line 922
    :cond_3
    :goto_3
    return-object v4

    .line 906
    :cond_4
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 907
    .local v1, "secondsObject":Ljava/lang/Object;
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_23

    .line 908
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "secondsObject":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 919
    .local v2, "secondsFromBase":J
    :goto_12
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_30

    .line 920
    new-instance v4, Ljava/util/Date;

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_3

    .line 909
    .end local v2    # "secondsFromBase":J
    .restart local v1    # "secondsObject":Ljava/lang/Object;
    :cond_23
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 911
    :try_start_27
    check-cast v1, Ljava/lang/String;

    .end local v1    # "secondsObject":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2c} :catch_2e

    move-result-wide v2

    .restart local v2    # "secondsFromBase":J
    goto :goto_12

    .line 912
    .end local v2    # "secondsFromBase":J
    :catch_2e
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 922
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "secondsFromBase":J
    :cond_30
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v2

    add-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_3
.end method

.method public static getContentSize(Landroid/net/Uri;)J
    .registers 9
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 882
    const/4 v6, 0x0

    .line 885
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 887
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 888
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 890
    .local v7, "sizeIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 891
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_25

    move-result-wide v0

    .line 893
    if-eqz v6, :cond_24

    .line 894
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_24
    return-wide v0

    .line 892
    .end local v7    # "sizeIndex":I
    :catchall_25
    move-exception v0

    .line 893
    if-eqz v6, :cond_2b

    .line 894
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 896
    :cond_2b
    throw v0
.end method

.method private static getGraphMeRequestWithCache(Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .registers 7
    .param p0, "accessToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1006
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1007
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v2, "fields"

    const-string v4, "id,name,first_name,middle_name,last_name,link"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v2, "access_token"

    invoke-virtual {v3, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 1011
    const-string v2, "me"

    .line 1013
    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v5, v1

    .line 1009
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 1015
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    return-object v0
.end method

.method public static getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V
    .registers 5
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    .prologue
    .line 964
    invoke-static {p0}, Lcom/facebook/internal/ProfileInformationCache;->getProfileInformation(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 965
    .local v0, "cachedValue":Lorg/json/JSONObject;
    if-eqz v0, :cond_a

    .line 966
    invoke-interface {p1, v0}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onSuccess(Lorg/json/JSONObject;)V

    .line 986
    :goto_9
    return-void

    .line 970
    :cond_a
    new-instance v1, Lcom/facebook/internal/Utility$1;

    invoke-direct {v1, p1, p0}, Lcom/facebook/internal/Utility$1;-><init>(Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;Ljava/lang/String;)V

    .line 983
    .local v1, "graphCallback":Lcom/facebook/GraphRequest$Callback;
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCache(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 984
    .local v2, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v2, v1}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 985
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_9
.end method

.method public static getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 426
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 787
    :goto_4
    return-object v1

    .line 786
    :catch_5
    move-exception v0

    .line 787
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static varargs getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 796
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 797
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p2}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v2

    .line 799
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    return-object v2

    .line 798
    :catch_9
    move-exception v1

    .line 799
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public static getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nonJSONPropertyKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 455
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_15

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 456
    new-instance v0, Lorg/json/JSONTokener;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "tokener":Lorg/json/JSONTokener;
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 460
    .end local v0    # "tokener":Lorg/json/JSONTokener;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_15
    if-eqz v1, :cond_32

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_32

    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_32

    .line 461
    if-eqz p2, :cond_2a

    .line 466
    new-instance p0, Lorg/json/JSONObject;

    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 467
    .restart local p0    # "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    :goto_29
    return-object p0

    .line 470
    .restart local p0    # "jsonObject":Lorg/json/JSONObject;
    :cond_2a
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Got an unexpected non-JSON object."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_32
    move-object p0, v1

    .line 474
    goto :goto_29
.end method

.method public static getUriString(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 863
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static handlePermissionResponse(Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$PermissionsPair;
    .registers 10
    .param p0, "result"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1159
    const-string v8, "permissions"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1161
    .local v6, "permissions":Lorg/json/JSONObject;
    const-string v8, "data"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1162
    .local v0, "data":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1163
    .local v2, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1165
    .local v1, "declinedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v3, v8, :cond_2b

    .line 1183
    new-instance v8, Lcom/facebook/internal/Utility$PermissionsPair;

    invoke-direct {v8, v2, v1}, Lcom/facebook/internal/Utility$PermissionsPair;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 1166
    :cond_2b
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1167
    .local v4, "object":Lorg/json/JSONObject;
    const-string v8, "permission"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1168
    .local v5, "permission":Ljava/lang/String;
    if-eqz v5, :cond_3f

    const-string v8, "installed"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 1165
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1171
    :cond_42
    const-string v8, "status"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1172
    .local v7, "status":Ljava/lang/String;
    if-eqz v7, :cond_3f

    .line 1176
    const-string v8, "granted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 1177
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 1178
    :cond_56
    const-string v8, "declined"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1179
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method public static hasSameId(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 6
    .param p0, "a"    # Lorg/json/JSONObject;
    .param p1, "b"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 602
    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 613
    :cond_15
    :goto_15
    return v2

    .line 605
    :cond_16
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 606
    const/4 v2, 0x1

    goto :goto_15

    .line 608
    :cond_1e
    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "idA":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "idB":Ljava/lang/String;
    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_15
.end method

.method private static hashBytes(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .registers 8
    .param p0, "hash"    # Ljava/security/MessageDigest;
    .param p1, "bytes"    # [B

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 296
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 297
    .local v2, "digest":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_e
    if-lt v3, v4, :cond_15

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 298
    :cond_15
    aget-byte v0, v2, v3

    .line 299
    .local v0, "b":I
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    shr-int/lit8 v5, v0, 0x0

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_e
.end method

.method public static varargs hashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 5
    .param p0, "ts"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Ljava/util/HashSet;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 262
    .local v0, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_8
    if-lt v2, v3, :cond_b

    .line 265
    return-object v0

    .line 262
    :cond_b
    aget-object v1, p0, v2

    .line 263
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private static hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 287
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3} :catch_9

    move-result-object v1

    .line 291
    .local v1, "hash":Ljava/security/MessageDigest;
    invoke-static {v1, p1}, Lcom/facebook/internal/Utility;->hashBytes(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "hash":Ljava/security/MessageDigest;
    :goto_8
    return-object v2

    .line 288
    :catch_9
    move-exception v0

    .line 289
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public static intersectRanges([I[I)[I
    .registers 15
    .param p0, "range1"    # [I
    .param p1, "range2"    # [I

    .prologue
    .line 139
    if-nez p0, :cond_3

    .line 203
    .end local p1    # "range2":[I
    :goto_2
    return-object p1

    .line 141
    .restart local p1    # "range2":[I
    :cond_3
    if-nez p1, :cond_7

    move-object p1, p0

    .line 142
    goto :goto_2

    .line 145
    :cond_7
    array-length v11, p0

    array-length v12, p1

    add-int/2addr v11, v12

    new-array v8, v11, [I

    .line 146
    .local v8, "outputRange":[I
    const/4 v6, 0x0

    .line 147
    .local v6, "outputIndex":I
    const/4 v0, 0x0

    .line 148
    .local v0, "index1":I
    const/4 v1, 0x0

    .line 149
    .local v1, "index2":I
    :cond_f
    :goto_f
    array-length v11, p0

    if-ge v0, v11, :cond_15

    array-length v11, p1

    if-lt v1, v11, :cond_1a

    .line 203
    :cond_15
    :goto_15
    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    goto :goto_2

    .line 150
    :cond_1a
    const/high16 v4, -0x80000000

    .local v4, "newRangeLower":I
    const v5, 0x7fffffff

    .line 151
    .local v5, "newRangeUpper":I
    aget v2, p0, v0

    .line 152
    .local v2, "lower1":I
    const v9, 0x7fffffff

    .line 154
    .local v9, "upper1":I
    aget v3, p1, v1

    .line 155
    .local v3, "lower2":I
    const v10, 0x7fffffff

    .line 157
    .local v10, "upper2":I
    array-length v11, p0

    add-int/lit8 v11, v11, -0x1

    if-ge v0, v11, :cond_32

    .line 158
    add-int/lit8 v11, v0, 0x1

    aget v9, p0, v11

    .line 160
    :cond_32
    array-length v11, p1

    add-int/lit8 v11, v11, -0x1

    if-ge v1, v11, :cond_3b

    .line 161
    add-int/lit8 v11, v1, 0x1

    aget v10, p1, v11

    .line 164
    :cond_3b
    if-ge v2, v3, :cond_5e

    .line 165
    if-le v9, v3, :cond_5b

    .line 166
    move v4, v3

    .line 167
    if-le v9, v10, :cond_57

    .line 168
    move v5, v10

    .line 169
    add-int/lit8 v1, v1, 0x2

    .line 192
    :goto_45
    const/high16 v11, -0x80000000

    if-eq v4, v11, :cond_f

    .line 193
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outputIndex":I
    .local v7, "outputIndex":I
    aput v4, v8, v6

    .line 194
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_6e

    .line 195
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputIndex":I
    .restart local v6    # "outputIndex":I
    aput v5, v8, v7

    goto :goto_f

    .line 171
    :cond_57
    move v5, v9

    .line 172
    add-int/lit8 v0, v0, 0x2

    .line 174
    goto :goto_45

    .line 175
    :cond_5b
    add-int/lit8 v0, v0, 0x2

    .line 177
    goto :goto_45

    .line 178
    :cond_5e
    if-le v10, v2, :cond_6b

    .line 179
    move v4, v2

    .line 180
    if-le v10, v9, :cond_67

    .line 181
    move v5, v9

    .line 182
    add-int/lit8 v0, v0, 0x2

    .line 183
    goto :goto_45

    .line 184
    :cond_67
    move v5, v10

    .line 185
    add-int/lit8 v1, v1, 0x2

    .line 187
    goto :goto_45

    .line 188
    :cond_6b
    add-int/lit8 v1, v1, 0x2

    goto :goto_45

    .end local v6    # "outputIndex":I
    .restart local v7    # "outputIndex":I
    :cond_6e
    move v6, v7

    .end local v7    # "outputIndex":I
    .restart local v6    # "outputIndex":I
    goto :goto_15
.end method

.method public static varargs invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 805
    :try_start_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v1

    .line 809
    :goto_5
    return-object v1

    .line 806
    :catch_6
    move-exception v0

    .line 807
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_5

    .line 808
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_8
    move-exception v0

    .line 809
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_5
.end method

.method public static isAutofillAvailable(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1203
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_8

    .line 1209
    :cond_7
    :goto_7
    return v1

    .line 1207
    :cond_8
    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 1209
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static isContentUri(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 874
    if-eqz p0, :cond_10

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isCurrentAccessToken(Lcom/facebook/AccessToken;)Z
    .registers 2
    .param p0, "token"    # Lcom/facebook/AccessToken;

    .prologue
    .line 952
    if-eqz p0, :cond_e

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/AccessToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isFileUri(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 878
    if-eqz p0, :cond_10

    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 228
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isNullOrEmpty(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "subset":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "superset":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_15

    .line 211
    :cond_a
    if-eqz p0, :cond_13

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_13

    .line 220
    :goto_12
    return v2

    :cond_13
    move v2, v3

    .line 211
    goto :goto_12

    .line 214
    :cond_15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 215
    .local v0, "hash":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_26

    move v2, v3

    .line 220
    goto :goto_12

    .line 215
    :cond_26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    .line 216
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_12
.end method

.method public static isWebUri(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 867
    if-eqz p0, :cond_28

    .line 868
    const-string v0, "http"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 869
    const-string v0, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 870
    const-string v0, "fbstaging"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 867
    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static jsonArrayToSet(Lorg/json/JSONArray;)Ljava/util/Set;
    .registers 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 669
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 670
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_d

    .line 674
    return-object v1

    .line 671
    :cond_d
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static jsonArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 659
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_d

    .line 665
    return-object v1

    .line 662
    :cond_d
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 577
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz p0, :cond_30

    if-eqz p1, :cond_30

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_30
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 583
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 584
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_d
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 589
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 590
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    :cond_f
    return-void
.end method

.method public static map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/facebook/internal/Utility$Mapper",
            "<TT;TK;>;)",
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "mapper":Lcom/facebook/internal/Utility$Mapper;, "Lcom/facebook/internal/Utility$Mapper<TT;TK;>;"
    const/4 v3, 0x0

    .line 849
    if-nez p0, :cond_4

    .line 859
    :goto_3
    return-object v3

    .line 852
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TK;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 859
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1a

    move-object v1, v3

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TK;>;"
    :cond_1a
    move-object v3, v1

    goto :goto_3

    .line 853
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<TK;>;"
    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 854
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lcom/facebook/internal/Utility$Mapper;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 855
    .local v2, "mappedItem":Ljava/lang/Object;, "TK;"
    if-eqz v2, :cond_d

    .line 856
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public static md5hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 269
    const-string v0, "MD5"

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mustFixWindowParamsForAutofill(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1199
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isAutofillAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 12
    .param p0, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 322
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v4, "params":Landroid/os/Bundle;
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 324
    const-string v6, "&"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "array":[Ljava/lang/String;
    array-length v6, v0

    :goto_14
    if-lt v5, v6, :cond_17

    .line 344
    .end local v0    # "array":[Ljava/lang/String;
    :cond_16
    return-object v4

    .line 325
    .restart local v0    # "array":[Ljava/lang/String;
    :cond_17
    aget-object v3, v0, v5

    .line 326
    .local v3, "parameter":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "keyValuePair":[Ljava/lang/String;
    :try_start_1f
    array-length v7, v2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3b

    .line 331
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 332
    const/4 v8, 0x1

    aget-object v8, v2, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 330
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_38
    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 333
    :cond_3b
    array-length v7, v2

    if-ne v7, v10, :cond_38

    .line 335
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 336
    const-string v8, ""

    .line 334
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_4c} :catch_4d

    goto :goto_38

    .line 338
    :catch_4d
    move-exception v1

    .line 340
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, "FacebookSDK"

    invoke-static {v7, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_38
.end method

.method public static putCommaSeparatedStringList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_27

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_28

    .line 360
    const-string v1, ""

    .line 361
    .local v1, "commaSeparated":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_24

    .line 362
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 364
    :cond_24
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "commaSeparated":Ljava/lang/String;
    :cond_27
    return-void

    .line 356
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 357
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b
.end method

.method public static putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 375
    if-nez p2, :cond_7

    .line 376
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 402
    .end local p2    # "value":Ljava/lang/Object;
    :goto_5
    const/4 v0, 0x1

    :goto_6
    return v0

    .line 377
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 378
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 379
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_15
    instance-of v0, p2, [Z

    if-eqz v0, :cond_1f

    .line 380
    check-cast p2, [Z

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_5

    .line 381
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1f
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2d

    .line 382
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_5

    .line 383
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2d
    instance-of v0, p2, [D

    if-eqz v0, :cond_37

    .line 384
    check-cast p2, [D

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_5

    .line 385
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_37
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_45

    .line 386
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 387
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_45
    instance-of v0, p2, [I

    if-eqz v0, :cond_4f

    .line 388
    check-cast p2, [I

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_5

    .line 389
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4f
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5d

    .line 390
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_5

    .line 391
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5d
    instance-of v0, p2, [J

    if-eqz v0, :cond_67

    .line 392
    check-cast p2, [J

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_5

    .line 393
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_67
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_71

    .line 394
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 395
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_71
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_7d

    .line 396
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 397
    :cond_7d
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_8a

    .line 398
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 400
    :cond_8a
    const/4 v0, 0x0

    goto/16 :goto_6
.end method

.method public static putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 349
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_9
    return-void
.end method

.method public static putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 369
    if-eqz p2, :cond_9

    .line 370
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_9
    return-void
.end method

.method public static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 10
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    const/4 v2, 0x0

    .line 480
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 482
    .local v5, "reader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_39

    .line 483
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v3, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_7
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_3b

    .line 484
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .local v6, "reader":Ljava/io/InputStreamReader;
    :try_start_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v1, 0x800

    .line 487
    .local v1, "bufferSize":I
    const/16 v8, 0x800

    new-array v0, v8, [C

    .line 488
    .local v0, "buffer":[C
    const/4 v4, 0x0

    .line 489
    .local v4, "n":I
    :goto_18
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_2a

    .line 493
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2f

    move-result-object v8

    .line 495
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 496
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 493
    return-object v8

    .line 490
    :cond_2a
    const/4 v8, 0x0

    :try_start_2b
    invoke-virtual {v7, v0, v8, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_18

    .line 494
    .end local v0    # "buffer":[C
    .end local v1    # "bufferSize":I
    .end local v4    # "n":I
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_2f
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 495
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_32
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 496
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 497
    throw v8

    .line 494
    :catchall_39
    move-exception v8

    goto :goto_32

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_3b
    move-exception v8

    move-object v2, v3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_32
.end method

.method public static readStringMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 940
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    .local v2, "size":I
    if-gez v2, :cond_8

    .line 942
    const/4 v1, 0x0

    .line 948
    :cond_7
    return-object v1

    .line 944
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 945
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v2, :cond_7

    .line 946
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method private static refreshAvailableExternalStorage()V
    .registers 6

    .prologue
    .line 1102
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/Utility;->externalStorageExists()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1104
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 1105
    sput-wide v2, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    .line 1109
    :cond_20
    sget-wide v2, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->convertBytesToGB(D)J

    move-result-wide v2

    .line 1108
    sput-wide v2, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 1113
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_29
    return-void

    .line 1110
    :catch_2a
    move-exception v2

    goto :goto_29
.end method

.method private static refreshBestGuessNumberOfCPUCores()I
    .registers 4

    .prologue
    .line 1024
    sget v2, Lcom/facebook/internal/Utility;->numCPUCores:I

    if-lez v2, :cond_7

    .line 1025
    sget v2, Lcom/facebook/internal/Utility;->numCPUCores:I

    .line 1049
    .local v0, "cpuDir":Ljava/io/File;
    :goto_6
    return v2

    .line 1030
    .end local v0    # "cpuDir":Ljava/io/File;
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1031
    .restart local v0    # "cpuDir":Ljava/io/File;
    new-instance v2, Lcom/facebook/internal/Utility$2;

    invoke-direct {v2}, Lcom/facebook/internal/Utility$2;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1038
    .local v1, "cpuFiles":[Ljava/io/File;
    if-eqz v1, :cond_1c

    .line 1039
    array-length v2, v1

    sput v2, Lcom/facebook/internal/Utility;->numCPUCores:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_32

    .line 1046
    .end local v1    # "cpuFiles":[Ljava/io/File;
    :cond_1c
    :goto_1c
    sget v2, Lcom/facebook/internal/Utility;->numCPUCores:I

    if-gtz v2, :cond_2f

    .line 1047
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lcom/facebook/internal/Utility;->numCPUCores:I

    .line 1049
    :cond_2f
    sget v2, Lcom/facebook/internal/Utility;->numCPUCores:I

    goto :goto_6

    .line 1041
    :catch_32
    move-exception v2

    goto :goto_1c
.end method

.method private static refreshCarrierName(Landroid/content/Context;)V
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 1081
    sget-object v1, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;

    const-string v2, "NoCarrier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1084
    :try_start_a
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1085
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_19

    .line 1089
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_18
    :goto_18
    return-void

    .line 1086
    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method private static refreshPeriodicExtendedDeviceInfo(Landroid/content/Context;)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 1053
    sget-wide v0, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    sub-long/2addr v0, v2

    .line 1055
    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    .line 1056
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    .line 1057
    invoke-static {}, Lcom/facebook/internal/Utility;->refreshTimezone()V

    .line 1058
    invoke-static {p0}, Lcom/facebook/internal/Utility;->refreshCarrierName(Landroid/content/Context;)V

    .line 1059
    invoke-static {}, Lcom/facebook/internal/Utility;->refreshTotalExternalStorage()V

    .line 1060
    invoke-static {}, Lcom/facebook/internal/Utility;->refreshAvailableExternalStorage()V

    .line 1062
    :cond_28
    return-void
.end method

.method private static refreshTimezone()V
    .registers 3

    .prologue
    .line 1066
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1068
    .local v0, "tz":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    .line 1069
    const/4 v2, 0x0

    .line 1067
    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/internal/Utility;->deviceTimezoneAbbreviation:Ljava/lang/String;

    .line 1071
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/internal/Utility;->deviceTimeZoneName:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1074
    :goto_1a
    return-void

    .line 1072
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method private static refreshTotalExternalStorage()V
    .registers 6

    .prologue
    .line 1119
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/Utility;->externalStorageExists()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1120
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1121
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sput-wide v2, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    .line 1124
    :cond_20
    sget-wide v2, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->convertBytesToGB(D)J

    move-result-wide v2

    sput-wide v2, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 1128
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_29
    return-void

    .line 1125
    :catch_2a
    move-exception v2

    goto :goto_29
.end method

.method public static safeGetStringFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "response"    # Lorg/json/JSONObject;
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 617
    if-eqz p0, :cond_9

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public static setAppEventAttributionParameters(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V
    .registers 8
    .param p0, "params"    # Lorg/json/JSONObject;
    .param p1, "attributionIdentifiers"    # Lcom/facebook/internal/AttributionIdentifiers;
    .param p2, "anonymousAppDeviceGUID"    # Ljava/lang/String;
    .param p3, "limitEventUsage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 682
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 683
    const-string v0, "attribution"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    :cond_13
    if-eqz p1, :cond_30

    .line 687
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 688
    const-string v0, "advertiser_id"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    const-string v3, "advertiser_tracking_enabled"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_2d
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 692
    :cond_30
    if-eqz p1, :cond_41

    .line 693
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidInstallerPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 694
    const-string v0, "installer_package"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidInstallerPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    :cond_41
    const-string v0, "anon_id"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const-string v0, "application_tracking_enabled"

    if-eqz p3, :cond_50

    :goto_4a
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 699
    return-void

    :cond_4e
    move v0, v2

    .line 689
    goto :goto_2d

    :cond_50
    move v1, v2

    .line 698
    goto :goto_4a
.end method

.method public static setAppEventExtendedDeviceInfoParameters(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 24
    .param p0, "params"    # Lorg/json/JSONObject;
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 705
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 706
    .local v9, "extraInfoArray":Lorg/json/JSONArray;
    const-string v18, "a2"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 708
    invoke-static/range {p1 .. p1}, Lcom/facebook/internal/Utility;->refreshPeriodicExtendedDeviceInfo(Landroid/content/Context;)V

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 712
    .local v13, "pkgName":Ljava/lang/String;
    const/4 v14, -0x1

    .line 713
    .local v14, "versionCode":I
    const-string v15, ""

    .line 716
    .local v15, "versionName":Ljava/lang/String;
    :try_start_16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 717
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    iget v14, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 718
    iget-object v15, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_28} :catch_103

    .line 724
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    :goto_28
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 725
    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 726
    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 729
    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 730
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 735
    :try_start_3f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v11, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4b} :catch_fa

    .line 739
    .local v11, "locale":Ljava/util/Locale;
    :goto_4b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 742
    sget-object v18, Lcom/facebook/internal/Utility;->deviceTimezoneAbbreviation:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 745
    sget-object v18, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 748
    const/16 v16, 0x0

    .line 749
    .local v16, "width":I
    const/4 v10, 0x0

    .line 750
    .local v10, "height":I
    const-wide/16 v4, 0x0

    .line 752
    .local v4, "density":D
    :try_start_82
    const-string v18, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 753
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_a9

    .line 754
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 755
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 756
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 757
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 758
    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 759
    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_a6} :catch_101

    move/from16 v0, v18

    float-to-double v4, v0

    .line 764
    .end local v6    # "display":Landroid/view/Display;
    .end local v7    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v17    # "wm":Landroid/view/WindowManager;
    :cond_a9
    :goto_a9
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 765
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 766
    const-string v18, "%.2f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 769
    invoke-static {}, Lcom/facebook/internal/Utility;->refreshBestGuessNumberOfCPUCores()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 772
    sget-wide v18, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 773
    sget-wide v18, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 775
    sget-object v18, Lcom/facebook/internal/Utility;->deviceTimeZoneName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 777
    const-string v18, "extinfo"

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    return-void

    .line 736
    .end local v4    # "density":D
    .end local v10    # "height":I
    .end local v11    # "locale":Ljava/util/Locale;
    .end local v16    # "width":I
    :catch_fa
    move-exception v8

    .line 737
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .restart local v11    # "locale":Ljava/util/Locale;
    goto/16 :goto_4b

    .line 761
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "density":D
    .restart local v10    # "height":I
    .restart local v16    # "width":I
    :catch_101
    move-exception v18

    goto :goto_a9

    .line 719
    .end local v4    # "density":D
    .end local v10    # "height":I
    .end local v11    # "locale":Ljava/util/Locale;
    .end local v16    # "width":I
    :catch_103
    move-exception v18

    goto/16 :goto_28
.end method

.method public static sha1hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1hash([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 277
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 527
    .local v0, "aEmpty":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 529
    .local v1, "bEmpty":Z
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    .line 531
    const/4 v2, 0x1

    .line 538
    :goto_d
    return v2

    .line 533
    :cond_e
    if-nez v0, :cond_17

    if-nez v1, :cond_17

    .line 535
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_d

    .line 538
    :cond_17
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static tryGetJSONArrayFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 3
    .param p0, "response"    # Lorg/json/JSONObject;
    .param p1, "propertyKey"    # Ljava/lang/String;

    .prologue
    .line 625
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static tryGetJSONObjectFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3
    .param p0, "response"    # Lorg/json/JSONObject;
    .param p1, "propertyKey"    # Ljava/lang/String;

    .prologue
    .line 621
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static varargs unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2
    .param p0, "ts"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static writeStringMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 927
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 929
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    :cond_6
    return-void

    .line 931
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 933
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_16
.end method
