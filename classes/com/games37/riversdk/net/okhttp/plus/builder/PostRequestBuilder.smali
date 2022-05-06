.class public Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;
.super Lcom/games37/riversdk/net/okhttp/plus/builder/RequestBuilder;
.source "PostRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/games37/riversdk/net/okhttp/plus/builder/RequestBuilder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 26
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/builder/RequestBuilder;-><init>(Lokhttp3/OkHttpClient;)V

    .line 27
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;

    .prologue
    .line 53
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder<TT;>;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->headers:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 54
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->headers:Ljava/util/Map;

    .line 56
    :cond_b
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-object p0
.end method

.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder<TT;>;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->params:Ljava/util/Map;

    .line 43
    :cond_b
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object p0
.end method

.method public enqueue(Lokhttp3/Callback;)Lokhttp3/Call;
    .registers 8
    .param p1, "callback"    # Lokhttp3/Callback;

    .prologue
    .line 69
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder<TT;>;"
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 70
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "url can not be null !"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_10
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v5, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 74
    .local v0, "builder":Lokhttp3/Request$Builder;
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->tag:Ljava/lang/Object;

    if-eqz v4, :cond_24

    .line 75
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 77
    :cond_24
    new-instance v2, Lokhttp3/FormBody$Builder;

    invoke-direct {v2}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 78
    .local v2, "encodingBuilder":Lokhttp3/FormBody$Builder;
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->params:Ljava/util/Map;

    invoke-virtual {p0, v2, v4}, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->appendParams(Lokhttp3/FormBody$Builder;Ljava/util/Map;)V

    .line 79
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->headers:Ljava/util/Map;

    invoke-virtual {p0, v0, v4}, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->appendHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 80
    invoke-virtual {v2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v4

    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 81
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 83
    .local v3, "request":Lokhttp3/Request;
    instance-of v4, p1, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    if-eqz v4, :cond_48

    move-object v4, p1

    .line 84
    check-cast v4, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    invoke-virtual {v4}, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->onStart()V

    .line 86
    :cond_48
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 87
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 88
    return-object v1
.end method

.method public execute()Lokhttp3/Response;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder<TT;>;"
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 94
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "url can not be null !"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    :cond_10
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v5, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 98
    .local v0, "builder":Lokhttp3/Request$Builder;
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->tag:Ljava/lang/Object;

    if-eqz v4, :cond_24

    .line 99
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 101
    :cond_24
    new-instance v2, Lokhttp3/FormBody$Builder;

    invoke-direct {v2}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 102
    .local v2, "encodingBuilder":Lokhttp3/FormBody$Builder;
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->params:Ljava/util/Map;

    invoke-virtual {p0, v2, v4}, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->appendParams(Lokhttp3/FormBody$Builder;Ljava/util/Map;)V

    .line 103
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->headers:Ljava/util/Map;

    invoke-virtual {p0, v0, v4}, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->appendHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 104
    invoke-virtual {v2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v4

    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 105
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 107
    .local v3, "request":Lokhttp3/Request;
    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 108
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    return-object v4
.end method

.method public headers(Ljava/util/Map;)Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder<TT;>;"
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->headers:Ljava/util/Map;

    .line 49
    return-object p0
.end method

.method public setParams(Ljava/util/Map;)Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->params:Ljava/util/Map;

    .line 36
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 61
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder<TT;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->tag:Ljava/lang/Object;

    .line 62
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder<TT;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->url:Ljava/lang/String;

    .line 31
    return-object p0
.end method
