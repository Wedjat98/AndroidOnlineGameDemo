.class public Lcom/iflytek/sunflower/b/a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sunflower/b/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/iflytek/sunflower/b/a$a;

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

.field private f:Ljava/lang/Object;

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/iflytek/sunflower/b/a;->a:I

    iput-object v1, p0, Lcom/iflytek/sunflower/b/a;->b:Lcom/iflytek/sunflower/b/a$a;

    iput-boolean v2, p0, Lcom/iflytek/sunflower/b/a;->c:Z

    iput-object v1, p0, Lcom/iflytek/sunflower/b/a;->d:Ljava/net/URL;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sunflower/b/a;->e:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/iflytek/sunflower/b/a;->f:Ljava/lang/Object;

    iput v2, p0, Lcom/iflytek/sunflower/b/a;->g:I

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

.method private a(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/sunflower/b/a;->b:Lcom/iflytek/sunflower/b/a$a;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/iflytek/sunflower/b/a;->c:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/iflytek/sunflower/b/a;->b:Lcom/iflytek/sunflower/b/a$a;

    invoke-interface {v0, p1}, Lcom/iflytek/sunflower/b/a$a;->a(Ljava/lang/Exception;)V

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "rsp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "rsp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1d

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1c
    return v0

    :catch_1d
    move-exception v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c
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

    :cond_f
    :goto_f
    iget-boolean v4, p0, Lcom/iflytek/sunflower/b/a;->c:Z

    if-nez v4, :cond_2b

    invoke-virtual {v1, v3, v6, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2b

    invoke-virtual {v2, v3, v6, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    iget-object v4, p0, Lcom/iflytek/sunflower/b/a;->b:Lcom/iflytek/sunflower/b/a$a;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/iflytek/sunflower/b/a;->b:Lcom/iflytek/sunflower/b/a$a;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/iflytek/sunflower/b/a$a;->a([B)V

    goto :goto_f

    :cond_2b
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/sunflower/b/a;->d:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_72
    .catchall {:try_start_1 .. :try_end_9} :catchall_59

    :try_start_9
    iget v1, p0, Lcom/iflytek/sunflower/b/a;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/iflytek/sunflower/b/a;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v3, v1, :cond_36

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_41
    .catchall {:try_start_9 .. :try_end_23} :catchall_68

    move-result-object v2

    :try_start_24
    invoke-direct {p0, v2}, Lcom/iflytek/sunflower/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/sunflower/b/a;->b([B)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_75
    .catchall {:try_start_24 .. :try_end_2b} :catchall_68

    :goto_2b
    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_30
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_35} :catch_7b

    :cond_35
    :goto_35
    return-void

    :cond_36
    :try_start_36
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "HttpRequest Failed."

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/Exception;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_41
    .catchall {:try_start_36 .. :try_end_40} :catchall_68

    goto :goto_2b

    :catch_41
    move-exception v1

    move-object v4, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v4

    :goto_46
    :try_start_46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v0}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/Exception;)V
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_6d

    if-eqz v1, :cond_51

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_51
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_56} :catch_57

    goto :goto_35

    :catch_57
    move-exception v0

    goto :goto_35

    :catchall_59
    move-exception v0

    move-object v1, v2

    :goto_5b
    if-eqz v2, :cond_60

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_60
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_65} :catch_66

    :cond_65
    :goto_65
    throw v0

    :catch_66
    move-exception v1

    goto :goto_65

    :catchall_68
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5b

    :catchall_6d
    move-exception v0

    move-object v4, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_5b

    :catch_72
    move-exception v0

    move-object v1, v2

    goto :goto_46

    :catch_75
    move-exception v1

    move-object v4, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_46

    :catch_7b
    move-exception v0

    goto :goto_35
.end method

.method private b([B)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/sunflower/b/a;->b:Lcom/iflytek/sunflower/b/a$a;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/iflytek/sunflower/b/a;->c:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/iflytek/sunflower/b/a;->b:Lcom/iflytek/sunflower/b/a$a;

    invoke-interface {v0, p0, p1}, Lcom/iflytek/sunflower/b/a$a;->a(Lcom/iflytek/sunflower/b/a;[B)V

    goto :goto_8
.end method

.method private c()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_3
    iget-object v0, p0, Lcom/iflytek/sunflower/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/iflytek/sunflower/b/a;->e:Ljava/util/ArrayList;

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
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/sunflower/b/a;->d:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_ce
    .catchall {:try_start_1 .. :try_end_9} :catchall_c4

    const/4 v1, 0x1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/sunflower/b/a;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/iflytek/sunflower/b/a;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Content-length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/iflytek/sunflower/b/a;->c()I

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

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object v1, p0, Lcom/iflytek/sunflower/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_6e} :catch_6f
    .catchall {:try_start_a .. :try_end_6e} :catchall_b3

    goto :goto_5f

    :catch_6f
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_74
    :try_start_74
    invoke-direct {p0, v0}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/Exception;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_c7

    if-eqz v1, :cond_7c

    :try_start_79
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_7c
    if-eqz v2, :cond_81

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_81} :catch_cc

    :cond_81
    :goto_81
    return-void

    :cond_82
    :try_start_82
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v3, v1, :cond_a8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_93} :catch_6f
    .catchall {:try_start_82 .. :try_end_93} :catchall_b3

    move-result-object v2

    :try_start_94
    invoke-direct {p0, v2}, Lcom/iflytek/sunflower/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/sunflower/b/a;->b([B)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9b} :catch_d1
    .catchall {:try_start_94 .. :try_end_9b} :catchall_b3

    :goto_9b
    if-eqz v2, :cond_a0

    :try_start_9d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_a0
    if-eqz v0, :cond_81

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a5} :catch_a6

    goto :goto_81

    :catch_a6
    move-exception v0

    goto :goto_81

    :cond_a8
    :try_start_a8
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Http Request Failed."

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/Exception;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b2} :catch_6f
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_b3

    goto :goto_9b

    :catchall_b3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_b7
    if-eqz v2, :cond_bc

    :try_start_b9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_bc
    if-eqz v1, :cond_c1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c1} :catch_c2

    :cond_c1
    :goto_c1
    throw v0

    :catch_c2
    move-exception v1

    goto :goto_c1

    :catchall_c4
    move-exception v0

    move-object v1, v2

    goto :goto_b7

    :catchall_c7
    move-exception v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_b7

    :catch_cc
    move-exception v0

    goto :goto_81

    :catch_ce
    move-exception v0

    move-object v1, v2

    goto :goto_74

    :catch_d1
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_74
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/sunflower/b/a;->g:I

    return-void
.end method

.method public a(Lcom/iflytek/sunflower/b/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/sunflower/b/a;->b:Lcom/iflytek/sunflower/b/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 8

    iget-object v0, p0, Lcom/iflytek/sunflower/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p3}, Lcom/iflytek/sunflower/b/a;->a([B)V

    :try_start_8
    invoke-static {p1, p2}, Lcom/iflytek/sunflower/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sunflower/b/a;->d:Ljava/net/URL;
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public a([B)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/iflytek/sunflower/b/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/iflytek/sunflower/b/a;->a:I

    return-void
.end method

.method public b(Lcom/iflytek/sunflower/b/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/sunflower/b/a;->b:Lcom/iflytek/sunflower/b/a$a;

    invoke-virtual {p0}, Lcom/iflytek/sunflower/b/a;->start()V

    return-void
.end method

.method public run()V
    .registers 3

    iget v0, p0, Lcom/iflytek/sunflower/b/a;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/iflytek/sunflower/b/a;->a()V

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/iflytek/sunflower/b/a;->b()V

    goto :goto_8
.end method
