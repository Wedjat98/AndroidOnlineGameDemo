.class public Lcom/facebook/GraphResponse;
.super Ljava/lang/Object;
.source "GraphResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphResponse$PagingDirection;
    }
.end annotation


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field public static final SUCCESS_KEY:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/facebook/FacebookRequestError;

.field private final graphObject:Lorg/json/JSONObject;

.field private final graphObjectArray:Lorg/json/JSONArray;

.field private final rawResponse:Ljava/lang/String;

.field private final request:Lcom/facebook/GraphRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/facebook/GraphResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphResponse;->TAG:Ljava/lang/String;

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    .registers 11
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    const/4 v3, 0x0

    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 12
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "rawResponse"    # Ljava/lang/String;
    .param p4, "graphObjects"    # Lorg/json/JSONArray;

    .prologue
    const/4 v4, 0x0

    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 12
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "rawResponse"    # Ljava/lang/String;
    .param p4, "graphObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V
    .registers 7
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "rawResponse"    # Ljava/lang/String;
    .param p4, "graphObject"    # Lorg/json/JSONObject;
    .param p5, "graphObjects"    # Lorg/json/JSONArray;
    .param p6, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    .line 104
    iput-object p2, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    .line 105
    iput-object p3, p0, Lcom/facebook/GraphResponse;->rawResponse:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    .line 107
    iput-object p5, p0, Lcom/facebook/GraphResponse;->graphObjectArray:Lorg/json/JSONArray;

    .line 108
    iput-object p6, p0, Lcom/facebook/GraphResponse;->error:Lcom/facebook/FacebookRequestError;

    .line 109
    return-void
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .registers 9
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "error"    # Lcom/facebook/FacebookException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphRequest;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 454
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 455
    .local v3, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-lt v1, v0, :cond_d

    .line 462
    return-object v3

    .line 456
    :cond_d
    new-instance v2, Lcom/facebook/GraphResponse;

    .line 457
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/GraphRequest;

    .line 459
    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 456
    invoke-direct {v2, v4, p1, v5}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 460
    .local v2, "response":Lcom/facebook/GraphResponse;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method private static createResponseFromObject(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/GraphResponse;
    .registers 10
    .param p0, "request"    # Lcom/facebook/GraphRequest;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "originalResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 406
    instance-of v3, p2, Lorg/json/JSONObject;

    if-eqz v3, :cond_72

    move-object v2, p2

    .line 407
    check-cast v2, Lorg/json/JSONObject;

    .line 410
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v2, p3, p1}, Lcom/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 414
    .local v1, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v1, :cond_48

    .line 415
    sget-object v3, Lcom/facebook/GraphResponse;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v3

    const/16 v4, 0xbe

    if-ne v3, v4, :cond_34

    .line 417
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isCurrentAccessToken(Lcom/facebook/AccessToken;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 418
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v3

    const/16 v4, 0x1ed

    if-eq v3, v4, :cond_3a

    .line 419
    invoke-static {v5}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 424
    :cond_34
    :goto_34
    new-instance v3, Lcom/facebook/GraphResponse;

    invoke-direct {v3, p0, p1, v1}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 442
    .end local v1    # "error":Lcom/facebook/FacebookRequestError;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_39
    return-object v3

    .line 420
    .restart local v1    # "error":Lcom/facebook/FacebookRequestError;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_3a
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v3

    if-nez v3, :cond_34

    .line 421
    invoke-static {}, Lcom/facebook/AccessToken;->expireCurrentAccessToken()V

    goto :goto_34

    .line 429
    :cond_48
    const-string v3, "body"

    .line 430
    const-string v4, "FACEBOOK_NON_JSON_RESULT"

    .line 427
    invoke-static {v2, v3, v4}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "body":Ljava/lang/Object;
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_60

    .line 433
    new-instance v3, Lcom/facebook/GraphResponse;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "body":Ljava/lang/Object;
    invoke-direct {v3, p0, p1, v4, v0}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_39

    .line 434
    .restart local v0    # "body":Ljava/lang/Object;
    :cond_60
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_70

    .line 435
    new-instance v3, Lcom/facebook/GraphResponse;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "body":Ljava/lang/Object;
    invoke-direct {v3, p0, p1, v4, v0}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_39

    .line 438
    .restart local v0    # "body":Ljava/lang/Object;
    :cond_70
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 441
    .end local v0    # "body":Ljava/lang/Object;
    .end local v1    # "error":Lcom/facebook/FacebookRequestError;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_72
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, v3, :cond_80

    .line 442
    new-instance v3, Lcom/facebook/GraphResponse;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_39

    .line 444
    :cond_80
    new-instance v3, Lcom/facebook/FacebookException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got unexpected object type in response, class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 15
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 331
    .local v4, "numRequests":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    .local v9, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    move-object v6, p2

    .line 334
    .local v6, "originalResult":Ljava/lang/Object;
    const/4 v10, 0x1

    if-ne v4, v10, :cond_32

    .line 335
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/GraphRequest;

    .line 341
    .local v7, "request":Lcom/facebook/GraphRequest;
    :try_start_14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 342
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "body"

    invoke-virtual {v3, v10, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    if-eqz p0, :cond_47

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 344
    .local v8, "responseCode":I
    :goto_24
    const-string v10, "code"

    invoke-virtual {v3, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 346
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 347
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_31} :catch_4a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_31} :catch_59

    .line 350
    move-object p2, v2

    .line 366
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "request":Lcom/facebook/GraphRequest;
    .end local v8    # "responseCode":I
    .end local p2    # "object":Ljava/lang/Object;
    :cond_32
    :goto_32
    instance-of v10, p2, Lorg/json/JSONArray;

    if-eqz v10, :cond_3f

    move-object v10, p2

    check-cast v10, Lorg/json/JSONArray;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eq v10, v4, :cond_68

    .line 367
    :cond_3f
    new-instance v10, Lcom/facebook/FacebookException;

    const-string v11, "Unexpected number of results"

    invoke-direct {v10, v11}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 343
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "request":Lcom/facebook/GraphRequest;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_47
    const/16 v8, 0xc8

    goto :goto_24

    .line 351
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_4a
    move-exception v0

    .line 353
    .local v0, "e":Lorg/json/JSONException;
    new-instance v10, Lcom/facebook/GraphResponse;

    .line 356
    new-instance v11, Lcom/facebook/FacebookRequestError;

    invoke-direct {v11, p0, v0}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 353
    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 352
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 357
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_59
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/IOException;
    new-instance v10, Lcom/facebook/GraphResponse;

    .line 362
    new-instance v11, Lcom/facebook/FacebookRequestError;

    invoke-direct {v11, p0, v0}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 359
    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 358
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "request":Lcom/facebook/GraphRequest;
    .end local p2    # "object":Ljava/lang/Object;
    :cond_68
    move-object v2, p2

    .line 370
    check-cast v2, Lorg/json/JSONArray;

    .line 372
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_73

    .line 397
    return-object v9

    .line 373
    :cond_73
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/GraphRequest;

    .line 375
    .restart local v7    # "request":Lcom/facebook/GraphRequest;
    :try_start_79
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 377
    .local v5, "obj":Ljava/lang/Object;
    invoke-static {v7, p0, v5, v6}, Lcom/facebook/GraphResponse;->createResponseFromObject(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/GraphResponse;

    move-result-object v10

    .line 376
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_84} :catch_87
    .catch Lcom/facebook/FacebookException; {:try_start_79 .. :try_end_84} :catch_96

    .line 372
    .end local v5    # "obj":Ljava/lang/Object;
    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 382
    :catch_87
    move-exception v0

    .line 384
    .local v0, "e":Lorg/json/JSONException;
    new-instance v10, Lcom/facebook/GraphResponse;

    .line 387
    new-instance v11, Lcom/facebook/FacebookRequestError;

    invoke-direct {v11, p0, v0}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 384
    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 383
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 388
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_96
    move-exception v0

    .line 390
    .local v0, "e":Lcom/facebook/FacebookException;
    new-instance v10, Lcom/facebook/GraphResponse;

    .line 393
    new-instance v11, Lcom/facebook/FacebookRequestError;

    invoke-direct {v11, p0, v0}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 390
    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 389
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {p0}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "responseString":Ljava/lang/String;
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    const-string v2, "Response"

    .line 296
    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 297
    aput-object v0, v4, v5

    .line 295
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-static {v0, p1, p2}, Lcom/facebook/GraphResponse;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 12
    .param p0, "responseString"    # Ljava/lang/String;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, "tokener":Lorg/json/JSONTokener;
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 310
    .local v1, "resultObject":Ljava/lang/Object;
    invoke-static {p1, p2, v1}, Lcom/facebook/GraphResponse;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 315
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    sget-object v3, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 316
    const-string v4, "Response"

    .line 317
    const-string v5, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 318
    invoke-virtual {p2}, Lcom/facebook/GraphRequestBatch;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 319
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 320
    aput-object v0, v6, v7

    .line 314
    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    return-object v0
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 10
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v2, 0x0

    .line 258
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_15

    .line 259
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 264
    :goto_d
    invoke-static {v2, p0, p1}, Lcom/facebook/GraphResponse;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    :try_end_10
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_10} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_32
    .catchall {:try_start_1 .. :try_end_10} :catchall_4f

    move-result-object v3

    .line 284
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 282
    :goto_14
    return-object v3

    .line 261
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_18
    .catch Lcom/facebook/FacebookException; {:try_start_15 .. :try_end_18} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_32
    .catchall {:try_start_15 .. :try_end_18} :catchall_4f

    move-result-object v2

    goto :goto_d

    .line 265
    :catch_1a
    move-exception v1

    .line 267
    .local v1, "facebookException":Lcom/facebook/FacebookException;
    :try_start_1b
    sget-object v3, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 268
    const-string v4, "Response"

    .line 269
    const-string v5, "Response <Error>: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 270
    aput-object v1, v6, v7

    .line 266
    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {p1, p0, v1}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_4f

    move-result-object v3

    .line 284
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_14

    .line 272
    .end local v1    # "facebookException":Lcom/facebook/FacebookException;
    :catch_32
    move-exception v0

    .line 278
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_33
    sget-object v3, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 279
    const-string v4, "Response"

    .line 280
    const-string v5, "Response <Error>: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 281
    aput-object v0, v6, v7

    .line 277
    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    new-instance v3, Lcom/facebook/FacebookException;

    invoke-direct {v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v3}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_4f

    move-result-object v3

    .line 284
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_14

    .line 283
    .end local v0    # "exception":Ljava/lang/Exception;
    :catchall_4f
    move-exception v3

    .line 284
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 285
    throw v3
.end method


# virtual methods
.method public final getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getError()Lcom/facebook/FacebookRequestError;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/GraphResponse;->error:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final getJSONArray()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/GraphResponse;->graphObjectArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final getJSONObject()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRawResponse()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/GraphResponse;->rawResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/facebook/GraphRequest;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    return-object v0
.end method

.method public getRequestForPagedResults(Lcom/facebook/GraphResponse$PagingDirection;)Lcom/facebook/GraphRequest;
    .registers 9
    .param p1, "direction"    # Lcom/facebook/GraphResponse$PagingDirection;

    .prologue
    const/4 v4, 0x0

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "link":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    if-eqz v5, :cond_1a

    .line 195
    iget-object v5, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    const-string v6, "paging"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 196
    .local v2, "pagingInfo":Lorg/json/JSONObject;
    if-eqz v2, :cond_1a

    .line 197
    sget-object v5, Lcom/facebook/GraphResponse$PagingDirection;->NEXT:Lcom/facebook/GraphResponse$PagingDirection;

    if-ne p1, v5, :cond_22

    .line 198
    const-string v5, "next"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .end local v2    # "pagingInfo":Lorg/json/JSONObject;
    :cond_1a
    :goto_1a
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    move-object v3, v4

    .line 221
    :goto_21
    return-object v3

    .line 200
    .restart local v2    # "pagingInfo":Lorg/json/JSONObject;
    :cond_22
    const-string v5, "previous"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    .line 208
    .end local v2    # "pagingInfo":Lorg/json/JSONObject;
    :cond_29
    if-eqz v1, :cond_39

    iget-object v5, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    move-object v3, v4

    .line 211
    goto :goto_21

    .line 216
    :cond_39
    :try_start_39
    new-instance v3, Lcom/facebook/GraphRequest;

    iget-object v5, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v5

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5, v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/net/URL;)V
    :try_end_49
    .catch Ljava/net/MalformedURLException; {:try_start_39 .. :try_end_49} :catch_4a

    .local v3, "pagingRequest":Lcom/facebook/GraphRequest;
    goto :goto_21

    .line 217
    .end local v3    # "pagingRequest":Lcom/facebook/GraphRequest;
    :catch_4a
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    move-object v3, v4

    .line 218
    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 232
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 233
    const-string v4, "%d"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 234
    iget-object v2, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    :goto_12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 231
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_57

    move-result-object v1

    .line 239
    .local v1, "responseCode":Ljava/lang/String;
    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    const-string v3, "{Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    const-string v3, " responseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    const-string v3, ", graphObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    iget-object v3, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 245
    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    iget-object v3, p0, Lcom/facebook/GraphResponse;->error:Lcom/facebook/FacebookRequestError;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    return-object v2

    .line 234
    .end local v1    # "responseCode":Ljava/lang/String;
    :cond_54
    const/16 v2, 0xc8

    goto :goto_12

    .line 235
    :catch_57
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "unknown"

    .restart local v1    # "responseCode":Ljava/lang/String;
    goto :goto_1c
.end method
