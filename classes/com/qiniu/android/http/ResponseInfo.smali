.class public final Lcom/qiniu/android/http/ResponseInfo;
.super Ljava/lang/Object;
.source "ResponseInfo.java"


# static fields
.field public static final Cancelled:I = -0x2

.field public static final CannotConnectToHost:I = -0x3ec

.field public static final InvalidArgument:I = -0x4

.field public static final InvalidFile:I = -0x3

.field public static final InvalidToken:I = -0x5

.field public static final NetworkConnectionLost:I = -0x3ed

.field public static final NetworkError:I = -0x1

.field public static final TimedOut:I = -0x3e9

.field public static final UnknownHost:I = -0x3eb

.field public static final ZeroSizeFile:I = -0x6


# instance fields
.field public final duration:D

.field public final error:Ljava/lang/String;

.field public final host:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final ip:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final port:I

.field public final reqId:Ljava/lang/String;

.field public final sent:J

.field public final statusCode:I

.field public final timeStamp:J

.field public final xlog:Ljava/lang/String;

.field public final xvia:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V
    .registers 21
    .param p1, "statusCode"    # I
    .param p2, "reqId"    # Ljava/lang/String;
    .param p3, "xlog"    # Ljava/lang/String;
    .param p4, "xvia"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "ip"    # Ljava/lang/String;
    .param p8, "port"    # I
    .param p9, "duration"    # D
    .param p11, "sent"    # J
    .param p13, "error"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    .line 86
    iput-object p2, p0, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/qiniu/android/http/ResponseInfo;->xlog:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/qiniu/android/http/ResponseInfo;->host:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/qiniu/android/http/ResponseInfo;->path:Ljava/lang/String;

    .line 91
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/qiniu/android/http/ResponseInfo;->duration:D

    .line 92
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    .line 93
    iput-object p7, p0, Lcom/qiniu/android/http/ResponseInfo;->ip:Ljava/lang/String;

    .line 94
    iput p8, p0, Lcom/qiniu/android/http/ResponseInfo;->port:I

    .line 95
    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object v2

    iget-object v2, v2, Lcom/qiniu/android/http/UserAgent;->id:Ljava/lang/String;

    iput-object v2, p0, Lcom/qiniu/android/http/ResponseInfo;->id:Ljava/lang/String;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/qiniu/android/http/ResponseInfo;->timeStamp:J

    .line 97
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/qiniu/android/http/ResponseInfo;->sent:J

    .line 98
    return-void
.end method

.method public static cancelled()Lcom/qiniu/android/http/ResponseInfo;
    .registers 15

    .prologue
    .line 105
    new-instance v1, Lcom/qiniu/android/http/ResponseInfo;

    const/4 v2, -0x2

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-string v14, "cancelled by user"

    invoke-direct/range {v1 .. v14}, Lcom/qiniu/android/http/ResponseInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    return-object v1
.end method

.method public static fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 16
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 119
    new-instance v1, Lcom/qiniu/android/http/ResponseInfo;

    const/4 v2, -0x3

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v1 .. v14}, Lcom/qiniu/android/http/ResponseInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    return-object v1
.end method

.method public static invalidArgument(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 16
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v1, Lcom/qiniu/android/http/ResponseInfo;

    const/4 v2, -0x4

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v14, p0

    invoke-direct/range {v1 .. v14}, Lcom/qiniu/android/http/ResponseInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    return-object v1
.end method

.method public static invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 16
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v1, Lcom/qiniu/android/http/ResponseInfo;

    const/4 v2, -0x5

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v14, p0

    invoke-direct/range {v1 .. v14}, Lcom/qiniu/android/http/ResponseInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    return-object v1
.end method

.method public static zeroSize()Lcom/qiniu/android/http/ResponseInfo;
    .registers 15

    .prologue
    .line 101
    new-instance v1, Lcom/qiniu/android/http/ResponseInfo;

    const/4 v2, -0x6

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-string v14, "file or data size is zero"

    invoke-direct/range {v1 .. v14}, Lcom/qiniu/android/http/ResponseInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public isCancelled()Z
    .registers 3

    .prologue
    .line 124
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isNetworkBroken()Z
    .registers 3

    .prologue
    .line 132
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, -0x3eb

    if-eq v0, v1, :cond_1d

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, -0x3ec

    if-eq v0, v1, :cond_1d

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, -0x3e9

    if-eq v0, v1, :cond_1d

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, -0x3ed

    if-ne v0, v1, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isNotQiniu()Z
    .registers 3

    .prologue
    .line 152
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_12

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_12

    iget-object v0, p0, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isOK()Z
    .registers 3

    .prologue
    .line 128
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isServerError()Z
    .registers 3

    .prologue
    .line 138
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_12

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x243

    if-ne v0, v1, :cond_18

    :cond_12
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x3e4

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public needRetry()Z
    .registers 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->needSwitchServer()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x196

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public needSwitchServer()Z
    .registers 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->isNetworkBroken()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/qiniu/android/http/ResponseInfo;->isServerError()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 156
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "{ver:%s,ResponseInfo:%s,status:%d, reqId:%s, xlog:%s, xvia:%s, host:%s, path:%s, ip:%s, port:%d, duration:%f s, time:%d, sent:%d,error:%s}"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "7.1.2"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseInfo;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    .line 157
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseInfo;->xlog:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseInfo;->host:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseInfo;->path:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseInfo;->ip:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget v4, p0, Lcom/qiniu/android/http/ResponseInfo;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget-wide v4, p0, Lcom/qiniu/android/http/ResponseInfo;->duration:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-wide v4, p0, Lcom/qiniu/android/http/ResponseInfo;->timeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    iget-wide v4, p0, Lcom/qiniu/android/http/ResponseInfo;->sent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 156
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
