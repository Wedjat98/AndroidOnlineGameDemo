.class public Lokhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lokhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lokhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
    .registers 14
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lokhttp3/Request;
    .param p4, "cacheResponse"    # Lokhttp3/Response;

    .prologue
    const/4 v8, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    .line 140
    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    .line 141
    iput-object p3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    .line 142
    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    .line 144
    if-eqz p4, :cond_7a

    .line 145
    invoke-virtual {p4}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 146
    invoke-virtual {p4}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 147
    invoke-virtual {p4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 148
    .local v1, "headers":Lokhttp3/Headers;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_23
    if-ge v2, v3, :cond_7a

    .line 149
    invoke-virtual {v1, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 152
    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 153
    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 148
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 154
    :cond_40
    const-string v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 155
    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_3d

    .line 156
    :cond_4f
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 157
    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 158
    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_3d

    .line 159
    :cond_60
    const-string v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 160
    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_3d

    .line 161
    :cond_6b
    const-string v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 162
    invoke-static {v4, v8}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_3d

    .line 166
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lokhttp3/Headers;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_7a
    return-void
.end method

.method private cacheResponseAge()J
    .registers 13

    .prologue
    const-wide/16 v0, 0x0

    .line 296
    iget-object v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_13

    iget-wide v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v10, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 297
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 299
    .local v0, "apparentReceivedAge":J
    :cond_13
    iget v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_35

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v10, v9

    .line 300
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 302
    .local v2, "receivedAge":J
    :goto_25
    iget-wide v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v10, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 303
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iget-wide v10, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long v4, v8, v10

    .line 304
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_35
    move-wide v2, v0

    .line 300
    goto :goto_25
.end method

.method private computeFreshnessLifetime()J
    .registers 11

    .prologue
    const-wide/16 v6, 0x0

    .line 267
    iget-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    .line 268
    .local v2, "responseCaching":Lokhttp3/CacheControl;
    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1b

    .line 269
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 288
    :cond_1a
    :goto_1a
    return-wide v6

    .line 270
    :cond_1b
    iget-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v3, :cond_3c

    .line 271
    iget-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 272
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 274
    .local v4, "servedMillis":J
    :goto_29
    iget-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 275
    .local v0, "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_3a

    .end local v0    # "delta":J
    :goto_35
    move-wide v6, v0

    goto :goto_1a

    .line 272
    .end local v4    # "servedMillis":J
    :cond_37
    iget-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_29

    .restart local v0    # "delta":J
    .restart local v4    # "servedMillis":J
    :cond_3a
    move-wide v0, v6

    .line 275
    goto :goto_35

    .line 276
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_3c
    iget-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    .line 277
    invoke-virtual {v3}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 282
    iget-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_6b

    iget-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 283
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 285
    .restart local v4    # "servedMillis":J
    :goto_5a
    iget-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 286
    .restart local v0    # "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_1a

    const-wide/16 v6, 0xa

    div-long v6, v0, v6

    goto :goto_1a

    .line 283
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_6b
    iget-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_5a
.end method

.method private getCandidate()Lokhttp3/internal/cache/CacheStrategy;
    .registers 27

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v21, v0

    if-nez v21, :cond_18

    .line 186
    new-instance v21, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/cache/CacheStrategy$1;)V

    .line 259
    :goto_17
    return-object v21

    .line 190
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Request;->isHttps()Z

    move-result v21

    if-eqz v21, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v21

    if-nez v21, :cond_40

    .line 191
    new-instance v21, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto :goto_17

    .line 197
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v21

    if-nez v21, :cond_62

    .line 198
    new-instance v21, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto :goto_17

    .line 201
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v11

    .line 202
    .local v11, "requestCaching":Lokhttp3/CacheControl;
    invoke-virtual {v11}, Lokhttp3/CacheControl;->noCache()Z

    move-result v21

    if-nez v21, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lokhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lokhttp3/Request;)Z

    move-result v21

    if-eqz v21, :cond_8e

    .line 203
    :cond_7e
    new-instance v21, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto :goto_17

    .line 206
    :cond_8e
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v4

    .line 207
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v12

    .line 209
    .local v12, "freshMillis":J
    invoke-virtual {v11}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b7

    .line 210
    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 213
    :cond_b7
    const-wide/16 v16, 0x0

    .line 214
    .local v16, "minFreshMillis":J
    invoke-virtual {v11}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d4

    .line 215
    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    .line 218
    :cond_d4
    const-wide/16 v14, 0x0

    .line 219
    .local v14, "maxStaleMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v20

    .line 220
    .local v20, "responseCaching":Lokhttp3/CacheControl;
    invoke-virtual/range {v20 .. v20}, Lokhttp3/CacheControl;->mustRevalidate()Z

    move-result v21

    if-nez v21, :cond_101

    invoke-virtual {v11}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_101

    .line 221
    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 224
    :cond_101
    invoke-virtual/range {v20 .. v20}, Lokhttp3/CacheControl;->noCache()Z

    move-result v21

    if-nez v21, :cond_151

    add-long v22, v4, v16

    add-long v24, v12, v14

    cmp-long v21, v22, v24

    if-gez v21, :cond_151

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    .line 226
    .local v6, "builder":Lokhttp3/Response$Builder;
    add-long v22, v4, v16

    cmp-long v21, v22, v12

    if-ltz v21, :cond_12a

    .line 227
    const-string v21, "Warning"

    const-string v22, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 229
    :cond_12a
    const-wide/32 v18, 0x5265c00

    .line 230
    .local v18, "oneDayMillis":J
    cmp-long v21, v4, v18

    if-lez v21, :cond_142

    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v21

    if-eqz v21, :cond_142

    .line 231
    const-string v21, "Warning"

    const-string v22, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 233
    :cond_142
    new-instance v21, Lokhttp3/internal/cache/CacheStrategy;

    const/16 v22, 0x0

    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto/16 :goto_17

    .line 240
    .end local v6    # "builder":Lokhttp3/Response$Builder;
    .end local v18    # "oneDayMillis":J
    :cond_151
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_19f

    .line 241
    const-string v7, "If-None-Match"

    .line 242
    .local v7, "conditionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    .line 253
    .local v8, "conditionValue":Ljava/lang/String;
    :goto_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v10

    .line 254
    .local v10, "conditionalRequestHeaders":Lokhttp3/Headers$Builder;
    sget-object v21, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v7, v8}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v21

    .line 257
    invoke-virtual {v10}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v21

    .line 258
    invoke-virtual/range {v21 .. v21}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    .line 259
    .local v9, "conditionalRequest":Lokhttp3/Request;
    new-instance v21, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v9, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto/16 :goto_17

    .line 243
    .end local v7    # "conditionName":Ljava/lang/String;
    .end local v8    # "conditionValue":Ljava/lang/String;
    .end local v9    # "conditionalRequest":Lokhttp3/Request;
    .end local v10    # "conditionalRequestHeaders":Lokhttp3/Headers$Builder;
    :cond_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1ae

    .line 244
    const-string v7, "If-Modified-Since"

    .line 245
    .restart local v7    # "conditionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    .restart local v8    # "conditionValue":Ljava/lang/String;
    goto :goto_15f

    .line 246
    .end local v7    # "conditionName":Ljava/lang/String;
    .end local v8    # "conditionValue":Ljava/lang/String;
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1bd

    .line 247
    const-string v7, "If-Modified-Since"

    .line 248
    .restart local v7    # "conditionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .restart local v8    # "conditionValue":Ljava/lang/String;
    goto :goto_15f

    .line 250
    .end local v7    # "conditionName":Ljava/lang/String;
    .end local v8    # "conditionValue":Ljava/lang/String;
    :cond_1bd
    new-instance v21, Lokhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto/16 :goto_17
.end method

.method private static hasConditions(Lokhttp3/Request;)Z
    .registers 2
    .param p0, "request"    # Lokhttp3/Request;

    .prologue
    .line 321
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public get()Lokhttp3/internal/cache/CacheStrategy;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->getCandidate()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v0

    .line 174
    .local v0, "candidate":Lokhttp3/internal/cache/CacheStrategy;
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 176
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    .end local v0    # "candidate":Lokhttp3/internal/cache/CacheStrategy;
    invoke-direct {v0, v2, v2, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/cache/CacheStrategy$1;)V

    .line 179
    :cond_1a
    return-object v0
.end method
