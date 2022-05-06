.class Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;
.super Ljava/lang/Object;
.source "CacheAdapter.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/huc/CacheAdapter;->put(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/huc/CacheAdapter;

.field final synthetic val$request:Ljava/net/CacheRequest;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/huc/CacheAdapter;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;->this$0:Lcom/squareup/okhttp/internal/huc/CacheAdapter;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 69
    return-void
.end method

.method public body()Lokio/Sink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v1, p0, Lcom/squareup/okhttp/internal/huc/CacheAdapter$1;->val$request:Ljava/net/CacheRequest;

    invoke-virtual {v1}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 64
    .local v0, "body":Ljava/io/OutputStream;
    if-eqz v0, :cond_d

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method
