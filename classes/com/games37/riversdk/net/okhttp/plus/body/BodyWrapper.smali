.class public Lcom/games37/riversdk/net/okhttp/plus/body/BodyWrapper;
.super Ljava/lang/Object;
.source "BodyWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProgressRequestListener(Lokhttp3/RequestBody;Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;
    .registers 3
    .param p0, "requestBody"    # Lokhttp3/RequestBody;
    .param p1, "progressRequestListener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    .prologue
    .line 29
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;

    invoke-direct {v0, p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/body/RequestProgressBody;-><init>(Lokhttp3/RequestBody;Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)V

    return-object v0
.end method

.method public static addProgressResponseListener(Lokhttp3/OkHttpClient;Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)Lokhttp3/OkHttpClient;
    .registers 4
    .param p0, "client"    # Lokhttp3/OkHttpClient;
    .param p1, "progressListener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    .prologue
    .line 16
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/net/okhttp/plus/body/BodyWrapper$1;

    invoke-direct {v1, p1}, Lcom/games37/riversdk/net/okhttp/plus/body/BodyWrapper$1;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)V

    .line 17
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 16
    return-object v0
.end method
