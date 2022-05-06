.class final Lcom/iflytek/cloud/thirdparty/Y;
.super Ljava/lang/Thread;


# instance fields
.field private a:I

.field private b:Lcom/iflytek/cloud/thirdparty/ab;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J

.field private l:[B

.field private m:Ljava/io/File;

.field private n:Lorg/apache/http/client/methods/HttpRequestBase;

.field private o:Lorg/apache/http/client/HttpClient;

.field private p:Lorg/apache/http/HttpHost;

.field private q:Lorg/apache/http/auth/Credentials;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/ab;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->g:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->h:I

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the OnHttpTransListener object can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    :cond_18
    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    const/4 v0, 0x0

    goto :goto_18
.end method

.method private b()V
    .registers 2

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/Y;->isAlive()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/Y;->start()V

    :goto_9
    return-void

    :cond_a
    const-string v0, "startRequest isAlive"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private c()I
    .registers 8

    const/16 v1, 0x4e20

    const/4 v6, 0x0

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v6}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    const-string v1, "Android/SpeechService"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->p:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_5c

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.route.default-proxy"

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/Y;->p:Lorg/apache/http/HttpHost;

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_5c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->q:Lorg/apache/http/auth/Credentials;

    if-eqz v0, :cond_6b

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/Y;->q:Lorg/apache/http/auth/Credentials;

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    :cond_6b
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    return v6
.end method

.method private d()I
    .registers 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/Y;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5b

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/Y;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/Y;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_58

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/Y;->j:Ljava/lang/String;

    if-eqz v2, :cond_20

    const-string v2, "If-Match"

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/Y;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/Y;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpClient RANGEbytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/Y;->k:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    :cond_58
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    :goto_5a
    return v0

    :cond_5b
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/Y;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_62
    iget v2, p0, Lcom/iflytek/cloud/thirdparty/Y;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_74

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/Y;->l:[B

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_71} :catch_93

    :goto_71
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_5a

    :cond_74
    :try_start_74
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/Y;->m:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/Y;->m:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    const-string v3, "application/x-gzip"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_92
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_92} :catch_93

    goto :goto_71

    :catch_93
    move-exception v0

    const/16 v0, 0x4e2a

    goto :goto_5a
.end method

.method private e()Z
    .registers 3

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->i:I

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->i:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/Y;->g:I

    if-ge v0, v1, :cond_19

    :try_start_c
    iget v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->h:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/Y;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_12} :catch_14

    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_12

    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_14
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;I)V
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/Y;->e:I

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/Y;->d:Ljava/lang/String;

    iput p5, p0, Lcom/iflytek/cloud/thirdparty/Y;->f:I

    iput-wide p2, p0, Lcom/iflytek/cloud/thirdparty/Y;->k:J

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/Y;->i:I

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/Y;->a:I

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/Y;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/Y;->b()V

    return-void
.end method

.method public run()V
    .registers 19

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v14, 0x0

    const/4 v11, -0x1

    :try_start_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->f:I

    new-array v15, v2, [B

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/iflytek/cloud/thirdparty/Y;->k:J

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/cloud/thirdparty/Y;->c()I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_187

    move-result v2

    if-eqz v2, :cond_66

    const-string v3, "HttpClients"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finally | mCancel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_42

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    if-eqz v3, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    :cond_58
    :try_start_58
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    if-eqz v3, :cond_3df

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-interface {v2}, Lcom/iflytek/cloud/thirdparty/ab;->d()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_65} :catch_3ea

    :goto_65
    return-void

    :cond_66
    :try_start_66
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/cloud/thirdparty/Y;->d()I
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_187

    move-result v2

    if-eqz v2, :cond_d0

    const-string v3, "HttpClients"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finally | mCancel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_97

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    if-eqz v3, :cond_ad

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    :cond_ad
    :try_start_ad
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b1} :catch_443

    if-eqz v3, :cond_3f6

    :try_start_b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b7} :catch_446

    :try_start_b7
    invoke-interface {v2}, Lcom/iflytek/cloud/thirdparty/ab;->d()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_65

    :catch_bb
    move-exception v2

    :goto_bc
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65

    :catch_c0
    move-exception v2

    const/16 v11, 0x4e23

    :try_start_c3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/cloud/thirdparty/Y;->e()Z

    move-result v2

    if-eqz v2, :cond_ef

    :cond_d0
    :goto_d0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z
    :try_end_d4
    .catchall {:try_start_c3 .. :try_end_d4} :catchall_187

    if-nez v2, :cond_ef

    :try_start_d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e1} :catch_c0
    .catchall {:try_start_d6 .. :try_end_e1} :catchall_187

    move-result-object v16

    :try_start_e2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    if-eqz v2, :cond_142

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_ef
    .catchall {:try_start_e2 .. :try_end_ef} :catchall_187

    :cond_ef
    :goto_ef
    const-string v2, "HttpClients"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finally | mCancel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_11a

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_11a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    if-eqz v2, :cond_130

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    :cond_130
    :try_start_130
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_134} :catch_437

    if-eqz v2, :cond_410

    :try_start_136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13a} :catch_43a

    :try_start_13a
    invoke-interface {v2}, Lcom/iflytek/cloud/thirdparty/ab;->d()V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_13d} :catch_13f

    goto/16 :goto_65

    :catch_13f
    move-exception v2

    goto/16 :goto_bc

    :cond_142
    :try_start_142
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1d7

    const/4 v2, 0x1

    :goto_14d
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_165

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_165

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_165

    const/16 v4, 0x133

    if-ne v3, v4, :cond_229

    :cond_165
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->a:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->a:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->a:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_1da

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const/16 v11, 0x4e23

    const-string v2, "request redirection overflow"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V
    :try_end_185
    .catchall {:try_start_142 .. :try_end_185} :catchall_187

    goto/16 :goto_ef

    :catchall_187
    move-exception v2

    :goto_188
    const-string v3, "HttpClients"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finally | mCancel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_1b3

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1b3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    if-eqz v3, :cond_1c9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->o:Lorg/apache/http/client/HttpClient;

    :cond_1c9
    :try_start_1c9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    if-eqz v3, :cond_3cb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-interface {v3}, Lcom/iflytek/cloud/thirdparty/ab;->d()V
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1d6} :catch_3c5

    :goto_1d6
    throw v2

    :cond_1d7
    const/4 v2, 0x0

    goto/16 :goto_14d

    :cond_1da
    :try_start_1da
    const-string v2, "Location"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1e1
    .catchall {:try_start_1da .. :try_end_1e1} :catchall_187

    move-result-object v2

    if-eqz v2, :cond_21e

    :try_start_1e4
    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/cloud/thirdparty/Y;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->d:Ljava/lang/String;
    :try_end_202
    .catch Ljava/net/URISyntaxException; {:try_start_1e4 .. :try_end_202} :catch_212
    .catchall {:try_start_1e4 .. :try_end_202} :catchall_187

    :try_start_202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/cloud/thirdparty/Y;->d()I

    move-result v6

    if-eqz v6, :cond_d0

    move v11, v6

    goto/16 :goto_ef

    :catch_212
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const/16 v11, 0x4e24

    goto/16 :goto_ef

    :cond_21e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const/16 v11, 0x4e24

    goto/16 :goto_ef

    :cond_229
    if-nez v2, :cond_22f

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_235

    :cond_22f
    if-eqz v2, :cond_246

    const/16 v2, 0xce

    if-eq v3, v2, :cond_246

    :cond_235
    add-int/lit16 v11, v3, 0x2ee0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/cloud/thirdparty/Y;->e()Z

    move-result v2

    if-eqz v2, :cond_ef

    goto/16 :goto_d0

    :cond_246
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const-string v3, "Content-Disposition"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_258

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    :cond_258
    const-string v3, "Content-Location"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_266

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    :cond_266
    const/4 v6, 0x0

    const-string v3, "Content-Type"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_291

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/cloud/thirdparty/Y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http Response Content-Type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    :cond_291
    const-string v3, "Content-Length"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_29f

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    :cond_29f
    const-string v3, "ETag"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_2ad

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    :cond_2ad
    const-wide/16 v4, 0x0

    if-eqz v2, :cond_2b5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_2b5
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_2bc

    add-long/2addr v4, v12

    :cond_2bc
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_2cd

    const/16 v11, 0x4e24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto/16 :goto_ef

    :cond_2cd
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    if-nez v2, :cond_2fa

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iflytek/cloud/thirdparty/Y;->d:Ljava/lang/String;

    invoke-interface/range {v3 .. v10}, Lcom/iflytek/cloud/thirdparty/ab;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    if-eqz v2, :cond_2ee

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_2ec
    .catchall {:try_start_202 .. :try_end_2ec} :catchall_187

    goto/16 :goto_ef

    :cond_2ee
    if-eqz v6, :cond_303

    :try_start_2f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_2f7
    .catchall {:try_start_2f0 .. :try_end_2f7} :catchall_44f

    move v11, v6

    goto/16 :goto_ef

    :cond_2fa
    :try_start_2fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_301
    .catchall {:try_start_2fa .. :try_end_301} :catchall_187

    goto/16 :goto_ef

    :cond_303
    const/4 v2, 0x0

    :try_start_304
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_30b
    .catch Ljava/io/IOException; {:try_start_304 .. :try_end_30b} :catch_392
    .catchall {:try_start_304 .. :try_end_30b} :catchall_3b4

    move-result-object v2

    :try_start_30c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    if-eqz v3, :cond_323

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_319
    .catch Ljava/io/IOException; {:try_start_30c .. :try_end_319} :catch_392
    .catchall {:try_start_30c .. :try_end_319} :catchall_453

    if-eqz v2, :cond_ef

    :try_start_31b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_31e
    .catch Ljava/io/IOException; {:try_start_31b .. :try_end_31e} :catch_320
    .catchall {:try_start_31b .. :try_end_31e} :catchall_187

    goto/16 :goto_ef

    :catch_320
    move-exception v2

    goto/16 :goto_ef

    :cond_323
    move-wide v6, v12

    :cond_324
    :try_start_324
    invoke-virtual {v2, v15}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    if-eqz v3, :cond_33c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_335
    .catch Ljava/io/IOException; {:try_start_324 .. :try_end_335} :catch_46d
    .catchall {:try_start_324 .. :try_end_335} :catchall_453

    if-eqz v2, :cond_ef

    :try_start_337
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33a
    .catch Ljava/io/IOException; {:try_start_337 .. :try_end_33a} :catch_320
    .catchall {:try_start_337 .. :try_end_33a} :catchall_187

    goto/16 :goto_ef

    :cond_33c
    const/4 v3, -0x1

    if-ne v8, v3, :cond_35c

    cmp-long v3, v6, v4

    if-eqz v3, :cond_354

    const/16 v4, 0x4e24

    :try_start_345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_34c
    .catch Ljava/io/IOException; {:try_start_345 .. :try_end_34c} :catch_46d
    .catchall {:try_start_345 .. :try_end_34c} :catchall_45c

    if-eqz v2, :cond_351

    :try_start_34e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_351
    .catch Ljava/io/IOException; {:try_start_34e .. :try_end_351} :catch_431
    .catchall {:try_start_34e .. :try_end_351} :catchall_3c1

    :cond_351
    :goto_351
    move v11, v4

    goto/16 :goto_ef

    :cond_354
    const/4 v11, 0x0

    if-eqz v2, :cond_ef

    :try_start_357
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_35a
    .catch Ljava/io/IOException; {:try_start_357 .. :try_end_35a} :catch_320
    .catchall {:try_start_357 .. :try_end_35a} :catchall_187

    goto/16 :goto_ef

    :cond_35c
    :try_start_35c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-interface {v3, v15, v8}, Lcom/iflytek/cloud/thirdparty/ab;->a([BI)I

    move-result v3

    if-nez v3, :cond_37c

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z

    if-eqz v3, :cond_324

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_375
    .catch Ljava/io/IOException; {:try_start_35c .. :try_end_375} :catch_46d
    .catchall {:try_start_35c .. :try_end_375} :catchall_453

    if-eqz v2, :cond_ef

    :try_start_377
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_37a
    .catch Ljava/io/IOException; {:try_start_377 .. :try_end_37a} :catch_320
    .catchall {:try_start_377 .. :try_end_37a} :catchall_187

    goto/16 :goto_ef

    :cond_37c
    :try_start_37c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/iflytek/cloud/thirdparty/Y;->c:Z
    :try_end_380
    .catch Ljava/io/IOException; {:try_start_37c .. :try_end_380} :catch_46d
    .catchall {:try_start_37c .. :try_end_380} :catchall_453

    if-nez v4, :cond_471

    move v4, v3

    :goto_383
    :try_start_383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_38a
    .catch Ljava/io/IOException; {:try_start_383 .. :try_end_38a} :catch_46d
    .catchall {:try_start_383 .. :try_end_38a} :catchall_45c

    if-eqz v2, :cond_38f

    :try_start_38c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_38f
    .catch Ljava/io/IOException; {:try_start_38c .. :try_end_38f} :catch_434
    .catchall {:try_start_38c .. :try_end_38f} :catchall_3c1

    :cond_38f
    :goto_38f
    move v11, v4

    goto/16 :goto_ef

    :catch_392
    move-exception v3

    move-wide v4, v12

    :goto_394
    const/16 v6, 0x4e23

    :try_start_396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->n:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/cloud/thirdparty/Y;->e()Z
    :try_end_3a0
    .catchall {:try_start_396 .. :try_end_3a0} :catchall_464

    move-result v3

    if-eqz v3, :cond_3ac

    if-eqz v2, :cond_3a8

    :try_start_3a5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3a8
    .catch Ljava/io/IOException; {:try_start_3a5 .. :try_end_3a8} :catch_42c
    .catchall {:try_start_3a5 .. :try_end_3a8} :catchall_44f

    :cond_3a8
    :goto_3a8
    move-wide v12, v4

    move v11, v6

    goto/16 :goto_d0

    :cond_3ac
    if-eqz v2, :cond_3b1

    :try_start_3ae
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3b1
    .catch Ljava/io/IOException; {:try_start_3ae .. :try_end_3b1} :catch_42f
    .catchall {:try_start_3ae .. :try_end_3b1} :catchall_44f

    :cond_3b1
    :goto_3b1
    move v11, v6

    goto/16 :goto_ef

    :catchall_3b4
    move-exception v3

    move v4, v11

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v3, v17

    :goto_3bb
    if-eqz v3, :cond_3c0

    :try_start_3bd
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3c0
    .catch Ljava/io/IOException; {:try_start_3bd .. :try_end_3c0} :catch_42a
    .catchall {:try_start_3bd .. :try_end_3c0} :catchall_3c1

    :cond_3c0
    :goto_3c0
    :try_start_3c0
    throw v2
    :try_end_3c1
    .catchall {:try_start_3c0 .. :try_end_3c1} :catchall_3c1

    :catchall_3c1
    move-exception v2

    move v11, v4

    goto/16 :goto_188

    :catch_3c5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1d6

    :cond_3cb
    if-nez v11, :cond_3d6

    :try_start_3cd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-interface {v3}, Lcom/iflytek/cloud/thirdparty/ab;->c()V

    goto/16 :goto_1d6

    :cond_3d6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-interface {v3, v11}, Lcom/iflytek/cloud/thirdparty/ab;->a(I)V
    :try_end_3dd
    .catch Ljava/lang/Exception; {:try_start_3cd .. :try_end_3dd} :catch_3c5

    goto/16 :goto_1d6

    :cond_3df
    if-nez v2, :cond_3ed

    :try_start_3e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-interface {v2}, Lcom/iflytek/cloud/thirdparty/ab;->c()V

    goto/16 :goto_65

    :catch_3ea
    move-exception v2

    goto/16 :goto_bc

    :cond_3ed
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-interface {v3, v2}, Lcom/iflytek/cloud/thirdparty/ab;->a(I)V
    :try_end_3f4
    .catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_3f4} :catch_3ea

    goto/16 :goto_65

    :cond_3f6
    if-nez v2, :cond_404

    :try_start_3f8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;
    :try_end_3fc
    .catch Ljava/lang/Exception; {:try_start_3f8 .. :try_end_3fc} :catch_449

    :try_start_3fc
    invoke-interface {v2}, Lcom/iflytek/cloud/thirdparty/ab;->c()V
    :try_end_3ff
    .catch Ljava/lang/Exception; {:try_start_3fc .. :try_end_3ff} :catch_401

    goto/16 :goto_65

    :catch_401
    move-exception v2

    goto/16 :goto_bc

    :cond_404
    :try_start_404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;
    :try_end_408
    .catch Ljava/lang/Exception; {:try_start_404 .. :try_end_408} :catch_44c

    :try_start_408
    invoke-interface {v3, v2}, Lcom/iflytek/cloud/thirdparty/ab;->a(I)V
    :try_end_40b
    .catch Ljava/lang/Exception; {:try_start_408 .. :try_end_40b} :catch_40d

    goto/16 :goto_65

    :catch_40d
    move-exception v2

    goto/16 :goto_bc

    :cond_410
    if-nez v11, :cond_41e

    :try_start_412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;
    :try_end_416
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_416} :catch_43d

    :try_start_416
    invoke-interface {v2}, Lcom/iflytek/cloud/thirdparty/ab;->c()V
    :try_end_419
    .catch Ljava/lang/Exception; {:try_start_416 .. :try_end_419} :catch_41b

    goto/16 :goto_65

    :catch_41b
    move-exception v2

    goto/16 :goto_bc

    :cond_41e
    :try_start_41e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/Y;->b:Lcom/iflytek/cloud/thirdparty/ab;
    :try_end_422
    .catch Ljava/lang/Exception; {:try_start_41e .. :try_end_422} :catch_440

    :try_start_422
    invoke-interface {v2, v11}, Lcom/iflytek/cloud/thirdparty/ab;->a(I)V
    :try_end_425
    .catch Ljava/lang/Exception; {:try_start_422 .. :try_end_425} :catch_427

    goto/16 :goto_65

    :catch_427
    move-exception v2

    goto/16 :goto_bc

    :catch_42a
    move-exception v3

    goto :goto_3c0

    :catch_42c
    move-exception v2

    goto/16 :goto_3a8

    :catch_42f
    move-exception v2

    goto :goto_3b1

    :catch_431
    move-exception v2

    goto/16 :goto_351

    :catch_434
    move-exception v2

    goto/16 :goto_38f

    :catch_437
    move-exception v2

    goto/16 :goto_bc

    :catch_43a
    move-exception v2

    goto/16 :goto_bc

    :catch_43d
    move-exception v2

    goto/16 :goto_bc

    :catch_440
    move-exception v2

    goto/16 :goto_bc

    :catch_443
    move-exception v2

    goto/16 :goto_bc

    :catch_446
    move-exception v2

    goto/16 :goto_bc

    :catch_449
    move-exception v2

    goto/16 :goto_bc

    :catch_44c
    move-exception v2

    goto/16 :goto_bc

    :catchall_44f
    move-exception v2

    move v11, v6

    goto/16 :goto_188

    :catchall_453
    move-exception v3

    move v4, v11

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v3, v17

    goto/16 :goto_3bb

    :catchall_45c
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_3bb

    :catchall_464
    move-exception v3

    move v4, v6

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v3, v17

    goto/16 :goto_3bb

    :catch_46d
    move-exception v3

    move-wide v4, v6

    goto/16 :goto_394

    :cond_471
    move v4, v11

    goto/16 :goto_383
.end method
