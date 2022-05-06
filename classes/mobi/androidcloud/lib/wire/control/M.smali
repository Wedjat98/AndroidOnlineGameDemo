.class public Lmobi/androidcloud/lib/wire/control/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lc:Ljava/lang/String;

.field public timeStamp:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lmobi/androidcloud/lib/wire/control/M;->lc:Ljava/lang/String;

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/androidcloud/lib/wire/control/M;->timeStamp:J

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/androidcloud/lib/wire/control/M;->timeStamp:J

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 26
    instance-of v1, p1, Lmobi/androidcloud/lib/wire/control/M;

    if-eqz v1, :cond_1a

    .line 27
    check-cast p1, Lmobi/androidcloud/lib/wire/control/M;

    .line 28
    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/M;->lc:Ljava/lang/String;

    iget-object v2, p1, Lmobi/androidcloud/lib/wire/control/M;->lc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-wide v2, p0, Lmobi/androidcloud/lib/wire/control/M;->timeStamp:J

    iget-wide v4, p1, Lmobi/androidcloud/lib/wire/control/M;->timeStamp:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    .line 32
    :cond_1a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/androidcloud/lib/wire/control/M;->lc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",timeStamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lmobi/androidcloud/lib/wire/control/M;->timeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
