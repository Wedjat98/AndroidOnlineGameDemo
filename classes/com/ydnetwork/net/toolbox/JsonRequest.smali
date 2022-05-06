.class public abstract Lcom/ydnetwork/net/toolbox/JsonRequest;
.super Lcom/ydnetwork/net/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ydnetwork/net/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/ydnetwork/net/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ydnetwork/net/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mRequestBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ydnetwork/net/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

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
            "<TT;>;",
            "Lcom/ydnetwork/net/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcom/ydnetwork/net/Request;-><init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$ErrorListener;)V

    iput-object p4, p0, Lcom/ydnetwork/net/toolbox/JsonRequest;->mListener:Lcom/ydnetwork/net/Response$Listener;

    iput-object p3, p0, Lcom/ydnetwork/net/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ydnetwork/net/Response$Listener",
            "<TT;>;",
            "Lcom/ydnetwork/net/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ydnetwork/net/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/JsonRequest;->mListener:Lcom/ydnetwork/net/Response$Listener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ydnetwork/net/toolbox/JsonRequest;->mListener:Lcom/ydnetwork/net/Response$Listener;

    invoke-interface {v0, p1}, Lcom/ydnetwork/net/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public getBody()[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/ydnetwork/net/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_5

    :catch_f
    move-exception v1

    const-string v1, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ydnetwork/net/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "utf-8"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ydnetwork/net/VolleyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public getBodyContentType()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/ydnetwork/net/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBody()[B
    .registers 2

    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/JsonRequest;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/ydnetwork/net/toolbox/JsonRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinish()V
    .registers 2

    invoke-super {p0}, Lcom/ydnetwork/net/Request;->onFinish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ydnetwork/net/toolbox/JsonRequest;->mListener:Lcom/ydnetwork/net/Response$Listener;

    return-void
.end method

.method protected abstract parseNetworkResponse(Lcom/ydnetwork/net/NetworkResponse;)Lcom/ydnetwork/net/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/NetworkResponse;",
            ")",
            "Lcom/ydnetwork/net/Response",
            "<TT;>;"
        }
    .end annotation
.end method
