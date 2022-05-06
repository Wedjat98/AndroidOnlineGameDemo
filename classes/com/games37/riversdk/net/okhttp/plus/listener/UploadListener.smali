.class public abstract Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;
.super Ljava/lang/Object;
.source "UploadListener.java"

# interfaces
.implements Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;
.implements Lokhttp3/Callback;
.implements Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/net/okhttp/plus/listener/ProgressListener;",
        "Lokhttp3/Callback;",
        "Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;"
    }
.end annotation


# instance fields
.field private isFirst:Z

.field private final mHandler:Landroid/os/Handler;

.field private mParser:Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener<TT;>;"
    .local p1, "mParser":Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;, "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/handler/UIHandler;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/net/okhttp/plus/handler/UIHandler;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mHandler:Landroid/os/Handler;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->isFirst:Z

    .line 24
    if-nez p1, :cond_17

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_17
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mParser:Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;

    .line 28
    return-void
.end method


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 63
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener<TT;>;"
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;

    invoke-direct {v1, p0, p2}, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$4;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method public onProgress(Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V
    .registers 5
    .param p1, "progress"    # Lcom/games37/riversdk/net/okhttp/plus/model/Progress;

    .prologue
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener<TT;>;"
    const/4 v2, 0x1

    .line 78
    iget-boolean v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->isFirst:Z

    if-nez v0, :cond_11

    .line 79
    iput-boolean v2, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->isFirst:Z

    .line 80
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    :cond_11
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 88
    invoke-virtual {p1}, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 89
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    :cond_2a
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 8
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    .line 33
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener<TT;>;"
    :try_start_0
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mParser:Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;

    invoke-virtual {v3, p2}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;->parseResponse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mParser:Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;

    invoke-virtual {v3}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;->getCode()I

    move-result v0

    .line 35
    .local v0, "code":I
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-eqz v2, :cond_1f

    .line 36
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$1;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .end local v0    # "code":I
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :goto_1e
    return-void

    .line 43
    .restart local v0    # "code":I
    .restart local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_1f
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;

    invoke-direct {v4, p0, v0}, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$2;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_1e

    .line 50
    .end local v0    # "code":I
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :catch_2a
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;

    invoke-direct {v4, p0, v1}, Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener$3;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;Ljava/lang/Exception;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e
.end method

.method public abstract onSuccess(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public onUIFinish()V
    .registers 1

    .prologue
    .line 101
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener<TT;>;"
    return-void
.end method

.method public abstract onUIProgress(Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V
.end method

.method public onUIStart()V
    .registers 1

    .prologue
    .line 98
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener<TT;>;"
    return-void
.end method
