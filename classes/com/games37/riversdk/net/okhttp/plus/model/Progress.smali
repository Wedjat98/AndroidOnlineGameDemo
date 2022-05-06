.class public Lcom/games37/riversdk/net/okhttp/plus/model/Progress;
.super Ljava/lang/Object;
.source "Progress.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private currentBytes:J

.field private isFinish:Z

.field private totalBytes:J


# direct methods
.method public constructor <init>(JJZ)V
    .registers 7
    .param p1, "currentBytes"    # J
    .param p3, "totalBytes"    # J
    .param p5, "isFinish"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->currentBytes:J

    .line 13
    iput-wide p3, p0, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->totalBytes:J

    .line 14
    iput-boolean p5, p0, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->isFinish:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getCurrentBytes()J
    .registers 3

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->currentBytes:J

    return-wide v0
.end method

.method public getTotalBytes()J
    .registers 3

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->totalBytes:J

    return-wide v0
.end method

.method public isFinish()Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/games37/riversdk/net/okhttp/plus/model/Progress;->isFinish:Z

    return v0
.end method
