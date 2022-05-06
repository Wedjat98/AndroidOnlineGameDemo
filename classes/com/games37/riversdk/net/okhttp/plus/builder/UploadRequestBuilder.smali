.class public Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
.super Lcom/games37/riversdk/net/okhttp/plus/builder/RequestBuilder;
.source "UploadRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/games37/riversdk/net/okhttp/plus/builder/RequestBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_OUT:I = 0x1e


# instance fields
.field private connectTimeOut:I

.field private file:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

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

.field private readTimeOut:I

.field private writeTimeOut:I


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 40
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    invoke-direct {p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/builder/RequestBuilder;-><init>(Lokhttp3/OkHttpClient;)V

    .line 41
    return-void
.end method

.method private static varargs addFiles(Lokhttp3/MultipartBody$Builder;[Landroid/util/Pair;)V
    .registers 12
    .param p0, "builder"    # Lokhttp3/MultipartBody$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Builder;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "files":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    if-eqz p1, :cond_58

    .line 160
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v6, p1

    if-ge v5, v6, :cond_60

    .line 161
    aget-object v4, p1, v5

    .line 162
    .local v4, "filePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 163
    .local v2, "fileKeyName":Ljava/lang/String;
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 164
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {v3}, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    invoke-static {v6, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 166
    .local v1, "fileBody":Lokhttp3/RequestBody;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Content-Disposition"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "form-data; name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\"; filename=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 171
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileBody":Lokhttp3/RequestBody;
    .end local v2    # "fileKeyName":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "filePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    .end local v5    # "i":I
    :cond_58
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "File can not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 173
    .restart local v5    # "i":I
    :cond_60
    return-void
.end method

.method private static addParams(Lokhttp3/MultipartBody$Builder;Ljava/util/Map;)V
    .registers 8
    .param p0, "builder"    # Lokhttp3/MultipartBody$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Builder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_53

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    .line 150
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Content-Disposition"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v3

    const/4 v4, 0x0

    .line 152
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 151
    invoke-virtual {p0, v3, v1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_10

    .line 155
    .end local v0    # "key":Ljava/lang/String;
    :cond_53
    return-void
.end method

.method private static guessMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v1

    .line 177
    .local v1, "fileNameMap":Ljava/net/FileNameMap;
    invoke-interface {v1, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "contentTypeFor":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 179
    const-string v0, "application/octet-stream"

    .line 181
    :cond_c
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;

    .prologue
    .line 72
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->headers:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->headers:Ljava/util/Map;

    .line 75
    :cond_b
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object p0
.end method

.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->params:Ljava/util/Map;

    .line 62
    :cond_b
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object p0
.end method

.method enqueue(Lokhttp3/Callback;)Lokhttp3/Call;
    .registers 3
    .param p1, "callback"    # Lokhttp3/Callback;

    .prologue
    .line 186
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method execute()Lokhttp3/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public file(Landroid/util/Pair;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    .local p1, "file":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->file:Landroid/util/Pair;

    .line 45
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->headers:Ljava/util/Map;

    .line 68
    return-object p0
.end method

.method public setConnectTimeOut(I)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 2
    .param p1, "connectTimeOut"    # I

    .prologue
    .line 89
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    iput p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->connectTimeOut:I

    .line 90
    return-object p0
.end method

.method public setParams(Ljava/util/Map;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->params:Ljava/util/Map;

    .line 55
    return-object p0
.end method

.method public setReadTimeOut(I)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 2
    .param p1, "readTimeOut"    # I

    .prologue
    .line 107
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    iput p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->readTimeOut:I

    .line 108
    return-object p0
.end method

.method public setWriteTimeOut(I)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 2
    .param p1, "writeTimeOut"    # I

    .prologue
    .line 98
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    iput p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->writeTimeOut:I

    .line 99
    return-object p0
.end method

.method public start(Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;)Lokhttp3/Call;
    .registers 14
    .param p1, "uploadListener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;

    .prologue
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    const-wide/16 v10, 0x1e

    .line 113
    new-instance v6, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v6}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v7, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v6, v7}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v4

    .line 114
    .local v4, "multipartBuilder":Lokhttp3/MultipartBody$Builder;
    iget-object v6, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->params:Ljava/util/Map;

    invoke-static {v4, v6}, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->addParams(Lokhttp3/MultipartBody$Builder;Ljava/util/Map;)V

    .line 115
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/util/Pair;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->file:Landroid/util/Pair;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->addFiles(Lokhttp3/MultipartBody$Builder;[Landroid/util/Pair;)V

    .line 117
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 118
    .local v0, "builder":Lokhttp3/Request$Builder;
    iget-object v6, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->headers:Ljava/util/Map;

    invoke-virtual {p0, v0, v6}, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->appendHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 119
    iget-object v6, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->url:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    invoke-virtual {v4}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/games37/riversdk/net/okhttp/plus/body/BodyWrapper;->addProgressRequestListener(Lokhttp3/RequestBody;Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 121
    .local v5, "request":Lokhttp3/Request;
    iget-object v6, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 123
    .local v2, "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    iget v6, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->connectTimeOut:I

    if-lez v6, :cond_73

    .line 124
    iget v6, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->connectTimeOut:I

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 129
    :goto_4f
    iget v6, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->writeTimeOut:I

    if-lez v6, :cond_79

    .line 130
    iget v6, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->writeTimeOut:I

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 135
    :goto_5b
    iget v6, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->readTimeOut:I

    if-lez v6, :cond_7f

    .line 136
    iget v6, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->readTimeOut:I

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 141
    :goto_67
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 142
    .local v3, "clone":Lokhttp3/OkHttpClient;
    invoke-virtual {v3, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 143
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 144
    return-object v1

    .line 126
    .end local v1    # "call":Lokhttp3/Call;
    .end local v3    # "clone":Lokhttp3/OkHttpClient;
    :cond_73
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v6}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_4f

    .line 132
    :cond_79
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v6}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_5b

    .line 138
    :cond_7f
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v6}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_67
.end method

.method public tag(Ljava/lang/Object;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 80
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->tag:Ljava/lang/Object;

    .line 81
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;, "Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder<TT;>;"
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->url:Ljava/lang/String;

    .line 50
    return-object p0
.end method
