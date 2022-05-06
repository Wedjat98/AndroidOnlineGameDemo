.class public final Lmobi/androidcloud/app/ptt/client/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/androidcloud/app/ptt/client/b$1;,
        Lmobi/androidcloud/app/ptt/client/b$a;
    }
.end annotation


# static fields
.field private static volatile fW:Z

.field private static fX:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lmobi/androidcloud/app/ptt/client/b;->fW:Z

    .line 21
    const-wide/16 v0, 0x0

    sput-wide v0, Lmobi/androidcloud/app/ptt/client/b;->fX:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000()J
    .registers 2

    .prologue
    .line 16
    sget-wide v0, Lmobi/androidcloud/app/ptt/client/b;->fX:J

    return-wide v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .prologue
    .line 16
    sput-boolean p0, Lmobi/androidcloud/app/ptt/client/b;->fW:Z

    return p0
.end method

.method static synthetic u(J)J
    .registers 2

    .prologue
    .line 16
    sput-wide p0, Lmobi/androidcloud/app/ptt/client/b;->fX:J

    return-wide p0
.end method


# virtual methods
.method public J(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 53
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/d;->jV()Z

    move-result v0

    if-nez v0, :cond_9

    .line 69
    :cond_8
    :goto_8
    return-void

    .line 59
    :cond_9
    sget-boolean v0, Lmobi/androidcloud/app/ptt/client/b;->fW:Z

    if-nez v0, :cond_8

    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/d;->jW()Z

    move-result v0

    if-nez v0, :cond_8

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lmobi/androidcloud/app/ptt/client/b;->fW:Z

    .line 66
    new-instance v0, Lmobi/androidcloud/app/ptt/client/b$a;

    invoke-direct {v0, p0, p1}, Lmobi/androidcloud/app/ptt/client/b$a;-><init>(Lmobi/androidcloud/app/ptt/client/b;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmobi/androidcloud/app/ptt/client/b$a;->start()V

    goto :goto_8
.end method

.method public hT()V
    .registers 3

    .prologue
    .line 78
    new-instance v0, Lmobi/androidcloud/app/ptt/client/c;

    invoke-direct {v0, p0}, Lmobi/androidcloud/app/ptt/client/c;-><init>(Lmobi/androidcloud/app/ptt/client/b;)V

    .line 86
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method
