.class public Lcom/iflytek/cloud/DataUploader;
.super Lcom/iflytek/cloud/thirdparty/E;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/E;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected b_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public uploadData(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;[B)I
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/iflytek/cloud/thirdparty/G;

    iget-object v2, p0, Lcom/iflytek/cloud/DataUploader;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/DataUploader;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v4, "upload"

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/DataUploader;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/G;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/DataUploader;->d:Lcom/iflytek/cloud/thirdparty/A;

    iget-object v0, p0, Lcom/iflytek/cloud/DataUploader;->d:Lcom/iflytek/cloud/thirdparty/A;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/G;

    new-instance v2, Lcom/iflytek/cloud/thirdparty/E$a;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/cloud/thirdparty/E$a;-><init>(Lcom/iflytek/cloud/thirdparty/E;Lcom/iflytek/cloud/SpeechListener;)V

    invoke-virtual {v0, v2, p2, p3}, Lcom/iflytek/cloud/thirdparty/G;->a(Lcom/iflytek/cloud/SpeechListener;Ljava/lang/String;[B)V
    :try_end_1e
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_1 .. :try_end_1e} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_2a

    move v0, v1

    :goto_1f
    return v0

    :catch_20
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_1f

    :catch_2a
    move-exception v0

    move-object v1, v0

    const/16 v0, 0x5207

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method
