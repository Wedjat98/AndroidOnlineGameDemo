.class Lcom/squareup/okhttp/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/ConnectionPool;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/ConnectionPool;)V
    .registers 2
    .param p1, "this$0"    # Lcom/squareup/okhttp/ConnectionPool;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/32 v8, 0xf4240

    .line 94
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/squareup/okhttp/ConnectionPool;->cleanup(J)J

    move-result-wide v2

    .line 95
    .local v2, "waitNanos":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_14

    return-void

    .line 96
    :cond_14
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 97
    div-long v0, v2, v8

    .line 98
    .local v0, "waitMillis":J
    mul-long v4, v0, v8

    sub-long/2addr v2, v4

    .line 99
    iget-object v5, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v5

    .line 101
    :try_start_22
    iget-object v4, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    long-to-int v6, v2

    invoke-virtual {v4, v0, v1, v6}, Ljava/lang/Object;->wait(JI)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_28} :catch_2d
    .catchall {:try_start_22 .. :try_end_28} :catchall_2a

    .line 104
    :goto_28
    :try_start_28
    monitor-exit v5

    goto :goto_3

    :catchall_2a
    move-exception v4

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v4

    .line 102
    :catch_2d
    move-exception v4

    goto :goto_28
.end method
