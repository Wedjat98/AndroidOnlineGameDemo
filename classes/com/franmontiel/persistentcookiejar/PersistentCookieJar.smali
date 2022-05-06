.class public Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;
.super Ljava/lang/Object;
.source "PersistentCookieJar.java"

# interfaces
.implements Lcom/franmontiel/persistentcookiejar/ClearableCookieJar;


# instance fields
.field private cache:Lcom/franmontiel/persistentcookiejar/cache/CookieCache;

.field private persistor:Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;


# direct methods
.method public constructor <init>(Lcom/franmontiel/persistentcookiejar/cache/CookieCache;Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;)V
    .registers 5
    .param p1, "cache"    # Lcom/franmontiel/persistentcookiejar/cache/CookieCache;
    .param p2, "persistor"    # Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->cache:Lcom/franmontiel/persistentcookiejar/cache/CookieCache;

    .line 36
    iput-object p2, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->persistor:Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;

    .line 38
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->cache:Lcom/franmontiel/persistentcookiejar/cache/CookieCache;

    invoke-interface {p2}, Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;->loadAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/franmontiel/persistentcookiejar/cache/CookieCache;->addAll(Ljava/util/Collection;)V

    .line 39
    return-void
.end method

.method private static filterPersistentCookies(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "persistentCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    .line 51
    .local v0, "cookie":Lokhttp3/Cookie;
    invoke-virtual {v0}, Lokhttp3/Cookie;->persistent()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 52
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 55
    .end local v0    # "cookie":Lokhttp3/Cookie;
    :cond_1f
    return-object v1
.end method

.method private static isCookieExpired(Lokhttp3/Cookie;)Z
    .registers 5
    .param p0, "cookie"    # Lokhttp3/Cookie;

    .prologue
    .line 81
    invoke-virtual {p0}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->cache:Lcom/franmontiel/persistentcookiejar/cache/CookieCache;

    invoke-interface {v0}, Lcom/franmontiel/persistentcookiejar/cache/CookieCache;->clear()V

    .line 93
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->persistor:Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;

    invoke-interface {v0}, Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearSession()V
    .registers 3

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->cache:Lcom/franmontiel/persistentcookiejar/cache/CookieCache;

    invoke-interface {v0}, Lcom/franmontiel/persistentcookiejar/cache/CookieCache;->clear()V

    .line 87
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->cache:Lcom/franmontiel/persistentcookiejar/cache/CookieCache;

    iget-object v1, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->persistor:Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;

    invoke-interface {v1}, Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;->loadAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/franmontiel/persistentcookiejar/cache/CookieCache;->addAll(Ljava/util/Collection;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .registers 7
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "cookiesToRemove":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v3, "validCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v4, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->cache:Lcom/franmontiel/persistentcookiejar/cache/CookieCache;

    invoke-interface {v4}, Lcom/franmontiel/persistentcookiejar/cache/CookieCache;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/Cookie;>;"
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Cookie;

    .line 66
    .local v1, "currentCookie":Lokhttp3/Cookie;
    invoke-static {v1}, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->isCookieExpired(Lokhttp3/Cookie;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2a

    goto :goto_11

    .line 60
    .end local v0    # "cookiesToRemove":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local v1    # "currentCookie":Lokhttp3/Cookie;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/Cookie;>;"
    .end local v3    # "validCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    :catchall_2a
    move-exception v4

    monitor-exit p0

    throw v4

    .line 70
    .restart local v0    # "cookiesToRemove":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .restart local v1    # "currentCookie":Lokhttp3/Cookie;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/Cookie;>;"
    .restart local v3    # "validCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    :cond_2d
    :try_start_2d
    invoke-virtual {v1, p1}, Lokhttp3/Cookie;->matches(Lokhttp3/HttpUrl;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 71
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 75
    .end local v1    # "currentCookie":Lokhttp3/Cookie;
    :cond_37
    iget-object v4, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->persistor:Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;

    invoke-interface {v4, v0}, Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;->removeAll(Ljava/util/Collection;)V
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_2a

    .line 77
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .registers 5
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->cache:Lcom/franmontiel/persistentcookiejar/cache/CookieCache;

    invoke-interface {v0, p2}, Lcom/franmontiel/persistentcookiejar/cache/CookieCache;->addAll(Ljava/util/Collection;)V

    .line 44
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->persistor:Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;

    invoke-static {p2}, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;->filterPersistentCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;->saveAll(Ljava/util/Collection;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 45
    monitor-exit p0

    return-void

    .line 43
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
