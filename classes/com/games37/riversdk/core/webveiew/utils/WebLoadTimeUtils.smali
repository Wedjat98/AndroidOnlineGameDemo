.class public Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;
.super Ljava/lang/Object;
.source "WebLoadTimeUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;


# instance fields
.field private firstLoadTime:J

.field private isLog:Z

.field private loginFinishTime:J

.field private pageFinishTime:J

.field private pageStartLoadTime:J

.field private webStartInitTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->isLog:Z

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->instance:Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;

    if-nez v0, :cond_13

    .line 49
    const-class v1, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;

    monitor-enter v1

    .line 50
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->instance:Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;

    if-nez v0, :cond_12

    .line 51
    new-instance v0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;

    invoke-direct {v0}, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->instance:Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;

    .line 53
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 55
    :cond_13
    sget-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->instance:Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;

    return-object v0

    .line 53
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static stampToDate(J)Ljava/lang/String;
    .registers 10
    .param p0, "s"    # J

    .prologue
    .line 142
    move-wide v4, p0

    .line 145
    .local v4, "stamp":J
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xa

    if-ne v3, v6, :cond_10

    .line 146
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 149
    :cond_10
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 151
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "res":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public getFirstLoadTimeDiff(Ljava/lang/String;J)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "firstLoadTime"    # J

    .prologue
    .line 77
    iput-wide p2, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->firstLoadTime:J

    .line 78
    iget-wide v2, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->webStartInitTime:J

    sub-long v0, p2, v2

    .line 79
    .local v0, "diff":J
    iget-boolean v2, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->isLog:Z

    if-eqz v2, :cond_40

    .line 80
    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstLoadTimeDiff---\u52a0\u8f7d\u7684url---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstLoadTimeDiff---webview\u521d\u59cb\u5316\u5230http\u8bf7\u6c42\u5f00\u59cb\u65f6\u957f---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_40
    return-void
.end method

.method public getLoginTimeDiff(J)V
    .registers 8
    .param p1, "loginFinishTime"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->loginFinishTime:J

    .line 91
    iget-wide v2, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->firstLoadTime:J

    sub-long v0, p1, v2

    .line 92
    .local v0, "diff":J
    iget-boolean v2, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->isLog:Z

    if-eqz v2, :cond_28

    .line 93
    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLoginTimeDiff---\u767b\u5f55\u8df3\u8f6c\u9700\u8981\u7684\u65f6\u957f---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_28
    return-void
.end method

.method public getPageFinishTimeDiff(J)V
    .registers 10
    .param p1, "pageFinishTime"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->pageFinishTime:J

    .line 128
    iget-wide v4, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->pageStartLoadTime:J

    sub-long v0, p1, v4

    .line 129
    .local v0, "diff":J
    iget-wide v4, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->webStartInitTime:J

    sub-long v2, p1, v4

    .line 130
    .local v2, "totalDiff":J
    iget-boolean v4, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->isLog:Z

    if-eqz v4, :cond_52

    .line 131
    sget-object v4, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPageFinishTimeDiff---\u767b\u5f55\u540e\u4e3b\u9875\u9762\u52a0\u8f7d\u5b8c\u6210\u9700\u8981\u7684\u65f6\u957f---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v4, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPageFinishTimeDiff---\u6574\u4e2a\u52a0\u8f7d\u8fc7\u7a0b\u603b\u5171\u65f6\u957f---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, p2}, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->stampToDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_52
    return-void
.end method

.method public getPageStartLoadTimeDiff(Ljava/lang/String;J)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pageStartLoadTime"    # J

    .prologue
    .line 103
    iput-wide p2, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->pageStartLoadTime:J

    .line 104
    iget-wide v2, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->loginFinishTime:J

    sub-long v0, p2, v2

    .line 105
    .local v0, "diff":J
    iget-boolean v2, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->isLog:Z

    if-eqz v2, :cond_40

    .line 106
    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPageStartLoadTimeDiff---\u52a0\u8f7d\u7684url---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPageStartLoadTimeDiff---\u767b\u5f55\u5b8c\u6210\u81f3\u9875\u9762\u5f00\u59cb\u52a0\u8f7d\u7684\u65f6\u957f---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_40
    return-void
.end method

.method public getPageStartShowTimeDiff(J)V
    .registers 8
    .param p1, "pageStartShowTime"    # J

    .prologue
    .line 116
    iget-wide v2, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->webStartInitTime:J

    sub-long v0, p1, v2

    .line 117
    .local v0, "diff":J
    iget-boolean v2, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->isLog:Z

    if-eqz v2, :cond_26

    .line 118
    sget-object v2, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPageStartShowTimeDiff---\u767d\u5c4f\u65f6\u957f---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_26
    return-void
.end method

.method public setWebStartInitTime(J)V
    .registers 6
    .param p1, "webStartInitTime"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->webStartInitTime:J

    .line 64
    iget-boolean v0, p0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->isLog:Z

    if-eqz v0, :cond_22

    .line 65
    sget-object v0, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWebStartInitTime---webview\u5f00\u59cb\u521d\u59cb\u5316\u7684\u65f6\u95f4---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/games37/riversdk/core/webveiew/utils/WebLoadTimeUtils;->stampToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_22
    return-void
.end method
