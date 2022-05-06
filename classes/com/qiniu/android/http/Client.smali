.class public final Lcom/qiniu/android/http/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/Client$IpTag;
    }
.end annotation


# static fields
.field public static final ContentTypeHeader:Ljava/lang/String; = "Content-Type"

.field public static final DefaultMime:Ljava/lang/String; = "application/octet-stream"

.field public static final FormMime:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final JsonMime:Ljava/lang/String; = "application/json"


# instance fields
.field private final converter:Lcom/qiniu/android/http/UrlConverter;

.field private final httpClient:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 43
    const/16 v2, 0xa

    const/16 v3, 0x1e

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/http/Client;-><init>(Lcom/qiniu/android/http/Proxy;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V
    .registers 10
    .param p1, "proxy"    # Lcom/qiniu/android/http/Proxy;
    .param p2, "connectTimeout"    # I
    .param p3, "responseTimeout"    # I
    .param p4, "converter"    # Lcom/qiniu/android/http/UrlConverter;
    .param p5, "dns"    # Lcom/qiniu/android/dns/DnsManager;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p4, p0, Lcom/qiniu/android/http/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    .line 48
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/Client;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 50
    if-eqz p1, :cond_17

    .line 51
    iget-object v0, p0, Lcom/qiniu/android/http/Client;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {p1}, Lcom/qiniu/android/http/Proxy;->toSystemProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/squareup/okhttp/OkHttpClient;

    .line 53
    :cond_17
    if-eqz p5, :cond_23

    .line 54
    iget-object v0, p0, Lcom/qiniu/android/http/Client;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v1, Lcom/qiniu/android/http/Client$1;

    invoke-direct {v1, p0, p5}, Lcom/qiniu/android/http/Client$1;-><init>(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/dns/DnsManager;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/squareup/okhttp/OkHttpClient;

    .line 73
    :cond_23
    iget-object v0, p0, Lcom/qiniu/android/http/Client;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/qiniu/android/http/Client$2;

    invoke-direct {v1, p0}, Lcom/qiniu/android/http/Client$2;-><init>(Lcom/qiniu/android/http/Client;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/qiniu/android/http/Client;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 92
    iget-object v0, p0, Lcom/qiniu/android/http/Client;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    int-to-long v2, p3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 93
    iget-object v0, p0, Lcom/qiniu/android/http/Client;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/Client;Lcom/squareup/okhttp/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V
    .registers 7
    .param p0, "x0"    # Lcom/qiniu/android/http/Client;
    .param p1, "x1"    # Lcom/squareup/okhttp/Response;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Lcom/qiniu/android/http/CompletionHandler;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/qiniu/android/http/Client;->onRet(Lcom/squareup/okhttp/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V

    return-void
.end method

.method private asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fields"    # Lcom/qiniu/android/utils/StringMap;
    .param p3, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "file"    # Lcom/squareup/okhttp/RequestBody;
    .param p6, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p7, "cancellationHandler"    # Lcom/qiniu/android/http/CancellationHandler;

    .prologue
    .line 233
    iget-object v4, p0, Lcom/qiniu/android/http/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v4, :cond_a

    .line 234
    iget-object v4, p0, Lcom/qiniu/android/http/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    invoke-interface {v4, p1}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    :cond_a
    new-instance v2, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v2}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    .line 237
    .local v2, "mb":Lcom/squareup/okhttp/MultipartBuilder;
    const-string v4, "file"

    invoke-virtual {v2, v4, p4, p5}, Lcom/squareup/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 239
    new-instance v4, Lcom/qiniu/android/http/Client$6;

    invoke-direct {v4, p0, v2}, Lcom/qiniu/android/http/Client$6;-><init>(Lcom/qiniu/android/http/Client;Lcom/squareup/okhttp/MultipartBuilder;)V

    invoke-virtual {p2, v4}, Lcom/qiniu/android/utils/StringMap;->forEach(Lcom/qiniu/android/utils/StringMap$Consumer;)V

    .line 245
    const-string v4, "multipart/form-data"

    invoke-static {v4}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 246
    invoke-virtual {v2}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 247
    .local v0, "body":Lcom/squareup/okhttp/RequestBody;
    if-eqz p3, :cond_31

    .line 248
    new-instance v1, Lcom/qiniu/android/http/CountingRequestBody;

    invoke-direct {v1, v0, p3, p7}, Lcom/qiniu/android/http/CountingRequestBody;-><init>(Lcom/squareup/okhttp/RequestBody;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .end local v0    # "body":Lcom/squareup/okhttp/RequestBody;
    .local v1, "body":Lcom/squareup/okhttp/RequestBody;
    move-object v0, v1

    .line 250
    .end local v1    # "body":Lcom/squareup/okhttp/RequestBody;
    .restart local v0    # "body":Lcom/squareup/okhttp/RequestBody;
    :cond_31
    new-instance v4, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 251
    .local v3, "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p6}, Lcom/qiniu/android/http/Client;->asyncSend(Lcom/squareup/okhttp/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/CompletionHandler;)V

    .line 252
    return-void
.end method

.method private static buildJsonResp([B)Lorg/json/JSONObject;
    .registers 3
    .param p0, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 122
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static ctype(Lcom/squareup/okhttp/Response;)Ljava/lang/String;
    .registers 4
    .param p0, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 114
    .local v0, "mediaType":Lcom/squareup/okhttp/MediaType;
    if-nez v0, :cond_d

    .line 115
    const-string v1, ""

    .line 117
    :goto_c
    return-object v1

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/okhttp/MediaType;->type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/squareup/okhttp/MediaType;->subtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method private onRet(Lcom/squareup/okhttp/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V
    .registers 31
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "complete"    # Lcom/qiniu/android/http/CompletionHandler;

    .prologue
    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v6

    .line 257
    .local v6, "code":I
    const-string v8, "X-Reqid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "reqId":Ljava/lang/String;
    if-nez v7, :cond_86

    const/4 v7, 0x0

    .line 259
    :goto_f
    const/4 v4, 0x0

    .line 260
    .local v4, "body":[B
    const/16 v18, 0x0

    .line 262
    .local v18, "error":Ljava/lang/String;
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/ResponseBody;->bytes()[B
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_19} :catch_8b

    move-result-object v4

    .line 266
    :goto_1a
    const/16 v21, 0x0

    .line 267
    .local v21, "json":Lorg/json/JSONObject;
    invoke-static/range {p1 .. p1}, Lcom/qiniu/android/http/Client;->ctype(Lcom/squareup/okhttp/Response;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "application/json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9f

    if-eqz v4, :cond_9f

    .line 269
    :try_start_2a
    invoke-static {v4}, Lcom/qiniu/android/http/Client;->buildJsonResp([B)Lorg/json/JSONObject;

    move-result-object v21

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_49

    .line 271
    new-instance v20, Ljava/lang/String;

    const-string v8, "utf-8"

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 272
    .local v20, "err":Ljava/lang/String;
    const-string v8, "error"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_48} :catch_91

    move-result-object v18

    .line 283
    .end local v20    # "err":Ljava/lang/String;
    :cond_49
    :goto_49
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v23

    .line 284
    .local v23, "u":Ljava/net/URL;
    new-instance v5, Lcom/qiniu/android/http/ResponseInfo;

    const-string v8, "X-Log"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/qiniu/android/http/Client;->via(Lcom/squareup/okhttp/Response;)Ljava/lang/String;

    move-result-object v9

    .line 285
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getPort()I

    move-result v13

    move-wide/from16 v0, p3

    long-to-double v14, v0

    const-wide/16 v16, 0x0

    move-object/from16 v12, p2

    invoke-direct/range {v5 .. v18}, Lcom/qiniu/android/http/ResponseInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    .line 286
    .local v5, "info":Lcom/qiniu/android/http/ResponseInfo;
    move-object/from16 v22, v21

    .line 287
    .local v22, "json2":Lorg/json/JSONObject;
    new-instance v8, Lcom/qiniu/android/http/Client$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v22

    invoke-direct {v8, v0, v1, v5, v2}, Lcom/qiniu/android/http/Client$7;-><init>(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    invoke-static {v8}, Lcom/qiniu/android/utils/AsyncRun;->run(Ljava/lang/Runnable;)V

    .line 294
    return-void

    .line 258
    .end local v4    # "body":[B
    .end local v5    # "info":Lcom/qiniu/android/http/ResponseInfo;
    .end local v18    # "error":Ljava/lang/String;
    .end local v21    # "json":Lorg/json/JSONObject;
    .end local v22    # "json2":Lorg/json/JSONObject;
    .end local v23    # "u":Ljava/net/URL;
    :cond_86
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    .line 263
    .restart local v4    # "body":[B
    .restart local v18    # "error":Ljava/lang/String;
    :catch_8b
    move-exception v19

    .line 264
    .local v19, "e":Ljava/io/IOException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    goto :goto_1a

    .line 274
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v21    # "json":Lorg/json/JSONObject;
    :catch_91
    move-exception v19

    .line 275
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v8

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_49

    .line 276
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    goto :goto_49

    .line 280
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_9f
    new-instance v18, Ljava/lang/String;

    .end local v18    # "error":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .restart local v18    # "error":Ljava/lang/String;
    goto :goto_49
.end method

.method private static via(Lcom/squareup/okhttp/Response;)Ljava/lang/String;
    .registers 5
    .param p0, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 98
    const-string v2, "X-Via"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "via":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object v1, v0

    .line 109
    .end local v0    # "via":Ljava/lang/String;
    .local v1, "via":Ljava/lang/String;
    :goto_11
    return-object v1

    .line 102
    .end local v1    # "via":Ljava/lang/String;
    .restart local v0    # "via":Ljava/lang/String;
    :cond_12
    const-string v2, "X-Px"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object v1, v0

    .line 103
    .end local v0    # "via":Ljava/lang/String;
    .restart local v1    # "via":Ljava/lang/String;
    goto :goto_11

    .line 106
    .end local v1    # "via":Ljava/lang/String;
    .restart local v0    # "via":Ljava/lang/String;
    :cond_24
    const-string v2, "Fw-Via"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    move-object v1, v0

    .line 107
    .end local v0    # "via":Ljava/lang/String;
    .restart local v1    # "via":Ljava/lang/String;
    goto :goto_11

    .end local v1    # "via":Ljava/lang/String;
    .restart local v0    # "via":Ljava/lang/String;
    :cond_36
    move-object v1, v0

    .line 109
    .end local v0    # "via":Ljava/lang/String;
    .restart local v1    # "via":Ljava/lang/String;
    goto :goto_11
.end method


# virtual methods
.method public asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/http/PostArgs;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .registers 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/qiniu/android/http/PostArgs;
    .param p3, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p4, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p5, "c"    # Lcom/qiniu/android/http/CancellationHandler;

    .prologue
    .line 218
    iget-object v0, p2, Lcom/qiniu/android/http/PostArgs;->file:Ljava/io/File;

    if-eqz v0, :cond_1d

    .line 219
    iget-object v0, p2, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    iget-object v1, p2, Lcom/qiniu/android/http/PostArgs;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v5

    .line 223
    .local v5, "file":Lcom/squareup/okhttp/RequestBody;
    :goto_10
    iget-object v2, p2, Lcom/qiniu/android/http/PostArgs;->params:Lcom/qiniu/android/utils/StringMap;

    iget-object v4, p2, Lcom/qiniu/android/http/PostArgs;->fileName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/http/Client;->asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .line 224
    return-void

    .line 221
    .end local v5    # "file":Lcom/squareup/okhttp/RequestBody;
    :cond_1d
    iget-object v0, p2, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    iget-object v1, p2, Lcom/qiniu/android/http/PostArgs;->data:[B

    invoke-static {v0, v1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v5

    .restart local v5    # "file":Lcom/squareup/okhttp/RequestBody;
    goto :goto_10
.end method

.method public asyncPost(Ljava/lang/String;[BIILcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "headers"    # Lcom/qiniu/android/utils/StringMap;
    .param p6, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p7, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p8, "c"    # Lcom/qiniu/android/http/CancellationHandler;

    .prologue
    .line 193
    iget-object v4, p0, Lcom/qiniu/android/http/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v4, :cond_a

    .line 194
    iget-object v4, p0, Lcom/qiniu/android/http/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    invoke-interface {v4, p1}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 198
    :cond_a
    if-eqz p2, :cond_32

    array-length v4, p2

    if-lez v4, :cond_32

    .line 199
    const-string v4, "application/octet-stream"

    invoke-static {v4}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v3

    .line 200
    .local v3, "t":Lcom/squareup/okhttp/MediaType;
    invoke-static {v3, p2, p3, p4}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[BII)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .local v0, "rbody":Lcom/squareup/okhttp/RequestBody;
    move-object v1, v0

    .line 204
    .end local v0    # "rbody":Lcom/squareup/okhttp/RequestBody;
    .end local v3    # "t":Lcom/squareup/okhttp/MediaType;
    .local v1, "rbody":Lcom/squareup/okhttp/RequestBody;
    :goto_1a
    if-eqz p6, :cond_3c

    .line 205
    new-instance v0, Lcom/qiniu/android/http/CountingRequestBody;

    invoke-direct {v0, v1, p6, p8}, Lcom/qiniu/android/http/CountingRequestBody;-><init>(Lcom/squareup/okhttp/RequestBody;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .line 208
    .end local v1    # "rbody":Lcom/squareup/okhttp/RequestBody;
    .restart local v0    # "rbody":Lcom/squareup/okhttp/RequestBody;
    :goto_21
    new-instance v4, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    .line 209
    .local v2, "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    invoke-virtual {p0, v2, p5, p7}, Lcom/qiniu/android/http/Client;->asyncSend(Lcom/squareup/okhttp/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/CompletionHandler;)V

    .line 210
    return-void

    .line 202
    .end local v0    # "rbody":Lcom/squareup/okhttp/RequestBody;
    .end local v2    # "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    :cond_32
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-static {v4, v5}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .restart local v0    # "rbody":Lcom/squareup/okhttp/RequestBody;
    move-object v1, v0

    .end local v0    # "rbody":Lcom/squareup/okhttp/RequestBody;
    .restart local v1    # "rbody":Lcom/squareup/okhttp/RequestBody;
    goto :goto_1a

    :cond_3c
    move-object v0, v1

    .end local v1    # "rbody":Lcom/squareup/okhttp/RequestBody;
    .restart local v0    # "rbody":Lcom/squareup/okhttp/RequestBody;
    goto :goto_21
.end method

.method public asyncPost(Ljava/lang/String;[BLcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .param p3, "headers"    # Lcom/qiniu/android/utils/StringMap;
    .param p4, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p5, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p6, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 187
    const/4 v3, 0x0

    array-length v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/qiniu/android/http/Client;->asyncPost(Ljava/lang/String;[BIILcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .line 188
    return-void
.end method

.method public asyncSend(Lcom/squareup/okhttp/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/CompletionHandler;)V
    .registers 10
    .param p1, "requestBuilder"    # Lcom/squareup/okhttp/Request$Builder;
    .param p2, "headers"    # Lcom/qiniu/android/utils/StringMap;
    .param p3, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;

    .prologue
    .line 126
    if-eqz p2, :cond_a

    .line 127
    new-instance v4, Lcom/qiniu/android/http/Client$3;

    invoke-direct {v4, p0, p1}, Lcom/qiniu/android/http/Client$3;-><init>(Lcom/qiniu/android/http/Client;Lcom/squareup/okhttp/Request$Builder;)V

    invoke-virtual {p2, v4}, Lcom/qiniu/android/utils/StringMap;->forEach(Lcom/qiniu/android/utils/StringMap$Consumer;)V

    .line 135
    :cond_a
    new-instance v0, Lcom/qiniu/android/http/Client$4;

    invoke-direct {v0, p0, p3}, Lcom/qiniu/android/http/Client$4;-><init>(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/http/CompletionHandler;)V

    .line 147
    .local v0, "complete":Lcom/qiniu/android/http/CompletionHandler;
    const-string v4, "User-Agent"

    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qiniu/android/http/UserAgent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 149
    .local v2, "start":J
    new-instance v1, Lcom/qiniu/android/http/Client$IpTag;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/qiniu/android/http/Client$IpTag;-><init>(Lcom/qiniu/android/http/Client$1;)V

    .line 150
    .local v1, "tag":Lcom/qiniu/android/http/Client$IpTag;
    iget-object v4, p0, Lcom/qiniu/android/http/Client;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Request$Builder;->tag(Ljava/lang/Object;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v4

    new-instance v5, Lcom/qiniu/android/http/Client$5;

    invoke-direct {v5, p0, v2, v3, v0}, Lcom/qiniu/android/http/Client$5;-><init>(Lcom/qiniu/android/http/Client;JLcom/qiniu/android/http/CompletionHandler;)V

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    .line 182
    return-void
.end method
