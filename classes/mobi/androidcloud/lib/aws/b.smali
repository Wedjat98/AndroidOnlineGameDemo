.class public final Lmobi/androidcloud/lib/aws/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final hd:Lcom/google/protobuf/l$f;

.field public final he:Lcom/google/protobuf/t;


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;ZLmobi/androidcloud/lib/im/j;Z)Z
    .registers 7

    .prologue
    .line 184
    new-instance v0, Lmobi/androidcloud/lib/aws/a;

    const-string v1, "application/octet-stream"

    invoke-direct {v0, p0, v1, p3, p4}, Lmobi/androidcloud/lib/aws/a;-><init>(Ljava/io/File;Ljava/lang/String;Lmobi/androidcloud/lib/im/j;Z)V

    .line 189
    invoke-static {p1, p2, v0}, Lmobi/androidcloud/lib/aws/b;->a(Ljava/lang/String;ZLorg/apache/http/HttpEntity;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLmobi/androidcloud/lib/im/j;Z)Z
    .registers 6

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3, p4}, Lmobi/androidcloud/lib/aws/b;->a(Ljava/io/File;Ljava/lang/String;ZLmobi/androidcloud/lib/im/j;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;ZLorg/apache/http/HttpEntity;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 195
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_70

    .line 205
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "User-Agent"

    const-string v3, "TalkrayAndroidClient"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    if-eqz p1, :cond_29

    .line 211
    const-string v2, "x-amz-storage-class"

    const-string v3, "REDUCED_REDUNDANCY"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_29
    invoke-virtual {v1, p2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 220
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 222
    :try_start_31
    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 223
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "S3 Response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "S3 Entity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_63
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_31 .. :try_end_63} :catch_6e
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_63} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_63} :catch_6a

    .line 228
    const/16 v1, 0xc8

    if-eq v2, v1, :cond_68

    .line 242
    :goto_67
    return v0

    .line 233
    :cond_68
    const/4 v0, 0x1

    goto :goto_67

    .line 242
    :catch_6a
    move-exception v1

    goto :goto_67

    .line 239
    :catch_6c
    move-exception v1

    goto :goto_67

    .line 236
    :catch_6e
    move-exception v1

    goto :goto_67

    .line 201
    :catch_70
    move-exception v1

    goto :goto_67
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_7} :catch_7a

    .line 36
    :try_start_7
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 48
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "User-Agent"

    const-string v2, "TiklAndroidClient"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 63
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_56
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_74
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_74} :catch_75
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_74} :catch_118
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_74} :catch_11a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_74} :catch_11f

    goto :goto_56

    .line 143
    :catch_75
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 145
    throw v0

    .line 31
    :catch_7a
    move-exception v0

    throw v0

    .line 68
    :cond_7c
    :try_start_7c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "I am making a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 74
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "I am made a "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " request"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_bf

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "S3 get response code is not 200..returning false could not get file.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 140
    :goto_be
    return v0

    .line 94
    :cond_bf
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 101
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Downloading totalSize of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from url"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 115
    :goto_f0
    invoke-virtual {v1, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_fc

    .line 123
    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 125
    add-int/2addr v3, v6

    .line 130
    goto :goto_f0

    .line 134
    :cond_fc
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 135
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download Success downloaded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_116
    .catch Ljava/net/MalformedURLException; {:try_start_7c .. :try_end_116} :catch_75
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_116} :catch_118
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_116} :catch_11a
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_116} :catch_11f

    move v0, v4

    .line 140
    goto :goto_be

    .line 146
    :catch_118
    move-exception v0

    throw v0

    .line 148
    :catch_11a
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 150
    throw v0

    .line 151
    :catch_11f
    move-exception v0

    throw v0
.end method
