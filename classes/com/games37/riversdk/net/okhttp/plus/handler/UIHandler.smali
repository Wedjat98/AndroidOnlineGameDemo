.class public Lcom/games37/riversdk/net/okhttp/plus/handler/UIHandler;
.super Lcom/games37/riversdk/net/okhttp/plus/handler/ProgressHandler;
.source "UIHandler.java"


# direct methods
.method public constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V
    .registers 2
    .param p1, "uiProgressListener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/games37/riversdk/net/okhttp/plus/handler/ProgressHandler;-><init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V

    .line 10
    return-void
.end method


# virtual methods
.method public finish(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;

    .prologue
    .line 24
    invoke-interface {p1}, Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;->onUIFinish()V

    .line 25
    return-void
.end method

.method public progress(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V
    .registers 3
    .param p1, "uiProgressListener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;
    .param p2, "progress"    # Lcom/games37/riversdk/net/okhttp/plus/model/Progress;

    .prologue
    .line 19
    invoke-interface {p1, p2}, Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;->onUIProgress(Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V

    .line 20
    return-void
.end method

.method public start(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;

    .prologue
    .line 14
    invoke-interface {p1}, Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;->onUIStart()V

    .line 15
    return-void
.end method
