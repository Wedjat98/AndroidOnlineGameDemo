.class final Lokio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSource"
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .registers 3
    .param p1, "this$0"    # Lokio/Pipe;

    .prologue
    .line 111
    iput-object p1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v1, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    .line 131
    :try_start_5
    iget-object v0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokio/Pipe;->sourceClosed:Z

    .line 132
    iget-object v0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v2, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v3, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v3

    .line 116
    :try_start_5
    iget-object v2, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-boolean v2, v2, Lokio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :catchall_13
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v2

    .line 120
    :cond_16
    :try_start_16
    iget-object v2, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    iget-object v4, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v4, v4, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v4}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 118
    :cond_1f
    iget-object v2, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_37

    .line 119
    iget-object v2, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-boolean v2, v2, Lokio/Pipe;->sinkClosed:Z

    if-eqz v2, :cond_16

    const-wide/16 v0, -0x1

    monitor-exit v3

    .line 125
    :goto_36
    return-wide v0

    .line 123
    :cond_37
    iget-object v2, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 124
    .local v0, "result":J
    iget-object v2, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_16 .. :try_end_47} :catchall_13

    goto :goto_36
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    return-object v0
.end method
