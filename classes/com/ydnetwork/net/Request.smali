.class public abstract Lcom/ydnetwork/net/Request;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ydnetwork/net/Request$Priority;,
        Lcom/ydnetwork/net/Request$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ydnetwork/net/Request",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static sCounter:J


# instance fields
.field private mCacheEntry:Lcom/ydnetwork/net/Cache$Entry;

.field private mCanceled:Z

.field private final mDefaultTrafficStatsTag:I

.field private mErrorListener:Lcom/ydnetwork/net/Response$ErrorListener;

.field private final mEventLog:Lcom/ydnetwork/net/VolleyLog$MarkerLog;

.field private mIdentifier:Ljava/lang/String;

.field private final mMethod:I

.field private mRedirectUrl:Ljava/lang/String;

.field private mRequestQueue:Lcom/ydnetwork/net/RequestQueue;

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lcom/ydnetwork/net/RetryPolicy;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$ErrorListener;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/ydnetwork/net/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_34

    new-instance v0, Lcom/ydnetwork/net/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcom/ydnetwork/net/VolleyLog$MarkerLog;-><init>()V

    :goto_e
    iput-object v0, p0, Lcom/ydnetwork/net/Request;->mEventLog:Lcom/ydnetwork/net/VolleyLog$MarkerLog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ydnetwork/net/Request;->mShouldCache:Z

    iput-boolean v2, p0, Lcom/ydnetwork/net/Request;->mCanceled:Z

    iput-boolean v2, p0, Lcom/ydnetwork/net/Request;->mResponseDelivered:Z

    iput-object v1, p0, Lcom/ydnetwork/net/Request;->mCacheEntry:Lcom/ydnetwork/net/Cache$Entry;

    iput p1, p0, Lcom/ydnetwork/net/Request;->mMethod:I

    iput-object p2, p0, Lcom/ydnetwork/net/Request;->mUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ydnetwork/net/Request;->createIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ydnetwork/net/Request;->mIdentifier:Ljava/lang/String;

    iput-object p3, p0, Lcom/ydnetwork/net/Request;->mErrorListener:Lcom/ydnetwork/net/Response$ErrorListener;

    new-instance v0, Lcom/ydnetwork/net/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/ydnetwork/net/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ydnetwork/net/Request;->setRetryPolicy(Lcom/ydnetwork/net/RetryPolicy;)Lcom/ydnetwork/net/Request;

    invoke-static {p2}, Lcom/ydnetwork/net/Request;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ydnetwork/net/Request;->mDefaultTrafficStatsTag:I

    return-void

    :cond_34
    move-object v0, v1

    goto :goto_e
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ydnetwork/net/Response$ErrorListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/ydnetwork/net/Request;-><init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$ErrorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ydnetwork/net/Request;)Lcom/ydnetwork/net/VolleyLog$MarkerLog;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mEventLog:Lcom/ydnetwork/net/VolleyLog$MarkerLog;

    return-object v0
.end method

.method private static createIdentifier(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/ydnetwork/net/Request;->sCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/ydnetwork/net/Request;->sCounter:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ydnetwork/net/InternalUtils;->sha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_d

    :catch_3e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_58
    :try_start_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_58 .. :try_end_5f} :catch_3e

    move-result-object v0

    return-object v0
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/ydnetwork/net/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mEventLog:Lcom/ydnetwork/net/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/ydnetwork/net/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ydnetwork/net/Request;->mCanceled:Z

    return-void
.end method

.method public compareTo(Lcom/ydnetwork/net/Request;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Request",
            "<TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getPriority()Lcom/ydnetwork/net/Request$Priority;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ydnetwork/net/Request;->getPriority()Lcom/ydnetwork/net/Request$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/ydnetwork/net/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_17
    return v0

    :cond_18
    invoke-virtual {v1}, Lcom/ydnetwork/net/Request$Priority;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/ydnetwork/net/Request$Priority;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_17
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/ydnetwork/net/Request;

    invoke-virtual {p0, p1}, Lcom/ydnetwork/net/Request;->compareTo(Lcom/ydnetwork/net/Request;)I

    move-result v0

    return v0
.end method

.method public deliverError(Lcom/ydnetwork/net/VolleyError;)V
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mErrorListener:Lcom/ydnetwork/net/Response$ErrorListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mErrorListener:Lcom/ydnetwork/net/Response$ErrorListener;

    invoke-interface {v0, p1}, Lcom/ydnetwork/net/Response$ErrorListener;->onErrorResponse(Lcom/ydnetwork/net/VolleyError;)V

    :cond_9
    return-void
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finish(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mRequestQueue:Lcom/ydnetwork/net/RequestQueue;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mRequestQueue:Lcom/ydnetwork/net/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/ydnetwork/net/RequestQueue;->finish(Lcom/ydnetwork/net/Request;)V

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->onFinish()V

    :cond_c
    sget-boolean v0, Lcom/ydnetwork/net/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_33

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_34

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/ydnetwork/net/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/ydnetwork/net/Request$1;-><init>(Lcom/ydnetwork/net/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget-object v2, p0, Lcom/ydnetwork/net/Request;->mEventLog:Lcom/ydnetwork/net/VolleyLog$MarkerLog;

    invoke-virtual {v2, p1, v0, v1}, Lcom/ydnetwork/net/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mEventLog:Lcom/ydnetwork/net/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ydnetwork/net/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    goto :goto_33
.end method

.method public getBody()[B
    .registers 3

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ydnetwork/net/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getBodyContentType()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/ydnetwork/net/Cache$Entry;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mCacheEntry:Lcom/ydnetwork/net/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ydnetwork/net/Request;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/Request;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorListener()Lcom/ydnetwork/net/Response$ErrorListener;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mErrorListener:Lcom/ydnetwork/net/Response$ErrorListener;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    iget v0, p0, Lcom/ydnetwork/net/Request;->mMethod:I

    return v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getPostParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ydnetwork/net/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/ydnetwork/net/Request$Priority;
    .registers 2

    sget-object v0, Lcom/ydnetwork/net/Request$Priority;->NORMAL:Lcom/ydnetwork/net/Request$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/ydnetwork/net/RetryPolicy;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mRetryPolicy:Lcom/ydnetwork/net/RetryPolicy;

    return-object v0
.end method

.method public final getSequence()I
    .registers 3

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mSequence:Ljava/lang/Integer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mRetryPolicy:Lcom/ydnetwork/net/RetryPolicy;

    invoke-interface {v0}, Lcom/ydnetwork/net/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .registers 2

    iget v0, p0, Lcom/ydnetwork/net/Request;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mRedirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mRedirectUrl:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ydnetwork/net/Request;->mUrl:Ljava/lang/String;

    goto :goto_6
.end method

.method public hasHadResponseDelivered()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ydnetwork/net/Request;->mResponseDelivered:Z

    return v0
.end method

.method public isCanceled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ydnetwork/net/Request;->mCanceled:Z

    return v0
.end method

.method public markDelivered()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ydnetwork/net/Request;->mResponseDelivered:Z

    return-void
.end method

.method protected onFinish()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ydnetwork/net/Request;->mErrorListener:Lcom/ydnetwork/net/Response$ErrorListener;

    return-void
.end method

.method protected parseNetworkError(Lcom/ydnetwork/net/VolleyError;)Lcom/ydnetwork/net/VolleyError;
    .registers 2

    return-object p1
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

.method public setCacheEntry(Lcom/ydnetwork/net/Cache$Entry;)Lcom/ydnetwork/net/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/Cache$Entry;",
            ")",
            "Lcom/ydnetwork/net/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ydnetwork/net/Request;->mCacheEntry:Lcom/ydnetwork/net/Cache$Entry;

    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ydnetwork/net/Request;->mRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method public setRequestQueue(Lcom/ydnetwork/net/RequestQueue;)Lcom/ydnetwork/net/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/RequestQueue;",
            ")",
            "Lcom/ydnetwork/net/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ydnetwork/net/Request;->mRequestQueue:Lcom/ydnetwork/net/RequestQueue;

    return-object p0
.end method

.method public setRetryPolicy(Lcom/ydnetwork/net/RetryPolicy;)Lcom/ydnetwork/net/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ydnetwork/net/RetryPolicy;",
            ")",
            "Lcom/ydnetwork/net/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ydnetwork/net/Request;->mRetryPolicy:Lcom/ydnetwork/net/RetryPolicy;

    return-object p0
.end method

.method public final setSequence(I)Lcom/ydnetwork/net/Request;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ydnetwork/net/Request",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ydnetwork/net/Request;->mSequence:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/ydnetwork/net/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/ydnetwork/net/Request",
            "<*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/ydnetwork/net/Request;->mShouldCache:Z

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/ydnetwork/net/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ydnetwork/net/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ydnetwork/net/Request;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final shouldCache()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ydnetwork/net/Request;->mShouldCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/ydnetwork/net/Request;->mCanceled:Z

    if-eqz v0, :cond_5b

    const-string v0, "[X] "

    :goto_26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ydnetwork/net/Request;->getPriority()Lcom/ydnetwork/net/Request$Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ydnetwork/net/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5b
    const-string v0, "[ ] "

    goto :goto_26
.end method
