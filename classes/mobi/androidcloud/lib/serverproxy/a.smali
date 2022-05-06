.class public final Lmobi/androidcloud/lib/serverproxy/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final iU:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final iV:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmobi/androidcloud/lib/serverproxy/a;->iU:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmobi/androidcloud/lib/serverproxy/a;->iV:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersistentConnectionThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lmobi/androidcloud/lib/serverproxy/a;->iU:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lmobi/androidcloud/lib/serverproxy/b;

    invoke-direct {v0, p0}, Lmobi/androidcloud/lib/serverproxy/b;-><init>(Lmobi/androidcloud/lib/serverproxy/a;)V

    invoke-virtual {p0, v0}, Lmobi/androidcloud/lib/serverproxy/a;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Created "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/androidcloud/lib/serverproxy/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :try_start_e
    sget-object v0, Lmobi/androidcloud/lib/serverproxy/a;->iV:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 31
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_2a

    .line 33
    sget-object v0, Lmobi/androidcloud/lib/serverproxy/a;->iV:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exiting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/androidcloud/lib/serverproxy/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    return-void

    .line 33
    :catchall_2a
    move-exception v0

    sget-object v1, Lmobi/androidcloud/lib/serverproxy/a;->iV:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exiting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/androidcloud/lib/serverproxy/a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw v0
.end method
