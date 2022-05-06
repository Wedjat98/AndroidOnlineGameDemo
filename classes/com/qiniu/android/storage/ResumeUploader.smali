.class final Lcom/qiniu/android/storage/ResumeUploader;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final chunkBuffer:[B

.field private final client:Lcom/qiniu/android/http/Client;

.field private final completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

.field private final config:Lcom/qiniu/android/storage/Configuration;

.field private final contexts:[Ljava/lang/String;

.field private crc32:J

.field private f:Ljava/io/File;

.field private file:Ljava/io/RandomAccessFile;

.field private final headers:Lcom/qiniu/android/utils/StringMap;

.field private final key:Ljava/lang/String;

.field private final modifyTime:J

.field private final options:Lcom/qiniu/android/storage/UploadOptions;

.field private final recorderKey:Ljava/lang/String;

.field private final size:I

.field private token:Lcom/qiniu/android/storage/UpToken;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/storage/Configuration;Ljava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;)V
    .registers 16
    .param p1, "client"    # Lcom/qiniu/android/http/Client;
    .param p2, "config"    # Lcom/qiniu/android/storage/Configuration;
    .param p3, "f"    # Ljava/io/File;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "token"    # Lcom/qiniu/android/storage/UpToken;
    .param p6, "completionHandler"    # Lcom/qiniu/android/storage/UpCompletionHandler;
    .param p7, "options"    # Lcom/qiniu/android/storage/UploadOptions;
    .param p8, "recorderKey"    # Ljava/lang/String;

    .prologue
    const/high16 v6, 0x400000

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader;->client:Lcom/qiniu/android/http/Client;

    .line 60
    iput-object p2, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    .line 61
    iput-object p3, p0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    .line 62
    iput-object p8, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    .line 63
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    .line 64
    iput-object p4, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    .line 65
    new-instance v2, Lcom/qiniu/android/utils/StringMap;

    invoke-direct {v2}, Lcom/qiniu/android/utils/StringMap;-><init>()V

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p5, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/utils/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/qiniu/android/utils/StringMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->headers:Lcom/qiniu/android/utils/StringMap;

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    .line 67
    new-instance v2, Lcom/qiniu/android/storage/ResumeUploader$1;

    invoke-direct {v2, p0, p6}, Lcom/qiniu/android/storage/ResumeUploader$1;-><init>(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    .line 80
    if-eqz p7, :cond_61

    .end local p7    # "options":Lcom/qiniu/android/storage/UploadOptions;
    :goto_44
    iput-object p7, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    .line 81
    iget v2, p2, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    .line 82
    iget v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v6

    int-to-long v0, v2

    .line 83
    .local v0, "count":J
    long-to-int v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    .line 84
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    .line 85
    iput-object p5, p0, Lcom/qiniu/android/storage/ResumeUploader;->token:Lcom/qiniu/android/storage/UpToken;

    .line 86
    return-void

    .line 80
    .end local v0    # "count":J
    .restart local p7    # "options":Lcom/qiniu/android/storage/UploadOptions;
    :cond_61
    invoke-static {}, Lcom/qiniu/android/storage/UploadOptions;->defaultOptions()Lcom/qiniu/android/storage/UploadOptions;

    move-result-object p7

    goto :goto_44
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/io/RandomAccessFile;
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/ResumeUploader;)V
    .registers 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/qiniu/android/storage/ResumeUploader;->removeRecord()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qiniu/android/storage/ResumeUploader;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qiniu/android/storage/ResumeUploader;I)V
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/ResumeUploader;->record(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UploadOptions;
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;
    .param p1, "x1"    # Lcom/qiniu/android/http/ResponseInfo;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/ResumeUploader;->isNotQiniu(Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V
    .registers 4
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/net/URI;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qiniu/android/storage/ResumeUploader;)I
    .registers 2
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    return v0
.end method

.method static synthetic access$900(Lcom/qiniu/android/storage/ResumeUploader;)J
    .registers 3
    .param p0, "x0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    return-wide v0
.end method

.method private calcBlockSize(I)I
    .registers 5
    .param p1, "offset"    # I

    .prologue
    const/high16 v1, 0x400000

    .line 185
    iget v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    sub-int v0, v2, p1

    .line 186
    .local v0, "left":I
    if-ge v0, v1, :cond_9

    .end local v0    # "left":I
    :goto_8
    return v0

    .restart local v0    # "left":I
    :cond_9
    move v0, v1

    goto :goto_8
.end method

.method private calcPutSize(I)I
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 180
    iget v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    sub-int v0, v1, p1

    .line 181
    .local v0, "left":I
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget v1, v1, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    if-ge v0, v1, :cond_b

    .end local v0    # "left":I
    :goto_a
    return v0

    .restart local v0    # "left":I
    :cond_b
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget v0, v1, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    goto :goto_a
.end method

.method private isCancelled()Z
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v0, v0, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    invoke-interface {v0}, Lcom/qiniu/android/storage/UpCancellationSignal;->isCancelled()Z

    move-result v0

    return v0
.end method

.method private isNotQiniu(Lcom/qiniu/android/http/ResponseInfo;)Z
    .registers 3
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;

    .prologue
    .line 335
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isNotQiniu()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->token:Lcom/qiniu/android/storage/UpToken;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UpToken;->hasReturnUrl()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private makeBlock(Ljava/net/URI;IIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .registers 18
    .param p1, "address"    # Ljava/net/URI;
    .param p2, "offset"    # I
    .param p3, "blockSize"    # I
    .param p4, "chunkSize"    # I
    .param p5, "progress"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p6, "_completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p7, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 112
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "/mkblk/%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "path":Ljava/lang/String;
    :try_start_12
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 115
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_3b

    .line 120
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, p4}, Lcom/qiniu/android/utils/Crc32;->bytes([BII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    .line 121
    invoke-direct {p0, p1, v9}, Lcom/qiniu/android/storage/ResumeUploader;->newURI(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 122
    .local v1, "u":Ljava/net/URI;
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 123
    .end local v1    # "u":Ljava/net/URI;
    :goto_3a
    return-void

    .line 116
    :catch_3b
    move-exception v8

    .line 117
    .local v8, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v8}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_3a
.end method

.method private makeFile(Ljava/net/URI;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .registers 24
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "_completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p3, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 142
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "/mimeType/%s/fname/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v7, v7, Lcom/qiniu/android/storage/UploadOptions;->mimeType:Ljava/lang/String;

    .line 143
    invoke-static {v7}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 142
    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 145
    .local v16, "mime":Ljava/lang/String;
    const-string v15, ""

    .line 146
    .local v15, "keyStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 147
    const-string v1, "/key/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v6}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 150
    :cond_43
    const-string v17, ""

    .line 151
    .local v17, "paramStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_ba

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 153
    .local v19, "str":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 154
    .local v13, "j":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 155
    .local v12, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "j":I
    .local v14, "j":I
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%s/%s"

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x1

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v19, v13

    move v13, v14

    .line 156
    .end local v14    # "j":I
    .restart local v13    # "j":I
    goto :goto_6e

    .line 157
    .end local v12    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 159
    .end local v13    # "j":I
    .end local v19    # "str":[Ljava/lang/String;
    :cond_ba
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "/mkfile/%d%s%s%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    const/4 v6, 0x2

    aput-object v15, v5, v6

    const/4 v6, 0x3

    aput-object v17, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 160
    .local v18, "path":Ljava/lang/String;
    move-object/from16 v2, p1

    .line 162
    .local v2, "address":Ljava/net/URI;
    :try_start_db
    new-instance v9, Ljava/net/URI;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v9, v1, v4, v0, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/net/URISyntaxException; {:try_start_db .. :try_end_eb} :catch_107

    .end local v2    # "address":Ljava/net/URI;
    .local v9, "address":Ljava/net/URI;
    move-object v2, v9

    .line 168
    .end local v9    # "address":Ljava/net/URI;
    .restart local v2    # "address":Ljava/net/URI;
    :goto_ec
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    const-string v4, ","

    invoke-static {v1, v4}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "bodyStr":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 171
    .local v3, "data":[B
    const/4 v4, 0x0

    array-length v5, v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 172
    return-void

    .line 163
    .end local v3    # "data":[B
    .end local v10    # "bodyStr":Ljava/lang/String;
    :catch_107
    move-exception v11

    .line 164
    .local v11, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v11}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_ec
.end method

.method private newURI(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .registers 12
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 340
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_15} :catch_16

    .line 344
    :goto_15
    return-object v0

    .line 341
    :catch_16
    move-exception v8

    .line 342
    .local v8, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v8}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, p1

    .line 344
    goto :goto_15
.end method

.method private nextTask(IILjava/net/URI;)V
    .registers 23
    .param p1, "offset"    # I
    .param p2, "retried"    # I
    .param p3, "address"    # Ljava/net/URI;

    .prologue
    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/qiniu/android/storage/ResumeUploader;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 195
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->cancelled()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v18

    .line 196
    .local v18, "i":Lcom/qiniu/android/http/ResponseInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v4, v5, v0, v6}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 280
    .end local v18    # "i":Lcom/qiniu/android/http/ResponseInfo;
    :goto_18
    return-void

    .line 200
    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_3a

    .line 201
    new-instance v3, Lcom/qiniu/android/storage/ResumeUploader$2;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v3, v0, v1, v2}, Lcom/qiniu/android/storage/ResumeUploader$2;-><init>(Lcom/qiniu/android/storage/ResumeUploader;II)V

    .line 218
    .local v3, "complete":Lcom/qiniu/android/http/CompletionHandler;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v4, v4, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Lcom/qiniu/android/storage/ResumeUploader;->makeFile(Ljava/net/URI;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    goto :goto_18

    .line 222
    .end local v3    # "complete":Lcom/qiniu/android/http/CompletionHandler;
    :cond_3a
    invoke-direct/range {p0 .. p1}, Lcom/qiniu/android/storage/ResumeUploader;->calcPutSize(I)I

    move-result v8

    .line 223
    .local v8, "chunkSize":I
    new-instance v9, Lcom/qiniu/android/storage/ResumeUploader$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lcom/qiniu/android/storage/ResumeUploader$3;-><init>(Lcom/qiniu/android/storage/ResumeUploader;I)V

    .line 234
    .local v9, "progress":Lcom/qiniu/android/http/ProgressHandler;
    new-instance v3, Lcom/qiniu/android/storage/ResumeUploader$4;

    move-object/from16 v4, p0

    move/from16 v5, p2

    move/from16 v6, p1

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/qiniu/android/storage/ResumeUploader$4;-><init>(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;I)V

    .line 273
    .restart local v3    # "complete":Lcom/qiniu/android/http/CompletionHandler;
    const/high16 v4, 0x400000

    rem-int v4, p1, v4

    if-nez v4, :cond_6f

    .line 274
    invoke-direct/range {p0 .. p1}, Lcom/qiniu/android/storage/ResumeUploader;->calcBlockSize(I)I

    move-result v7

    .line 275
    .local v7, "blockSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v11, v4, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move/from16 v6, p1

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Lcom/qiniu/android/storage/ResumeUploader;->makeBlock(Ljava/net/URI;IIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    goto :goto_18

    .line 278
    .end local v7    # "blockSize":I
    :cond_6f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    const/high16 v5, 0x400000

    div-int v5, p1, v5

    aget-object v14, v4, v5

    .line 279
    .local v14, "context":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v0, v4, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move/from16 v12, p1

    move v13, v8

    move-object v15, v9

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v17}, Lcom/qiniu/android/storage/ResumeUploader;->putChunk(Ljava/net/URI;IILjava/lang/String;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    goto :goto_18
.end method

.method private post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .registers 17
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "progress"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p6, "completion"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p7, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->client:Lcom/qiniu/android/http/Client;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->headers:Lcom/qiniu/android/utils/StringMap;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/qiniu/android/http/Client;->asyncPost(Ljava/lang/String;[BIILcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .line 177
    return-void
.end method

.method private putChunk(Ljava/net/URI;IILjava/lang/String;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .registers 19
    .param p1, "address"    # Ljava/net/URI;
    .param p2, "offset"    # I
    .param p3, "chunkSize"    # I
    .param p4, "context"    # Ljava/lang/String;
    .param p5, "progress"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p6, "_completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p7, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 127
    const/high16 v0, 0x400000

    rem-int v8, p2, v0

    .line 128
    .local v8, "chunkOffset":I
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "/bput/%s/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    const/4 v4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, "path":Ljava/lang/String;
    :try_start_19
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 131
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_43

    .line 136
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, p3}, Lcom/qiniu/android/utils/Crc32;->bytes([BII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    .line 137
    invoke-direct {p0, p1, v10}, Lcom/qiniu/android/storage/ResumeUploader;->newURI(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 138
    .local v1, "u":Ljava/net/URI;
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 139
    .end local v1    # "u":Ljava/net/URI;
    :goto_42
    return-void

    .line 132
    :catch_43
    move-exception v9

    .line 133
    .local v9, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v9}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_42
.end method

.method private record(I)V
    .registers 10
    .param p1, "offset"    # I

    .prologue
    .line 326
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v1, v1, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v1, :cond_8

    if-nez p1, :cond_9

    .line 332
    :cond_8
    :goto_8
    return-void

    .line 329
    :cond_9
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "{\"size\":%d,\"offset\":%d, \"modify_time\":%d, \"contexts\":[%s]}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    .line 330
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    invoke-static {v5}, Lcom/qiniu/android/utils/StringUtils;->jsonJoin([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 329
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v1, v1, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/qiniu/android/storage/Recorder;->set(Ljava/lang/String;[B)V

    goto :goto_8
.end method

.method private recoveryFromRecord()I
    .registers 15

    .prologue
    const/4 v10, 0x0

    .line 283
    iget-object v11, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v11, v11, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-nez v11, :cond_9

    move v9, v10

    .line 309
    :cond_8
    :goto_8
    return v9

    .line 286
    :cond_9
    iget-object v11, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v11, v11, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v12, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-interface {v11, v12}, Lcom/qiniu/android/storage/Recorder;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 287
    .local v1, "data":[B
    if-nez v1, :cond_17

    move v9, v10

    .line 288
    goto :goto_8

    .line 290
    :cond_17
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .line 293
    .local v5, "jsonStr":Ljava/lang/String;
    :try_start_1c
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_21} :catch_51

    .line 298
    .local v8, "obj":Lorg/json/JSONObject;
    const-string v11, "offset"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 299
    .local v9, "offset":I
    const-string v11, "modify_time"

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 300
    .local v6, "modify":J
    const-string v11, "size"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 301
    .local v3, "fSize":I
    const-string v11, "contexts"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 302
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v9, :cond_4f

    iget-wide v12, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    cmp-long v11, v6, v12

    if-nez v11, :cond_4f

    iget v11, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    if-ne v3, v11, :cond_4f

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_57

    :cond_4f
    move v9, v10

    .line 303
    goto :goto_8

    .line 294
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "fSize":I
    .end local v6    # "modify":J
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v9    # "offset":I
    :catch_51
    move-exception v2

    .line 295
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move v9, v10

    .line 296
    goto :goto_8

    .line 305
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "fSize":I
    .restart local v6    # "modify":J
    .restart local v8    # "obj":Lorg/json/JSONObject;
    .restart local v9    # "offset":I
    :cond_57
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_58
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_8

    .line 306
    iget-object v10, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 305
    add-int/lit8 v4, v4, 0x1

    goto :goto_58
.end method

.method private removeRecord()V
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v0, :cond_f

    .line 314
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qiniu/android/storage/Recorder;->del(Ljava/lang/String;)V

    .line 316
    :cond_f
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/qiniu/android/storage/ResumeUploader;->recoveryFromRecord()I

    move-result v1

    .line 91
    .local v1, "offset":I
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_f} :catch_1a

    .line 97
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v3, v3, Lcom/qiniu/android/storage/Configuration;->up:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v3, v3, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    invoke-direct {p0, v1, v2, v3}, Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V

    .line 98
    :goto_19
    return-void

    .line 92
    :catch_1a
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 94
    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_19
.end method
