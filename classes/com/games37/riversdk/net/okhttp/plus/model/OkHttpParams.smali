.class public Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;
.super Ljava/lang/Object;
.source "OkHttpParams.java"


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x1e


# instance fields
.field private isDebug:Z

.field private isSetCookie:Z

.field private timeout:I

.field private wf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->isSetCookie:Z

    .line 33
    iput-boolean v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->isDebug:Z

    .line 35
    const/16 v0, 0x1e

    iput v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->timeout:I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->wf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->wf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_9
.end method

.method public getTimeout()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->timeout:I

    return v0
.end method

.method public isDebug()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->isDebug:Z

    return v0
.end method

.method public isSetCookie()Z
    .registers 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->isSetCookie:Z

    return v0
.end method

.method public setCookieFlag(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSetCookie"    # Z

    .prologue
    .line 42
    iput-boolean p2, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->isSetCookie:Z

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->wf:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method

.method public setDebug(Z)V
    .registers 2
    .param p1, "isDebug"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->isDebug:Z

    .line 52
    return-void
.end method

.method public setTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/games37/riversdk/net/okhttp/plus/model/OkHttpParams;->timeout:I

    .line 60
    return-void
.end method
