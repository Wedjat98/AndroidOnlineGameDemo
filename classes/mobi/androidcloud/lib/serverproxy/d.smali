.class public final enum Lmobi/androidcloud/lib/serverproxy/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum iW:Lmobi/androidcloud/lib/serverproxy/d;


# instance fields
.field private iX:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lmobi/androidcloud/lib/serverproxy/d;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/serverproxy/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/androidcloud/lib/serverproxy/d;->iW:Lmobi/androidcloud/lib/serverproxy/d;

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lmobi/androidcloud/lib/serverproxy/d;

    sget-object v1, Lmobi/androidcloud/lib/serverproxy/d;->iW:Lmobi/androidcloud/lib/serverproxy/d;

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 12

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lmobi/androidcloud/lib/serverproxy/c;

    invoke-direct {v8}, Lmobi/androidcloud/lib/serverproxy/c;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lmobi/androidcloud/lib/serverproxy/d;->iX:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    iget-object v0, p0, Lmobi/androidcloud/lib/serverproxy/d;->iX:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartCoreThread()Z

    .line 40
    invoke-virtual {p0}, Lmobi/androidcloud/lib/serverproxy/d;->jK()V

    .line 42
    return-void
.end method


# virtual methods
.method jK()V
    .registers 3

    .prologue
    .line 47
    new-instance v0, Lmobi/androidcloud/lib/net/j;

    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/androidcloud/lib/net/j;-><init>(Lmobi/androidcloud/lib/net/f;)V

    .line 49
    iget-object v1, p0, Lmobi/androidcloud/lib/serverproxy/d;->iX:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public declared-synchronized jL()V
    .registers 5

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobi/androidcloud/lib/serverproxy/d;->iX:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    .line 59
    iget-object v1, p0, Lmobi/androidcloud/lib/serverproxy/d;->iX:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activeCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " queueSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/a;->iQ()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 71
    monitor-exit p0

    return-void

    .line 58
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
