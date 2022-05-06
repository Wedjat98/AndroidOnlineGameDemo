.class Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityName:Ljava/lang/String;

.field private final synthetic val$applicationContext:Landroid/content/Context;

.field private final synthetic val$currentTime:J

.field private final synthetic val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/facebook/appevents/internal/SourceApplicationInfo;)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activityName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$currentTime:J

    iput-object p5, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 135
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$2()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v1

    if-nez v1, :cond_3c

    .line 137
    invoke-static {}, Lcom/facebook/appevents/internal/SessionInfo;->getStoredSessionInfo()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    .line 138
    .local v0, "lastSession":Lcom/facebook/appevents/internal/SessionInfo;
    if-eqz v0, :cond_17

    .line 140
    iget-object v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$applicationContext:Landroid/content/Context;

    .line 141
    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activityName:Ljava/lang/String;

    .line 143
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$3()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v1, v2, v0, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 146
    :cond_17
    new-instance v1, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$currentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$4(Lcom/facebook/appevents/internal/SessionInfo;)V

    .line 148
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$2()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/facebook/appevents/internal/SessionInfo;->setSourceApplicationInfo(Lcom/facebook/appevents/internal/SourceApplicationInfo;)V

    .line 150
    iget-object v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$applicationContext:Landroid/content/Context;

    .line 151
    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activityName:Ljava/lang/String;

    .line 152
    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    .line 153
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$3()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    .line 155
    .end local v0    # "lastSession":Lcom/facebook/appevents/internal/SessionInfo;
    :cond_3c
    return-void
.end method
