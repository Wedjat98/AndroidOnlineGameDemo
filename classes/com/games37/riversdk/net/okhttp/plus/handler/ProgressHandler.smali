.class public abstract Lcom/games37/riversdk/net/okhttp/plus/handler/ProgressHandler;
.super Landroid/os/Handler;
.source "ProgressHandler.java"


# static fields
.field public static final FINISH:I = 0x3

.field public static final START:I = 0x2

.field public static final UPDATE:I = 0x1


# instance fields
.field private final mListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V
    .registers 3
    .param p1, "uiProgressListener"    # Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;

    .prologue
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/handler/ProgressHandler;->mListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract finish(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/handler/ProgressHandler;->mListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;

    .line 28
    .local v0, "listener":Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_34

    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 45
    :cond_10
    :goto_10
    return-void

    .line 30
    :pswitch_11
    if-eqz v0, :cond_10

    .line 31
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;

    invoke-virtual {p0, v0, v1}, Lcom/games37/riversdk/net/okhttp/plus/handler/ProgressHandler;->progress(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V

    goto :goto_10

    .line 34
    :pswitch_1b
    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/handler/ProgressHandler;->mListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 35
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/net/okhttp/plus/handler/ProgressHandler;->start(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V

    goto :goto_10

    .line 38
    :pswitch_27
    iget-object v1, p0, Lcom/games37/riversdk/net/okhttp/plus/handler/ProgressHandler;->mListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 39
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/net/okhttp/plus/handler/ProgressHandler;->finish(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V

    goto :goto_10

    .line 28
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1b
        :pswitch_27
    .end packed-switch
.end method

.method public abstract progress(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;Lcom/games37/riversdk/net/okhttp/plus/model/Progress;)V
.end method

.method public abstract start(Lcom/games37/riversdk/net/okhttp/plus/listener/UIProgressListener;)V
.end method
