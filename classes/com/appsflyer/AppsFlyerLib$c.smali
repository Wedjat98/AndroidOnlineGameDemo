.class final Lcom/appsflyer/AppsFlyerLib$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private ˊ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic ˎ:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 3311
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$c;->ˎ:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$c;->ˊ:Ljava/lang/ref/WeakReference;

    .line 3312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$c;->ˊ:Ljava/lang/ref/WeakReference;

    .line 3313
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 17

    .prologue
    const/4 v11, 0x0

    .line 3316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˎ:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->ˋ(Lcom/appsflyer/AppsFlyerLib;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3357
    :cond_b
    :goto_b
    return-void

    .line 3319
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˎ:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/appsflyer/AppsFlyerLib;->ˎ(Lcom/appsflyer/AppsFlyerLib;J)J

    .line 3320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˊ:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_b

    .line 3323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˎ:Lcom/appsflyer/AppsFlyerLib;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/appsflyer/AppsFlyerLib;->ˏ(Lcom/appsflyer/AppsFlyerLib;Z)Z

    .line 3325
    :try_start_25
    const-string v2, "AppsFlyerKey"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->ॱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3326
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˊ:Ljava/lang/ref/WeakReference;

    monitor-enter v9
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_ba
    .catchall {:try_start_25 .. :try_end_30} :catchall_e4

    .line 3327
    :try_start_30
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v3, v2}, Lcom/appsflyer/cache/CacheManager;->getCachedRequests(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_46
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/appsflyer/cache/RequestCacheData;

    move-object v7, v0

    .line 3329
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resending request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_30 .. :try_end_6a} :catchall_b7

    .line 3334
    :try_start_6a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3335
    invoke-virtual {v7}, Lcom/appsflyer/cache/RequestCacheData;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 3336
    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    .line 3338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˎ:Lcom/appsflyer/AppsFlyerLib;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&isCachedRequest=true&timeincache="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3339
    invoke-virtual {v7}, Lcom/appsflyer/cache/RequestCacheData;->getPostData()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˊ:Ljava/lang/ref/WeakReference;

    .line 3342
    invoke-virtual {v7}, Lcom/appsflyer/cache/RequestCacheData;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 3338
    invoke-static/range {v2 .. v8}, Lcom/appsflyer/AppsFlyerLib;->ॱ(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_af} :catch_b0
    .catchall {:try_start_6a .. :try_end_af} :catchall_b7

    goto :goto_46

    .line 3345
    :catch_b0
    move-exception v2

    .line 3346
    :try_start_b1
    const-string v3, "Failed to resend cached request"

    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b6
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_b7

    goto :goto_46

    .line 3349
    :catchall_b7
    move-exception v2

    :try_start_b8
    monitor-exit v9

    throw v2
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_ba} :catch_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_e4

    .line 3350
    :catch_ba
    move-exception v2

    .line 3351
    :try_start_bb
    const-string v3, "failed to check cache. "

    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_e4

    .line 3353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˎ:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v2, v11}, Lcom/appsflyer/AppsFlyerLib;->ˏ(Lcom/appsflyer/AppsFlyerLib;Z)Z

    .line 3355
    :goto_c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˎ:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->ˏ(Lcom/appsflyer/AppsFlyerLib;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 3356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˎ:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->ˊ(Lcom/appsflyer/AppsFlyerLib;)Ljava/util/concurrent/ScheduledExecutorService;

    goto/16 :goto_b

    .line 3349
    :cond_db
    :try_start_db
    monitor-exit v9
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_b7

    .line 3353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˎ:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v2, v11}, Lcom/appsflyer/AppsFlyerLib;->ˏ(Lcom/appsflyer/AppsFlyerLib;Z)Z

    goto :goto_c7

    :catchall_e4
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/appsflyer/AppsFlyerLib$c;->ˎ:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v3, v11}, Lcom/appsflyer/AppsFlyerLib;->ˏ(Lcom/appsflyer/AppsFlyerLib;Z)Z

    throw v2
.end method
