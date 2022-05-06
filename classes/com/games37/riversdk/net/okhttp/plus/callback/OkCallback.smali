.class public abstract Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;
.super Ljava/lang/Object;
.source "OkCallback.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lokhttp3/Callback;"
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mParser:Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method

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
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback<TT;>;"
    .local p1, "mParser":Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;, "Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-nez p1, :cond_d

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_d
    iput-object p1, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->mParser:Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;

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
    .line 32
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback<TT;>;"
    sget-object v0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$1;

    invoke-direct {v1, p0, p2}, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$1;-><init>(Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 8
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    .line 43
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback<TT;>;"
    :try_start_0
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->mParser:Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;

    invoke-virtual {v3, p2}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;->parseResponse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v2

    .line 44
    .local v2, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->mParser:Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;

    invoke-virtual {v3}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;->getCode()I

    move-result v0

    .line 45
    .local v0, "code":I
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-eqz v2, :cond_1f

    .line 46
    sget-object v3, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$2;-><init>(Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .end local v0    # "code":I
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :goto_1e
    return-void

    .line 53
    .restart local v0    # "code":I
    .restart local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_1f
    sget-object v3, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;

    invoke-direct {v4, p0, v0}, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$3;-><init>(Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_1e

    .line 60
    .end local v0    # "code":I
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :catch_2a
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;

    invoke-direct {v4, p0, v1}, Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback$4;-><init>(Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;Ljava/lang/Exception;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 75
    .local p0, "this":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback<TT;>;"
    return-void
.end method

.method public abstract onSuccess(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method
