.class public Lcom/iflytek/sunflower/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/iflytek/sunflower/a;

.field private static c:Landroid/content/Context;


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field private final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/sunflower/a;->b:Lcom/iflytek/sunflower/a;

    sput-object v0, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_d

    sput-object p1, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    :cond_d
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatisLogAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;
    .registers 2

    sget-object v0, Lcom/iflytek/sunflower/a;->b:Lcom/iflytek/sunflower/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/iflytek/sunflower/a;

    invoke-direct {v0, p0}, Lcom/iflytek/sunflower/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/sunflower/a;->b:Lcom/iflytek/sunflower/a;

    :goto_b
    sget-object v0, Lcom/iflytek/sunflower/a;->b:Lcom/iflytek/sunflower/a;

    return-object v0

    :cond_e
    sput-object p0, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    goto :goto_b
.end method

.method private d()Z
    .registers 7

    const/4 v0, 0x0

    sget v1, Lcom/iflytek/sunflower/config/a;->l:I

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/iflytek/sunflower/config/b;->g:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v1, Lcom/iflytek/sunflower/config/a;->m:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 4

    sget-object v0, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sunflower/task/h;

    sget-object v2, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/sunflower/task/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/iflytek/sunflower/OnlineConfigListener;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/sunflower/task/i;

    sget-object v2, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/iflytek/sunflower/task/i;-><init>(Landroid/content/Context;Lcom/iflytek/sunflower/OnlineConfigListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/iflytek/sunflower/a/c;

    invoke-direct {v0}, Lcom/iflytek/sunflower/a/c;-><init>()V

    sget-object v1, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/iflytek/sunflower/a/c;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/iflytek/sunflower/a/c;->c:J

    invoke-static {p1}, Lcom/iflytek/sunflower/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/sunflower/a/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/iflytek/sunflower/task/b;

    invoke-direct {v2, v0}, Lcom/iflytek/sunflower/task/b;-><init>(Lcom/iflytek/sunflower/a/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "destUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sput-object p2, Lcom/iflytek/sunflower/config/a;->t:Ljava/lang/String;

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v0, "updateConfigUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sput-object p2, Lcom/iflytek/sunflower/config/a;->u:Ljava/lang/String;

    goto :goto_a

    :cond_16
    const-string v0, "deviceid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sput-object p2, Lcom/iflytek/sunflower/config/a;->v:Ljava/lang/String;

    goto :goto_a

    :cond_21
    const-string v0, "caller.appid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sput-object p2, Lcom/iflytek/sunflower/config/a;->w:Ljava/lang/String;

    goto :goto_a

    :cond_2c
    const-string v0, "net.mac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sput-object p2, Lcom/iflytek/sunflower/config/a;->x:Ljava/lang/String;

    goto :goto_a

    :cond_37
    sget-object v0, Lcom/iflytek/sunflower/config/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/iflytek/sunflower/c/g;->b(Z)V

    goto :goto_a
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/sunflower/task/c;

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/sunflower/task/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/iflytek/sunflower/a;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/iflytek/sunflower/a;->c()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sunflower/task/d;

    sget-object v2, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/iflytek/sunflower/task/d;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .registers 4

    sget-object v0, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iflytek/sunflower/config/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "Collector"

    const-string v1, "onPause called without context from corresponding onResume"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sunflower/task/g;

    sget-object v2, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/sunflower/task/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/iflytek/sunflower/b;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/sunflower/b;-><init>(Lcom/iflytek/sunflower/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/sunflower/task/c;

    const/4 v2, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/sunflower/task/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sunflower/task/SendTask;

    sget-object v2, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/sunflower/task/SendTask;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/iflytek/sunflower/c;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/sunflower/c;-><init>(Lcom/iflytek/sunflower/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/sunflower/task/c;

    const/4 v2, 0x2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/sunflower/task/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/iflytek/sunflower/a;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/iflytek/sunflower/a;->c()V

    :cond_18
    return-void
.end method
