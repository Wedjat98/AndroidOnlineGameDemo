.class public Lcom/ydnetwork/net/toolbox/StringRequest;
.super Lcom/ydnetwork/net/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ydnetwork/net/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/ydnetwork/net/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ydnetwork/net/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/ydnetwork/net/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ydnetwork/net/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/ydnetwork/net/Request;-><init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/ydnetwork/net/toolbox/StringRequest;->mListener:Lcom/ydnetwork/net/Response$Listener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ydnetwork/net/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ydnetwork/net/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ydnetwork/net/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ydnetwork/net/toolbox/StringRequest;->deliverResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/StringRequest;->mListener:Lcom/ydnetwork/net/Response$Listener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/StringRequest;->mListener:Lcom/ydnetwork/net/Response$Listener;

    invoke-interface {v0, p1}, Lcom/ydnetwork/net/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method protected onFinish()V
    .registers 2

    invoke-super {p0}, Lcom/ydnetwork/net/Request;->onFinish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/StringRequest;->mListener:Lcom/ydnetwork/net/Response$Listener;

    return-void
.end method

.method protected parseNetworkResponse(Lcom/ydnetwork/net/NetworkResponse;)Lcom/ydnetwork/net/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/NetworkResponse;",
            ")",
            "Lcom/ydnetwork/net/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ydnetwork/net/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/ydnetwork/net/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/ydnetwork/net/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_16

    :goto_d
    invoke-static {p1}, Lcom/ydnetwork/net/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/ydnetwork/net/NetworkResponse;)Lcom/ydnetwork/net/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ydnetwork/net/Response;->success(Ljava/lang/Object;Lcom/ydnetwork/net/Cache$Entry;)Lcom/ydnetwork/net/Response;

    move-result-object v0

    return-object v0

    :catch_16
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ydnetwork/net/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_d
.end method
