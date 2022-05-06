.class public Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
.super Ljava/lang/Object;
.source "OkHttpProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$Builder;
    }
.end annotation


# instance fields
.field private mHttpClient:Lokhttp3/OkHttpClient;

.field private mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    invoke-direct {v0}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;-><init>()V

    invoke-direct {p0, v0}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;-><init>(Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;)V
    .registers 2
    .param p1, "params"    # Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    .line 38
    invoke-direct {p0}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->buildOKHttpClient()Lokhttp3/OkHttpClient;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;
    .param p2, "x1"    # Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;-><init>(Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;)V

    return-void
.end method

.method private buildOKHttpClient()Lokhttp3/OkHttpClient;
    .registers 6

    .prologue
    .line 46
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 49
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    iget-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    invoke-virtual {v2}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 50
    iget-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    invoke-virtual {v2}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 51
    iget-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    invoke-virtual {v2}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 53
    iget-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    invoke-virtual {v2}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->isSetCookie()Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    invoke-virtual {v2}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 55
    new-instance v1, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;

    new-instance v2, Lcom/franmontiel/persistentcookiejar/cache/SetCookieCache;

    invoke-direct {v2}, Lcom/franmontiel/persistentcookiejar/cache/SetCookieCache;-><init>()V

    new-instance v3, Lcom/franmontiel/persistentcookiejar/persistence/SharedPrefsCookiePersistor;

    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mParams:Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;

    .line 56
    invoke-virtual {v4}, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/franmontiel/persistentcookiejar/persistence/SharedPrefsCookiePersistor;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;-><init>(Lcom/franmontiel/persistentcookiejar/cache/CookieCache;Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;)V

    .line 57
    .local v1, "cookieJar":Lcom/franmontiel/persistentcookiejar/ClearableCookieJar;
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    iput-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mHttpClient:Lokhttp3/OkHttpClient;

    .line 62
    .end local v1    # "cookieJar":Lcom/franmontiel/persistentcookiejar/ClearableCookieJar;
    :goto_58
    iget-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mHttpClient:Lokhttp3/OkHttpClient;

    return-object v2

    .line 59
    :cond_5b
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    iput-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mHttpClient:Lokhttp3/OkHttpClient;

    goto :goto_58
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    .line 90
    .local v1, "dispatcher":Lokhttp3/Dispatcher;
    invoke-virtual {v1}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 91
    .local v0, "call":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 92
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_e

    .line 95
    .end local v0    # "call":Lokhttp3/Call;
    :cond_2c
    invoke-virtual {v1}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 96
    .restart local v0    # "call":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 97
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_34

    .line 100
    .end local v0    # "call":Lokhttp3/Call;
    :cond_52
    return-void
.end method

.method public download(Ljava/lang/String;Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;)Lokhttp3/Call;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadListener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;

    .prologue
    .line 74
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 75
    .local v1, "request":Lokhttp3/Request;
    iget-object v2, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {v2, p2}, Lcom/games37/riversdk/net/okhttp/plus/body/BodyWrapper;->addProgressResponseListener(Lokhttp3/OkHttpClient;Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 77
    .local v0, "call":Lokhttp3/Call;
    invoke-interface {v0, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 78
    return-object v0
.end method

.method public get()Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;
    .registers 3

    .prologue
    .line 66
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;

    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public post()Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;

    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public upload()Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;

    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method
