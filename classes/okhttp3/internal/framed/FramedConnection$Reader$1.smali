.class Lokhttp3/internal/framed/FramedConnection$Reader$1;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection$Reader;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lokhttp3/internal/framed/FramedConnection$Reader;

.field final synthetic val$newStream:Lokhttp3/internal/framed/FramedStream;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/FramedStream;)V
    .registers 5
    .param p1, "this$1"    # Lokhttp3/internal/framed/FramedConnection$Reader;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 655
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->this$1:Lokhttp3/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->val$newStream:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .prologue
    .line 658
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->this$1:Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v1, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;
    invoke-static {v1}, Lokhttp3/internal/framed/FramedConnection;->access$2000(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->val$newStream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v1, v2}, Lokhttp3/internal/framed/FramedConnection$Listener;->onStream(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 666
    :goto_d
    return-void

    .line 659
    :catch_e
    move-exception v0

    .line 660
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FramedConnection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->this$1:Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v4, v4, Lokhttp3/internal/framed/FramedConnection$Reader;->this$0:Lokhttp3/internal/framed/FramedConnection;

    # getter for: Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;
    invoke-static {v4}, Lokhttp3/internal/framed/FramedConnection;->access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    :try_start_32
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader$1;->val$newStream:Lokhttp3/internal/framed/FramedStream;

    sget-object v2, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_39} :catch_3a

    goto :goto_d

    .line 663
    :catch_3a
    move-exception v1

    goto :goto_d
.end method
