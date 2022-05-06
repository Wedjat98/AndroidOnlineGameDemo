.class public final Lmobi/androidcloud/lib/net/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private iu:Lmobi/androidcloud/lib/net/f;


# direct methods
.method public constructor <init>(Lmobi/androidcloud/lib/net/f;)V
    .registers 3

    .prologue
    .line 17
    const-string v0, "ServerSocketThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lmobi/androidcloud/lib/net/j;->iu:Lmobi/androidcloud/lib/net/f;

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lmobi/androidcloud/lib/net/j;->iu:Lmobi/androidcloud/lib/net/f;

    invoke-interface {v0}, Lmobi/androidcloud/lib/net/f;->iT()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 30
    return-void

    :catch_6
    move-exception v0

    .line 32
    const-wide/16 v0, 0x7530

    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_14

    .line 39
    :goto_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Force restart of thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_14
    move-exception v0

    goto :goto_c
.end method
