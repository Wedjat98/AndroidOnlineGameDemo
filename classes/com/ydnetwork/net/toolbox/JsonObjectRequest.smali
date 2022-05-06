.class public Lcom/ydnetwork/net/toolbox/JsonObjectRequest;
.super Lcom/ydnetwork/net/toolbox/JsonRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ydnetwork/net/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/ydnetwork/net/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/ydnetwork/net/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ydnetwork/net/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ydnetwork/net/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/ydnetwork/net/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/ydnetwork/net/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/ydnetwork/net/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/ydnetwork/net/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_c

    const/4 v3, 0x0

    :goto_3
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ydnetwork/net/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V

    return-void

    :cond_c
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ydnetwork/net/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/ydnetwork/net/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ydnetwork/net/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/ydnetwork/net/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/ydnetwork/net/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_c

    const/4 v1, 0x0

    :goto_3
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ydnetwork/net/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V

    return-void

    :cond_c
    const/4 v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/ydnetwork/net/NetworkResponse;)Lcom/ydnetwork/net/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/NetworkResponse;",
            ")",
            "Lcom/ydnetwork/net/Response",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ydnetwork/net/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/ydnetwork/net/NetworkResponse;->headers:Ljava/util/Map;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/ydnetwork/net/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ydnetwork/net/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/ydnetwork/net/NetworkResponse;)Lcom/ydnetwork/net/Cache$Entry;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ydnetwork/net/Response;->success(Ljava/lang/Object;Lcom/ydnetwork/net/Cache$Entry;)Lcom/ydnetwork/net/Response;
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1b} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1b} :catch_28

    move-result-object v0

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    new-instance v1, Lcom/ydnetwork/net/ParseError;

    invoke-direct {v1, v0}, Lcom/ydnetwork/net/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/ydnetwork/net/Response;->error(Lcom/ydnetwork/net/VolleyError;)Lcom/ydnetwork/net/Response;

    move-result-object v0

    goto :goto_1c

    :catch_28
    move-exception v0

    new-instance v1, Lcom/ydnetwork/net/ParseError;

    invoke-direct {v1, v0}, Lcom/ydnetwork/net/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/ydnetwork/net/Response;->error(Lcom/ydnetwork/net/VolleyError;)Lcom/ydnetwork/net/Response;

    move-result-object v0

    goto :goto_1c
.end method
