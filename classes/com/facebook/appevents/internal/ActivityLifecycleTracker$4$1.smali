.class Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

.field private final synthetic val$activityName:Ljava/lang/String;

.field private final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;->this$1:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    iput-object p2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;->val$activityName:Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 242
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$6()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_20

    .line 244
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;->val$applicationContext:Landroid/content/Context;

    .line 245
    iget-object v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;->val$activityName:Ljava/lang/String;

    .line 246
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$2()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    .line 247
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$3()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/facebook/appevents/internal/SessionInfo;->clearSavedSessionFromDisk()V

    .line 249
    invoke-static {v4}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$4(Lcom/facebook/appevents/internal/SessionInfo;)V

    .line 252
    :cond_20
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFutureLock:Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$7()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 253
    const/4 v0, 0x0

    :try_start_26
    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$8(Ljava/util/concurrent/ScheduledFuture;)V

    .line 252
    monitor-exit v1

    .line 255
    return-void

    .line 252
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw v0
.end method
