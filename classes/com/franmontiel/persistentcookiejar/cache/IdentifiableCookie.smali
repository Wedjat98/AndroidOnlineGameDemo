.class Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;
.super Ljava/lang/Object;
.source "IdentifiableCookie.java"


# instance fields
.field private cookie:Lokhttp3/Cookie;


# direct methods
.method constructor <init>(Lokhttp3/Cookie;)V
    .registers 2
    .param p1, "cookie"    # Lokhttp3/Cookie;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    .line 45
    return-void
.end method

.method static decorateAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "cookies":Ljava/util/Collection;, "Ljava/util/Collection<Lokhttp3/Cookie;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .local v1, "identifiableCookies":Ljava/util/List;, "Ljava/util/List<Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    .line 38
    .local v0, "cookie":Lokhttp3/Cookie;
    new-instance v3, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;

    invoke-direct {v3, v0}, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;-><init>(Lokhttp3/Cookie;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 40
    .end local v0    # "cookie":Lokhttp3/Cookie;
    :cond_22
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 53
    instance-of v2, p1, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;

    if-nez v2, :cond_6

    .line 55
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;

    .line 55
    .local v0, "that":Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;
    iget-object v2, v0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v2}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v3}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    .line 56
    invoke-virtual {v2}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v3}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    .line 57
    invoke-virtual {v2}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v3}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    .line 58
    invoke-virtual {v2}, Lokhttp3/Cookie;->secure()Z

    move-result v2

    iget-object v3, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v3}, Lokhttp3/Cookie;->secure()Z

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    .line 59
    invoke-virtual {v2}, Lokhttp3/Cookie;->hostOnly()Z

    move-result v2

    iget-object v3, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v3}, Lokhttp3/Cookie;->hostOnly()Z

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method getCookie()Lokhttp3/Cookie;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    const/16 v0, 0x11

    .line 65
    .local v0, "hash":I
    iget-object v1, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v1}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 66
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v4}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 67
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v4}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 68
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v1}, Lokhttp3/Cookie;->secure()Z

    move-result v1

    if-eqz v1, :cond_46

    move v1, v2

    :goto_37
    add-int v0, v4, v1

    .line 69
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/franmontiel/persistentcookiejar/cache/IdentifiableCookie;->cookie:Lokhttp3/Cookie;

    invoke-virtual {v4}, Lokhttp3/Cookie;->hostOnly()Z

    move-result v4

    if-eqz v4, :cond_48

    :goto_43
    add-int v0, v1, v2

    .line 70
    return v0

    :cond_46
    move v1, v3

    .line 68
    goto :goto_37

    :cond_48
    move v2, v3

    .line 69
    goto :goto_43
.end method
