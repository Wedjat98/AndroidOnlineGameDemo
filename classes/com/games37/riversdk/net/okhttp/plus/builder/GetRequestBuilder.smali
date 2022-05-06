.class public Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;
.super Lcom/games37/riversdk/net/okhttp/plus/builder/RequestBuilder;
.source "GetRequestBuilder.java"


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


# static fields
.field public static final TAG:Ljava/lang/String; = "GetRequestBuilder"


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 26
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/builder/RequestBuilder;-><init>(Lokhttp3/OkHttpClient;)V

    .line 27
    return-void
.end method


# virtual methods
.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder<TT;>;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->params:Ljava/util/Map;

    .line 43
    :cond_b
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object p0
.end method

.method public enqueue(Lokhttp3/Callback;)Lokhttp3/Call;
    .registers 8
    .param p1, "callback"    # Lokhttp3/Callback;

    .prologue
    .line 55
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder<TT;>;"
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 56
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "url can not be null !"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_10
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->params:Ljava/util/Map;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->params:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_26

    .line 60
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->params:Ljava/util/Map;

    invoke-virtual {p0, v3, v4}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url:Ljava/lang/String;

    .line 63
    :cond_26
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 65
    .local v0, "builder":Lokhttp3/Request$Builder;
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->tag:Ljava/lang/Object;

    if-eqz v3, :cond_3a

    .line 66
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 69
    :cond_3a
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 71
    .local v2, "request":Lokhttp3/Request;
    const-string v3, "GetRequestBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enqueue url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    instance-of v3, p1, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    if-eqz v3, :cond_68

    move-object v3, p1

    .line 74
    check-cast v3, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;

    invoke-virtual {v3}, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->onStart()V

    .line 77
    :cond_68
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 78
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 79
    return-object v1
.end method

.method public execute()Lokhttp3/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder<TT;>;"
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 86
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "url can not be null !"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_10
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->params:Ljava/util/Map;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->params:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_26

    .line 90
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->params:Ljava/util/Map;

    invoke-virtual {p0, v3, v4}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url:Ljava/lang/String;

    .line 93
    :cond_26
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 95
    .local v0, "builder":Lokhttp3/Request$Builder;
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->tag:Ljava/lang/Object;

    if-eqz v3, :cond_3a

    .line 96
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 99
    :cond_3a
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 101
    .local v2, "request":Lokhttp3/Request;
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 102
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    return-object v3
.end method

.method public setParams(Ljava/util/Map;)Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->params:Ljava/util/Map;

    .line 36
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 48
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder<TT;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->tag:Ljava/lang/Object;

    .line 49
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder<TT;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url:Ljava/lang/String;

    .line 31
    return-object p0
.end method
