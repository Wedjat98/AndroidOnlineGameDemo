.class public final Lcom/qiniu/android/dns/Record;
.super Ljava/lang/Object;
.source "Record.java"


# static fields
.field public static final TTL_MIN_SECONDS:I = 0x258

.field public static final TYPE_A:I = 0x1

.field public static final TYPE_CNAME:I = 0x5


# instance fields
.field public final timeStamp:J

.field public final ttl:I

.field public final type:I

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJ)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "ttl"    # I
    .param p4, "timeStamp"    # J

    .prologue
    const/16 v0, 0x258

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/qiniu/android/dns/Record;->type:I

    .line 42
    if-ge p3, v0, :cond_c

    move p3, v0

    .end local p3    # "ttl":I
    :cond_c
    iput p3, p0, Lcom/qiniu/android/dns/Record;->ttl:I

    .line 43
    iput-wide p4, p0, Lcom/qiniu/android/dns/Record;->timeStamp:J

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-ne p0, p1, :cond_5

    .line 54
    :cond_4
    :goto_4
    return v1

    .line 50
    :cond_5
    if-eqz p1, :cond_b

    instance-of v3, p1, Lcom/qiniu/android/dns/Record;

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 51
    goto :goto_4

    :cond_d
    move-object v0, p1

    .line 53
    check-cast v0, Lcom/qiniu/android/dns/Record;

    .line 54
    .local v0, "another":Lcom/qiniu/android/dns/Record;
    iget-object v3, p0, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget v3, p0, Lcom/qiniu/android/dns/Record;->type:I

    iget v4, v0, Lcom/qiniu/android/dns/Record;->type:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v4, v0, Lcom/qiniu/android/dns/Record;->ttl:I

    if-ne v3, v4, :cond_2e

    iget-wide v4, p0, Lcom/qiniu/android/dns/Record;->timeStamp:J

    iget-wide v6, v0, Lcom/qiniu/android/dns/Record;->timeStamp:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_2e
    move v1, v2

    goto :goto_4
.end method

.method public isA()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 61
    iget v1, p0, Lcom/qiniu/android/dns/Record;->type:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isCname()Z
    .registers 3

    .prologue
    .line 65
    iget v0, p0, Lcom/qiniu/android/dns/Record;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isExpired()Z
    .registers 5

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/qiniu/android/dns/Record;->isExpired(J)Z

    move-result v0

    return v0
.end method

.method public isExpired(J)Z
    .registers 8
    .param p1, "time"    # J

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/qiniu/android/dns/Record;->timeStamp:J

    iget v2, p0, Lcom/qiniu/android/dns/Record;->ttl:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
