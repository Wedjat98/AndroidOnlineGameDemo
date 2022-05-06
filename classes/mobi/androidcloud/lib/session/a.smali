.class public final Lmobi/androidcloud/lib/session/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final iY:I

.field private iZ:Z

.field private ja:J

.field private jb:I

.field private jc:Lmobi/androidcloud/lib/net/e;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/session/a;->iZ:Z

    .line 24
    new-instance v0, Lmobi/androidcloud/lib/net/e;

    invoke-direct {v0}, Lmobi/androidcloud/lib/net/e;-><init>()V

    iput-object v0, p0, Lmobi/androidcloud/lib/session/a;->jc:Lmobi/androidcloud/lib/net/e;

    .line 27
    iput p1, p0, Lmobi/androidcloud/lib/session/a;->iY:I

    .line 28
    return-void
.end method

.method private jO()V
    .registers 3

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/androidcloud/lib/session/a;->iZ:Z

    .line 135
    const/16 v0, 0xa

    iput v0, p0, Lmobi/androidcloud/lib/session/a;->jb:I

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/androidcloud/lib/session/a;->ja:J

    .line 137
    return-void
.end method


# virtual methods
.method public jM()V
    .registers 5

    .prologue
    .line 52
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/a;->iZ:Z

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lmobi/androidcloud/lib/session/a;->ja:J

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    const/4 v0, 0x1

    .line 54
    :goto_12
    invoke-virtual {p0, v0}, Lmobi/androidcloud/lib/session/a;->r(Z)V

    .line 55
    return-void

    .line 52
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method jN()V
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/a;->iZ:Z

    if-eqz v0, :cond_12

    .line 123
    iget v0, p0, Lmobi/androidcloud/lib/session/a;->jb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmobi/androidcloud/lib/session/a;->jb:I

    .line 124
    iget v0, p0, Lmobi/androidcloud/lib/session/a;->jb:I

    if-gtz v0, :cond_11

    .line 125
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/a;->jO()V

    .line 131
    :cond_11
    :goto_11
    return-void

    .line 128
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/androidcloud/lib/session/a;->r(Z)V

    .line 129
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/a;->jO()V

    goto :goto_11
.end method

.method r(Z)V
    .registers 4

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lmobi/androidcloud/lib/session/a;->jc:Lmobi/androidcloud/lib/net/e;

    iget v1, p0, Lmobi/androidcloud/lib/session/a;->iY:I

    invoke-virtual {v0, v1, p1}, Lmobi/androidcloud/lib/net/e;->c(IZ)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 62
    :goto_7
    return-void

    .line 61
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method start()V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_a

    .line 40
    invoke-virtual {p0}, Lmobi/androidcloud/lib/session/a;->jM()V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_a
    return-void
.end method

.method stop()V
    .registers 3

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lmobi/androidcloud/lib/session/a;->jc:Lmobi/androidcloud/lib/net/e;

    iget v1, p0, Lmobi/androidcloud/lib/session/a;->iY:I

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/net/e;->am(I)V

    .line 112
    iget-object v0, p0, Lmobi/androidcloud/lib/session/a;->jc:Lmobi/androidcloud/lib/net/e;

    iget v1, p0, Lmobi/androidcloud/lib/session/a;->iY:I

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/net/e;->am(I)V

    .line 113
    iget-object v0, p0, Lmobi/androidcloud/lib/session/a;->jc:Lmobi/androidcloud/lib/net/e;

    iget v1, p0, Lmobi/androidcloud/lib/session/a;->iY:I

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/net/e;->am(I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    .line 117
    :goto_15
    return-void

    .line 116
    :catch_16
    move-exception v0

    goto :goto_15
.end method
