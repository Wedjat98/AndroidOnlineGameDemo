.class public Lmobi/androidcloud/lib/net/transport/h;
.super Lmobi/androidcloud/lib/net/transport/i;
.source "SourceFile"


# instance fields
.field private iF:[B

.field private iG:I

.field private iH:[B

.field private msgLen:I


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lmobi/androidcloud/lib/log/a;I)V
    .registers 5

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lmobi/androidcloud/lib/net/transport/i;-><init>(Ljava/net/Socket;Lmobi/androidcloud/lib/log/a;I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iH:[B

    .line 39
    return-void
.end method

.method private l([B)I
    .registers 4

    .prologue
    .line 75
    invoke-static {p1}, Lcom/google/protobuf/d;->d([B)Lcom/google/protobuf/d;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/protobuf/d;->t()I

    move-result v0

    .line 77
    invoke-static {v0}, Lcom/google/protobuf/e;->A(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    return v0
.end method


# virtual methods
.method public declared-synchronized b(Lmobi/androidcloud/lib/wire/control/M;)V
    .registers 5

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_e

    .line 154
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v1, "out is NULL..message dropped: "

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->trace(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3c

    .line 181
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 161
    :cond_e
    :try_start_e
    invoke-static {p1}, Lcom/google/protobuf/d;->a(Lmobi/androidcloud/lib/wire/control/M;)Lmobi/tikl/wire/control/a$av;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/h;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lmobi/tikl/wire/control/a$av;->a(Ljava/io/OutputStream;)V

    .line 169
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v1, "writing message"

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->debug(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 173
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iK:Lmobi/androidcloud/lib/log/a;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/log/a;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 174
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v1, "Sent proto buf msg"

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->trace(Ljava/lang/String;)V
    :try_end_32
    .catch Lmobi/androidcloud/lib/net/transport/g; {:try_start_e .. :try_end_32} :catch_33
    .catchall {:try_start_e .. :try_end_32} :catchall_3c

    goto :goto_c

    .line 178
    :catch_33
    move-exception v0

    .line 179
    :try_start_34
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/h;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v2, "Discarded Java msg:"

    invoke-virtual {v1, v2, v0}, Lmobi/androidcloud/lib/log/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3c

    goto :goto_c

    .line 153
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lmobi/tikl/wire/control/a$av;)V
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_c

    .line 190
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v1, "out is NULL..message dropped"

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->trace(Ljava/lang/String;)V

    .line 215
    :cond_b
    :goto_b
    return-void

    .line 194
    :cond_c
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lmobi/tikl/wire/control/a$av;->a(Ljava/io/OutputStream;)V

    .line 208
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 212
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iK:Lmobi/androidcloud/lib/log/a;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/log/a;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 213
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iK:Lmobi/androidcloud/lib/log/a;

    const-string v1, "Sent proto buf msg"

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->trace(Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected closeStreams()V
    .registers 1

    .prologue
    .line 219
    invoke-super {p0}, Lmobi/androidcloud/lib/net/transport/i;->jy()V

    .line 220
    return-void
.end method

.method public jw()Lmobi/tikl/wire/control/a$av;
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v4, -0x1

    .line 90
    :goto_2
    :try_start_2
    iget v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    if-ge v0, v3, :cond_27

    .line 92
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 93
    if-ne v0, v4, :cond_19

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken Connection While Reading Message Size.."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :cond_18
    return-object v0

    .line 97
    :cond_19
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/h;->iH:[B

    iget v2, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 98
    iget v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    goto :goto_2

    .line 101
    :cond_27
    iget v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    if-ne v0, v3, :cond_69

    .line 102
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iH:[B

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/net/transport/h;->l([B)I

    move-result v0

    iput v0, p0, Lmobi/androidcloud/lib/net/transport/h;->msgLen:I

    .line 104
    iget v0, p0, Lmobi/androidcloud/lib/net/transport/h;->msgLen:I

    const/16 v1, 0x1000

    if-le v0, v1, :cond_4f

    .line 105
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iK:Lmobi/androidcloud/lib/log/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: we got a very big message.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmobi/androidcloud/lib/net/transport/h;->msgLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/log/a;->M(Ljava/lang/String;)V

    .line 110
    :cond_4f
    iget v0, p0, Lmobi/androidcloud/lib/net/transport/h;->msgLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iF:[B

    .line 111
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iF:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lmobi/androidcloud/lib/net/transport/h;->iH:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 112
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iF:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lmobi/androidcloud/lib/net/transport/h;->iH:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 117
    :cond_69
    :goto_69
    iget v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    iget v1, p0, Lmobi/androidcloud/lib/net/transport/h;->msgLen:I

    if-ge v0, v1, :cond_8e

    .line 118
    iget v0, p0, Lmobi/androidcloud/lib/net/transport/h;->msgLen:I

    iget v1, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    sub-int/2addr v0, v1

    .line 120
    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/h;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lmobi/androidcloud/lib/net/transport/h;->iF:[B

    iget v3, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 122
    if-ne v0, v4, :cond_88

    .line 123
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken Connection While Reading Message Body.."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_88
    iget v1, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    add-int/2addr v0, v1

    iput v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    goto :goto_69

    .line 129
    :cond_8e
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    .line 131
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/h;->iF:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 135
    invoke-static {v0}, Lmobi/tikl/wire/control/a$av;->g(Ljava/io/InputStream;)Lmobi/tikl/wire/control/a$av;

    move-result-object v0

    .line 137
    if-nez v0, :cond_18

    .line 138
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "ProtoBuf Transport\'s socket broken"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_a6} :catch_16
.end method

.method public q(Z)Z
    .registers 3

    .prologue
    .line 43
    invoke-super {p0, p1}, Lmobi/androidcloud/lib/net/transport/i;->q(Z)Z

    .line 44
    invoke-super {p0}, Lmobi/androidcloud/lib/net/transport/i;->jx()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/net/transport/h;->iG:I

    .line 46
    const/4 v0, 0x1

    return v0
.end method
