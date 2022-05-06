.class public Lcom/iflytek/cloud/thirdparty/U;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/U$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/iflytek/cloud/thirdparty/U$a;

.field private volatile c:Z

.field private d:Ljava/net/URL;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Object;

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/U;->a:I

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/U;->b:Lcom/iflytek/cloud/thirdparty/U$a;

    iput-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/U;->c:Z

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/U;->d:Ljava/net/URL;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->e:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/U;->g:Ljava/lang/Object;

    iput v2, p0, Lcom/iflytek/cloud/thirdparty/U;->h:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_38
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->b:Lcom/iflytek/cloud/thirdparty/U$a;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/U;->c:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->b:Lcom/iflytek/cloud/thirdparty/U$a;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/thirdparty/U$a;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_8
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v0, 0x400

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    new-array v3, v0, [B

    :goto_f
    iget-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/U;->c:Z

    if-nez v4, :cond_1e

    invoke-virtual {v1, v3, v6, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1e

    invoke-virtual {v2, v3, v6, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    goto :goto_f

    :cond_1e
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private b([B)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->b:Lcom/iflytek/cloud/thirdparty/U$a;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/U;->c:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->b:Lcom/iflytek/cloud/thirdparty/U$a;

    invoke-interface {v0, p0, p1}, Lcom/iflytek/cloud/thirdparty/U$a;->a(Lcom/iflytek/cloud/thirdparty/U;[B)V

    goto :goto_8
.end method

.method private c()V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "Start connect server"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->d:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_c8
    .catchall {:try_start_1 .. :try_end_e} :catchall_af

    :try_start_e
    iget v1, p0, Lcom/iflytek/cloud/thirdparty/U;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/U;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v3, v1, :cond_51

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3e} :catch_76
    .catchall {:try_start_e .. :try_end_3e} :catchall_be

    move-result-object v2

    :try_start_3f
    invoke-direct {p0, v2}, Lcom/iflytek/cloud/thirdparty/U;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/cloud/thirdparty/U;->b([B)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_cb
    .catchall {:try_start_3f .. :try_end_46} :catchall_be

    :goto_46
    if-eqz v2, :cond_4b

    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4b
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_50} :catch_d1

    :cond_50
    :goto_50
    return-void

    :cond_51
    :try_start_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MscHttpRequest connect error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/iflytek/cloud/SpeechError;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x2ee0

    invoke-direct {v3, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/iflytek/cloud/thirdparty/U;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_75} :catch_76
    .catchall {:try_start_51 .. :try_end_75} :catchall_be

    goto :goto_46

    :catch_76
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_7b
    :try_start_7b
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MscHttpRequest error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v3, 0x4e23

    invoke-direct {v0, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/U;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_a2
    .catchall {:try_start_7b .. :try_end_a2} :catchall_c3

    if-eqz v1, :cond_a7

    :try_start_a4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_a7
    if-eqz v2, :cond_50

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ac} :catch_ad

    goto :goto_50

    :catch_ad
    move-exception v0

    goto :goto_50

    :catchall_af
    move-exception v0

    move-object v1, v2

    :goto_b1
    if-eqz v2, :cond_b6

    :try_start_b3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_b6
    if-eqz v1, :cond_bb

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_bb} :catch_bc

    :cond_bb
    :goto_bb
    throw v0

    :catch_bc
    move-exception v1

    goto :goto_bb

    :catchall_be
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_b1

    :catchall_c3
    move-exception v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_b1

    :catch_c8
    move-exception v0

    move-object v1, v2

    goto :goto_7b

    :catch_cb
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_7b

    :catch_d1
    move-exception v0

    goto/16 :goto_50
.end method

.method private d()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_19
    return v2
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/U;->c:Z

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/U;->h:I

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/U$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/U;->b:Lcom/iflytek/cloud/thirdparty/U$a;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/U;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p3}, Lcom/iflytek/cloud/thirdparty/U;->a([B)V

    :try_start_8
    invoke-static {p1, p2}, Lcom/iflytek/cloud/thirdparty/U;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->d:Ljava/net/URL;
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 5

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/U;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/U;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public a([B)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public b()V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "MscHttpRequest start Post"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/U;->d:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_122
    .catchall {:try_start_1 .. :try_end_e} :catchall_118

    const/4 v1, 0x1

    :try_start_f
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/U;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/U;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Content-length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/U;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Charset"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/x-gzip"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/U;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/U;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "X-Par"

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/U;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_8b} :catch_8c
    .catchall {:try_start_f .. :try_end_8b} :catchall_107

    goto :goto_7c

    :catch_8c
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_91
    :try_start_91
    new-instance v3, Lcom/iflytek/cloud/SpeechError;

    const/16 v4, 0x4e23

    invoke-direct {v3, v4}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/iflytek/cloud/thirdparty/U;->a(Lcom/iflytek/cloud/SpeechError;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MscHttpRequest error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_91 .. :try_end_b5} :catchall_11b

    if-eqz v1, :cond_ba

    :try_start_b7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_ba
    if-eqz v2, :cond_bf

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bf} :catch_120

    :cond_bf
    :goto_bf
    return-void

    :cond_c0
    :try_start_c0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v3, v1, :cond_e6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d1} :catch_8c
    .catchall {:try_start_c0 .. :try_end_d1} :catchall_107

    move-result-object v2

    :try_start_d2
    invoke-direct {p0, v2}, Lcom/iflytek/cloud/thirdparty/U;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/cloud/thirdparty/U;->b([B)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d9} :catch_126
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_107

    :goto_d9
    if-eqz v2, :cond_de

    :try_start_db
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_de
    if-eqz v0, :cond_bf

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e3} :catch_e4

    goto :goto_bf

    :catch_e4
    move-exception v0

    goto :goto_bf

    :cond_e6
    :try_start_e6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http Request Failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/iflytek/cloud/SpeechError;

    add-int/lit16 v1, v1, 0x2ee0

    invoke-direct {v3, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/iflytek/cloud/thirdparty/U;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_106} :catch_8c
    .catchall {:try_start_e6 .. :try_end_106} :catchall_107

    goto :goto_d9

    :catchall_107
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_10b
    if-eqz v2, :cond_110

    :try_start_10d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_110
    if-eqz v1, :cond_115

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_115} :catch_116

    :cond_115
    :goto_115
    throw v0

    :catch_116
    move-exception v1

    goto :goto_115

    :catchall_118
    move-exception v0

    move-object v1, v2

    goto :goto_10b

    :catchall_11b
    move-exception v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_10b

    :catch_120
    move-exception v0

    goto :goto_bf

    :catch_122
    move-exception v0

    move-object v1, v2

    goto/16 :goto_91

    :catch_126
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto/16 :goto_91
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/cloud/thirdparty/U;->a:I

    return-void
.end method

.method public run()V
    .registers 3

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/U;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/U;->b()V

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/U;->c()V

    goto :goto_8
.end method
