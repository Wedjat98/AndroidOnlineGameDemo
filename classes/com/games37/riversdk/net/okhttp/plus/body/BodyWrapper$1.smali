.class final Lcom/games37/riversdk/net/okhttp/plus/body/BodyWrapper$1;
.super Ljava/lang/Object;
.source "BodyWrapper.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/net/okhttp/plus/body/BodyWrapper;->addProgressResponseListener(Lokhttp3/OkHttpClient;Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$progressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/body/BodyWrapper$1;->val$progressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 7
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 21
    .local v0, "originalResponse":Lokhttp3/Response;
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    new-instance v2, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;

    .line 22
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    iget-object v4, p0, Lcom/games37/riversdk/net/okhttp/plus/body/BodyWrapper$1;->val$progressListener:Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;

    invoke-direct {v2, v3, v4}, Lcom/games37/riversdk/net/okhttp/plus/body/ResponseProgressBody;-><init>(Lokhttp3/ResponseBody;Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;)V

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 21
    return-object v1
.end method
