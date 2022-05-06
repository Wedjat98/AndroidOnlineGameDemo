.class public Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;
.super Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# instance fields
.field private m_dir:Ljava/lang/String;

.field private m_urlkey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_urlkey:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_dir:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_urlkey:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_dir:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_urlkey:Ljava/lang/String;

    return-object v0
.end method

.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    .line 162
    :pswitch_7
    invoke-super {p0, p1}, Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 165
    :goto_a
    return-void

    .line 150
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 151
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->handleSuccessMessage(ILjava/lang/String;)V

    goto :goto_a

    .line 154
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 155
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_a

    .line 158
    :pswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 159
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->handleNotifySizeMessage(ILjava/lang/String;)V

    goto :goto_a

    .line 148
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_21
        :pswitch_7
        :pswitch_7
        :pswitch_33
    .end packed-switch
.end method

.method protected handleNotifySizeMessage(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->onNotifySize(ILjava/lang/String;)V

    .line 142
    return-void
.end method

.method protected handleSuccessMessage(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method

.method public onNotifySize(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 99
    return-void
.end method

.method public onSuccess()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->onSuccess()V

    .line 95
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 122
    return-void
.end method

.method sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 175
    :try_start_5
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 178
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v4, 0x12c

    if-lt v2, v4, :cond_40

    .line 179
    const-string v0, "main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResonseMessage code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_urlkey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 242
    :goto_3f
    return-void

    .line 182
    :cond_40
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_urlkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 186
    const-string v1, ""

    move-object v2, v1

    move v1, v0

    .line 188
    :goto_63
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    if-ge v1, v6, :cond_84

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v5, v1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 192
    :cond_84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v5, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    const-string v2, "main"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mkdir dir: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 198
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v5, v2

    .line 199
    const-string v5, "main"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dir: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " filename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 203
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 207
    :cond_10d
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 209
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 211
    const/16 v1, 0x400

    new-array v5, v1, [B

    move v1, v0

    .line 215
    :goto_11a
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_143

    .line 216
    add-int/2addr v1, v6

    .line 217
    add-int/lit16 v7, v0, 0x2800

    if-lt v1, v7, :cond_12c

    .line 220
    iget-object v0, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_urlkey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->sendSizeNotifyMessage(ILjava/lang/String;)V

    move v0, v1

    .line 222
    :cond_12c
    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_130} :catch_131

    goto :goto_11a

    .line 237
    :catch_131
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 239
    const-string v1, "main"

    const-string v2, "sendResonseMessage exception "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_urlkey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 225
    :cond_143
    :try_start_143
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 226
    if-eqz v2, :cond_14b

    .line 228
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 230
    :cond_14b
    if-eqz v4, :cond_150

    .line 232
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 235
    :cond_150
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iget-object v1, p0, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->m_urlkey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->sendSuccessMessage(ILjava/lang/String;)V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_159} :catch_131

    goto/16 :goto_3f
.end method

.method protected sendSizeNotifyMessage(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 125
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 126
    return-void
.end method

.method protected sendSuccessMessage(ILjava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/wanmei/android/http/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 117
    return-void
.end method
