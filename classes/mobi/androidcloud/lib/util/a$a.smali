.class final Lmobi/androidcloud/lib/util/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/androidcloud/lib/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final kj:Ljava/lang/Object;

.field private final timestamp:J


# direct methods
.method private constructor <init>(Lmobi/androidcloud/lib/util/a;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lmobi/androidcloud/lib/util/a$a;->kj:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/androidcloud/lib/util/a$a;->timestamp:J

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lmobi/androidcloud/lib/util/a;Ljava/lang/Object;Lmobi/androidcloud/lib/util/a;)V
    .registers 4

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Lmobi/androidcloud/lib/util/a$a;-><init>(Lmobi/androidcloud/lib/util/a;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lmobi/androidcloud/lib/util/a$a;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 7
    iget-object v0, p0, Lmobi/androidcloud/lib/util/a$a;->kj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lmobi/androidcloud/lib/util/a$a;J)Z
    .registers 4

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Lmobi/androidcloud/lib/util/a$a;->v(J)Z

    move-result v0

    return v0
.end method

.method private v(J)Z
    .registers 8

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmobi/androidcloud/lib/util/a$a;->timestamp:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
