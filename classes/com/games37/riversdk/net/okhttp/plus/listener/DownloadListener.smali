.class public abstract Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"

# interfaces
.implements Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;
.implements Lokhttp3/Callback;
.implements Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;


# instance fields
.field private isFirst:Z

.field private mDestFileDir:Ljava/lang/String;

.field private mDestFileName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "mDestFileDir"    # Ljava/lang/String;
    .param p2, "mDestFileName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/handler/UIHandler;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/net/okhttp/plus/handler/UIHandler;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mHandler:Landroid/os/Handler;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->isFirst:Z

    .line 26
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mDestFileDir:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mDestFileName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public abstract onFailure(Ljava/lang/Exception;)V
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$3;

    invoke-direct {v1, p0, p2}, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$3;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method public onProgress(Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V
    .registers 5
    .param p1, "progress"    # Lcom/games37/riversdk/net/okhttp/plus/model/Progress;

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-boolean v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->isFirst:Z

    if-nez v0, :cond_11

    .line 102
    iput-boolean v2, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->isFirst:Z

    .line 103
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    :cond_11
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 111
    invoke-virtual {p1}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 112
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    :cond_2a
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 8
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->saveFile(Lokhttp3/Response;)Ljava/io/File;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_11

    move-result-object v1

    .line 45
    :goto_5
    move-object v2, v1

    .line 46
    .local v2, "newFile":Ljava/io/File;
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$2;

    invoke-direct {v4, p0, v2}, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$2;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;Ljava/io/File;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void

    .line 36
    .end local v2    # "newFile":Ljava/io/File;
    :catch_11
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$1;

    invoke-direct {v4, p0, v0}, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener$1;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;Ljava/io/IOException;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method

.method public abstract onSuccess(Ljava/io/File;)V
.end method

.method public onUIFinish()V
    .registers 1

    .prologue
    .line 126
    return-void
.end method

.method public abstract onUIProgress(Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V
.end method

.method public onUIStart()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method

.method public saveFile(Lokhttp3/Response;)Ljava/io/File;
    .registers 11
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v5, 0x0

    .line 70
    .local v5, "is":Ljava/io/InputStream;
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 72
    .local v0, "buf":[B
    const/4 v3, 0x0

    .line 74
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    .line 75
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mDestFileDir:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_1e
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;->mDestFileName:Ljava/lang/String;

    invoke-direct {v2, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_59

    .line 81
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :goto_2a
    :try_start_2a
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_43

    .line 82
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_36

    goto :goto_2a

    .line 87
    .end local v6    # "len":I
    :catchall_36
    move-exception v7

    move-object v3, v4

    .line 88
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_38
    if-eqz v5, :cond_3d

    :try_start_3a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_55

    .line 92
    :cond_3d
    :goto_3d
    if-eqz v3, :cond_42

    :try_start_3f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_57

    .line 94
    :cond_42
    :goto_42
    throw v7

    .line 84
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :cond_43
    :try_start_43
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_36

    .line 88
    if-eqz v5, :cond_4b

    :try_start_48
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_51

    .line 92
    :cond_4b
    :goto_4b
    if-eqz v4, :cond_50

    :try_start_4d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_53

    .line 85
    :cond_50
    :goto_50
    return-object v2

    .line 89
    :catch_51
    move-exception v7

    goto :goto_4b

    .line 93
    :catch_53
    move-exception v7

    goto :goto_50

    .line 89
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_55
    move-exception v8

    goto :goto_3d

    .line 93
    :catch_57
    move-exception v8

    goto :goto_42

    .line 87
    :catchall_59
    move-exception v7

    goto :goto_38
.end method
