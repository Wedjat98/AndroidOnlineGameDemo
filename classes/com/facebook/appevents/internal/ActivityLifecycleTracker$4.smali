.class Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityName:Ljava/lang/String;

.field private final synthetic val$applicationContext:Landroid/content/Context;

.field private final synthetic val$currentTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$applicationContext:Landroid/content/Context;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 228
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$2()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    if-nez v3, :cond_17

    .line 231
    new-instance v3, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$4(Lcom/facebook/appevents/internal/SessionInfo;)V

    .line 234
    :cond_17
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$2()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 235
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$6()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-gtz v3, :cond_4f

    .line 239
    new-instance v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;

    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$applicationContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v6}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;-><init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    .local v2, "task":Ljava/lang/Runnable;
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFutureLock:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$7()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 259
    :try_start_3c
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$9()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 261
    # invokes: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getSessionTimeoutInSeconds()I
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$5()I

    move-result v7

    int-to-long v8, v7

    .line 262
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 259
    invoke-interface {v3, v2, v8, v9, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$8(Ljava/util/concurrent/ScheduledFuture;)V

    .line 258
    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_6b

    .line 267
    .end local v2    # "task":Ljava/lang/Runnable;
    :cond_4f
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentActivityAppearTime:J
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$10()J

    move-result-wide v0

    .line 268
    .local v0, "appearTime":J
    cmp-long v3, v0, v4

    if-lez v3, :cond_5e

    .line 269
    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 272
    .local v4, "timeSpentOnActivityInSeconds":J
    :cond_5e
    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    .line 271
    invoke-static {v3, v4, v5}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivityTimeSpentEvent(Ljava/lang/String;J)V

    .line 276
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$2()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V

    .line 277
    return-void

    .line 258
    .end local v0    # "appearTime":J
    .end local v4    # "timeSpentOnActivityInSeconds":J
    .restart local v2    # "task":Ljava/lang/Runnable;
    :catchall_6b
    move-exception v3

    :try_start_6c
    monitor-exit v6
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v3
.end method
