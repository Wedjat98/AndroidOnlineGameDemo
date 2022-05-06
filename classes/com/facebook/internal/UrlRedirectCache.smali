.class Lcom/facebook/internal/UrlRedirectCache;
.super Ljava/lang/Object;
.source "UrlRedirectCache.java"


# static fields
.field private static final REDIRECT_CONTENT_TAG:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static urlRedirectCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 6
    .param p0, "fromUri"    # Landroid/net/Uri;
    .param p1, "toUri"    # Landroid/net/Uri;

    .prologue
    .line 90
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 104
    :cond_4
    :goto_4
    return-void

    .line 94
    :cond_5
    const/4 v1, 0x0

    .line 96
    .local v1, "redirectStream":Ljava/io/OutputStream;
    :try_start_6
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    .line 97
    .local v0, "cache":Lcom/facebook/internal/FileLruCache;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1f} :catch_23
    .catchall {:try_start_6 .. :try_end_1f} :catchall_28

    .line 102
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    .line 99
    .end local v0    # "cache":Lcom/facebook/internal/FileLruCache;
    :catch_23
    move-exception v2

    .line 102
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    .line 101
    :catchall_28
    move-exception v2

    .line 102
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    throw v2
.end method

.method static clearCache()V
    .registers 6

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 112
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    return-void

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clearCache failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method static declared-synchronized getCache()Lcom/facebook/internal/FileLruCache;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const-class v1, Lcom/facebook/internal/UrlRedirectCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    if-nez v0, :cond_15

    .line 45
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    .line 47
    :cond_15
    sget-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 13
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 51
    if-nez p0, :cond_4

    .line 86
    :goto_3
    return-object v9

    .line 55
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "uriString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 59
    .local v3, "reader":Ljava/io/InputStreamReader;
    :try_start_9
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_46
    .catchall {:try_start_9 .. :try_end_c} :catchall_4b

    move-result-object v2

    .line 60
    .local v2, "cache":Lcom/facebook/internal/FileLruCache;
    const/4 v5, 0x0

    .local v5, "redirectExists":Z
    move-object v4, v3

    .line 61
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .local v4, "reader":Ljava/io/InputStreamReader;
    :goto_f
    :try_start_f
    sget-object v10, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .local v6, "stream":Ljava/io/InputStream;
    if-nez v6, :cond_21

    .line 78
    if-eqz v5, :cond_50

    .line 79
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_58
    .catchall {:try_start_f .. :try_end_1c} :catchall_55

    move-result-object v9

    .line 83
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    .line 62
    :cond_21
    const/4 v5, 0x1

    .line 65
    :try_start_22
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_58
    .catchall {:try_start_22 .. :try_end_27} :catchall_55

    .line 66
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    const/16 v10, 0x80

    :try_start_29
    new-array v0, v10, [C

    .line 68
    .local v0, "buffer":[C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v8, "urlBuilder":Ljava/lang/StringBuilder;
    :goto_30
    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, "bufferLength":I
    if-gtz v1, :cond_41

    .line 72
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    goto :goto_f

    .line 70
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    :cond_41
    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_45} :catch_46
    .catchall {:try_start_29 .. :try_end_45} :catchall_4b

    goto :goto_30

    .line 81
    .end local v0    # "buffer":[C
    .end local v1    # "bufferLength":I
    .end local v2    # "cache":Lcom/facebook/internal/FileLruCache;
    .end local v5    # "redirectExists":Z
    .end local v6    # "stream":Ljava/io/InputStream;
    .end local v8    # "urlBuilder":Ljava/lang/StringBuilder;
    :catch_46
    move-exception v10

    .line 83
    :goto_47
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    .line 82
    :catchall_4b
    move-exception v9

    .line 83
    :goto_4c
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    throw v9

    .line 83
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "cache":Lcom/facebook/internal/FileLruCache;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "redirectExists":Z
    .restart local v6    # "stream":Ljava/io/InputStream;
    :cond_50
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 82
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .end local v6    # "stream":Ljava/io/InputStream;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :catchall_55
    move-exception v9

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_4c

    .line 81
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :catch_58
    move-exception v10

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_47
.end method
