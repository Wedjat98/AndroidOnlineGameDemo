.class public abstract Lmobi/androidcloud/lib/net/transport/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final iI:I

.field protected iJ:Ljava/net/Socket;

.field protected iK:Lmobi/androidcloud/lib/log/a;

.field protected volatile in:Ljava/io/InputStream;

.field protected volatile out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lmobi/androidcloud/lib/log/a;I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->in:Ljava/io/InputStream;

    .line 27
    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->out:Ljava/io/OutputStream;

    .line 31
    iput-object p1, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    .line 35
    iput-object p2, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    .line 36
    iput p3, p0, Lmobi/androidcloud/lib/net/transport/i;->iI:I

    .line 37
    return-void
.end method


# virtual methods
.method public abstract b(Lmobi/androidcloud/lib/wire/control/M;)V
.end method

.method public abstract b(Lmobi/tikl/wire/control/a$av;)V
.end method

.method protected abstract closeStreams()V
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    if-nez v0, :cond_7

    .line 41
    const-string v0, "NullSocket"

    .line 43
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    return-object v0
.end method

.method public abstract jw()Lmobi/tikl/wire/control/a$av;
.end method

.method protected jx()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 95
    iget v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iI:I

    if-lez v0, :cond_11

    .line 96
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    iget v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iI:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 97
    :cond_11
    return-void
.end method

.method protected jy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    .line 151
    :try_start_5
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_18
    .catchall {:try_start_5 .. :try_end_a} :catchall_23

    .line 155
    iput-object v3, p0, Lmobi/androidcloud/lib/net/transport/i;->in:Ljava/io/InputStream;

    .line 158
    :cond_c
    :goto_c
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_17

    .line 160
    :try_start_10
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_27
    .catchall {:try_start_10 .. :try_end_15} :catchall_32

    .line 164
    iput-object v3, p0, Lmobi/androidcloud/lib/net/transport/i;->out:Ljava/io/OutputStream;

    .line 166
    :cond_17
    :goto_17
    return-void

    .line 152
    :catch_18
    move-exception v0

    .line 153
    :try_start_19
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v2, "error when closing is_:"

    invoke-virtual {v1, v2, v0}, Lmobi/androidcloud/lib/log/a;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_23

    .line 155
    iput-object v3, p0, Lmobi/androidcloud/lib/net/transport/i;->in:Ljava/io/InputStream;

    goto :goto_c

    :catchall_23
    move-exception v0

    iput-object v3, p0, Lmobi/androidcloud/lib/net/transport/i;->in:Ljava/io/InputStream;

    throw v0

    .line 161
    :catch_27
    move-exception v0

    .line 162
    :try_start_28
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v2, "error when closing os_:"

    invoke-virtual {v1, v2, v0}, Lmobi/androidcloud/lib/log/a;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_32

    .line 164
    iput-object v3, p0, Lmobi/androidcloud/lib/net/transport/i;->out:Ljava/io/OutputStream;

    goto :goto_17

    :catchall_32
    move-exception v0

    iput-object v3, p0, Lmobi/androidcloud/lib/net/transport/i;->out:Ljava/io/OutputStream;

    throw v0
.end method

.method public q(Z)Z
    .registers 5

    .prologue
    .line 58
    if-eqz p1, :cond_20

    .line 59
    new-instance v0, Lmobi/androidcloud/lib/net/transport/e;

    sget-object v1, Lmobi/androidcloud/lib/net/transport/a;->ix:Lmobi/androidcloud/lib/net/transport/a;

    iget-object v2, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/net/transport/e;-><init>(Lmobi/androidcloud/lib/net/transport/c;Ljava/io/InputStream;)V

    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->in:Ljava/io/InputStream;

    .line 62
    new-instance v0, Lmobi/androidcloud/lib/net/transport/f;

    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/androidcloud/lib/net/transport/f;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->out:Ljava/io/OutputStream;

    .line 69
    :goto_1e
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_20
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->in:Ljava/io/InputStream;

    .line 66
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->out:Ljava/io/OutputStream;

    goto :goto_1e
.end method

.method public declared-synchronized shutDown()V
    .registers 4

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shutting down UserLinkTransport "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/transport/i;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->L(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_6b

    .line 111
    :try_start_19
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1b} :catch_5c
    .catchall {:try_start_19 .. :try_end_1b} :catchall_77

    if-eqz v0, :cond_44

    .line 113
    :try_start_1d
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 114
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v1, "shut down output"

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->L(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_53
    .catchall {:try_start_1d .. :try_end_29} :catchall_77

    .line 120
    :goto_29
    :try_start_29
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 121
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v1, "shut down input"

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->L(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_6e
    .catchall {:try_start_29 .. :try_end_35} :catchall_77

    .line 127
    :goto_35
    :try_start_35
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 128
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v1, "Socket already close!!"

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->L(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_44} :catch_8c
    .catchall {:try_start_35 .. :try_end_44} :catchall_77

    .line 137
    :cond_44
    :goto_44
    :try_start_44
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v1, "Closed socket"

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->L(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_5c
    .catchall {:try_start_44 .. :try_end_4b} :catchall_77

    .line 142
    const/4 v0, 0x0

    :try_start_4c
    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    .line 143
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/transport/i;->closeStreams()V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_6b

    .line 144
    :goto_51
    monitor-exit p0

    return-void

    .line 115
    :catch_53
    move-exception v0

    .line 116
    :try_start_54
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v2, "Exception while shutting down output "

    invoke-virtual {v1, v2, v0}, Lmobi/androidcloud/lib/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_5c
    .catchall {:try_start_54 .. :try_end_5b} :catchall_77

    goto :goto_29

    .line 139
    :catch_5c
    move-exception v0

    .line 140
    :try_start_5d
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v2, "Exception while shutting down ControlRxTx "

    invoke-virtual {v1, v2, v0}, Lmobi/androidcloud/lib/log/a;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_77

    .line 142
    const/4 v0, 0x0

    :try_start_65
    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    .line 143
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/transport/i;->closeStreams()V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_6b

    goto :goto_51

    .line 105
    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :catch_6e
    move-exception v0

    .line 123
    :try_start_6f
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v2, "Exception while shutting down input "

    invoke-virtual {v1, v2, v0}, Lmobi/androidcloud/lib/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_5c
    .catchall {:try_start_6f .. :try_end_76} :catchall_77

    goto :goto_35

    .line 142
    :catchall_77
    move-exception v0

    const/4 v1, 0x0

    :try_start_79
    iput-object v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    .line 143
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/transport/i;->closeStreams()V

    throw v0
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_6b

    .line 130
    :cond_7f
    :try_start_7f
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iJ:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 131
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v1, "Closed Socket in shutdown"

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->L(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8b} :catch_8c
    .catchall {:try_start_7f .. :try_end_8b} :catchall_77

    goto :goto_44

    .line 133
    :catch_8c
    move-exception v0

    .line 134
    :try_start_8d
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/i;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v2, "Exception while closing socket "

    invoke-virtual {v1, v2, v0}, Lmobi/androidcloud/lib/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_94} :catch_5c
    .catchall {:try_start_8d .. :try_end_94} :catchall_77

    goto :goto_44
.end method
