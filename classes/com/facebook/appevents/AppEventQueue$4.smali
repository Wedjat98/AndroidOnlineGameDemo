.class Lcom/facebook/appevents/AppEventQueue$4;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventQueue;->add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field private final synthetic val$appEvent:Lcom/facebook/appevents/AppEvent;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$appEvent:Lcom/facebook/appevents/AppEvent;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 99
    # getter for: Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$1()Lcom/facebook/appevents/AppEventCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$appEvent:Lcom/facebook/appevents/AppEvent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/AppEventCollection;->addEvent(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    .line 101
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 101
    if-eq v0, v1, :cond_25

    .line 103
    # getter for: Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$1()Lcom/facebook/appevents/AppEventCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventCollection;->getEventCount()I

    move-result v0

    .line 104
    const/16 v1, 0x64

    if-le v0, v1, :cond_25

    .line 105
    sget-object v0, Lcom/facebook/appevents/FlushReason;->EVENT_THRESHOLD:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->flushAndWait(Lcom/facebook/appevents/FlushReason;)V

    .line 113
    :cond_24
    :goto_24
    return-void

    .line 106
    :cond_25
    # getter for: Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$3()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-nez v0, :cond_24

    .line 107
    # getter for: Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$4()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 108
    # getter for: Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$5()Ljava/lang/Runnable;

    move-result-object v1

    .line 109
    const-wide/16 v2, 0xf

    .line 110
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 107
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->access$0(Ljava/util/concurrent/ScheduledFuture;)V

    goto :goto_24
.end method
