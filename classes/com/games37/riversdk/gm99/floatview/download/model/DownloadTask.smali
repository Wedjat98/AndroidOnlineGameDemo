.class public Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;
    }
.end annotation


# static fields
.field public static final FILE_DIR_NAME:Ljava/lang/String; = "RIVER_SDK_FLOAT_VIEW"

.field public static final MAX_RESUPPLY_TIME:I = 0x2

.field public static final TAG:Ljava/lang/String; = "DownloadTask"


# instance fields
.field private mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

.field private mContext:Landroid/content/Context;

.field private mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

.field private mDownloadThreadPoolManager:Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;

.field private mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

.field private mRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;)V
    .registers 5
    .param p1, "downloadInfo"    # Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-object v2, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mTask:Ljava/lang/Runnable;

    .line 45
    iput-object v2, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadThreadPoolManager:Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;

    .line 47
    iput-object v2, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    .line 54
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V
    .registers 1
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->download()V

    return-void
.end method

.method private download()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 135
    const-string v4, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download downloadInfo = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_af

    const-string v3, "null"

    :goto_1d
    invoke-static {v4, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 138
    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 139
    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 142
    const/4 v2, 0x0

    .line 144
    .local v2, "file":Ljava/io/File;
    :try_start_3d
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 145
    invoke-virtual {v4}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    .line 146
    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/RequestBuilder;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v3

    .line 147
    invoke-interface {v3}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/io/File;

    move-object v2, v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5d} :catch_f5
    .catchall {:try_start_3d .. :try_end_5d} :catchall_1c3

    .line 153
    if-eqz v2, :cond_b7

    .line 154
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download[url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 155
    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] success!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_9c

    .line 158
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    :cond_9c
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_a5

    .line 162
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    :cond_a5
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    if-eqz v3, :cond_ae

    .line 166
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    invoke-interface {v3}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;->onSuccess()V

    .line 177
    .end local v2    # "file":Ljava/io/File;
    :cond_ae
    :goto_ae
    return-void

    .line 135
    :cond_af
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 136
    invoke-virtual {v3}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1d

    .line 169
    .restart local v2    # "file":Ljava/io/File;
    :cond_b7
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download[url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 170
    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] fail!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    if-eqz v3, :cond_ae

    .line 172
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    invoke-interface {v3}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;->onFailure()V

    goto :goto_ae

    .line 148
    :catch_f5
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    :try_start_f6
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download[url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 150
    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_131
    .catchall {:try_start_f6 .. :try_end_131} :catchall_1c3

    .line 153
    if-eqz v2, :cond_184

    .line 154
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download[url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 155
    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] success!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_170

    .line 158
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    :cond_170
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_179

    .line 162
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    :cond_179
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    if-eqz v3, :cond_ae

    .line 166
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    invoke-interface {v3}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;->onSuccess()V

    goto/16 :goto_ae

    .line 169
    :cond_184
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download[url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 170
    invoke-virtual {v5}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] fail!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    if-eqz v3, :cond_ae

    .line 172
    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    invoke-interface {v3}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;->onFailure()V

    goto/16 :goto_ae

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1c3
    move-exception v3

    if-eqz v2, :cond_216

    .line 154
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download[url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 155
    invoke-virtual {v6}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] success!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v4, :cond_203

    .line 158
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    :cond_203
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v4, :cond_20c

    .line 162
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    :cond_20c
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    if-eqz v4, :cond_215

    .line 166
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    invoke-interface {v4}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;->onSuccess()V

    .line 172
    :cond_215
    :goto_215
    throw v3

    .line 169
    :cond_216
    const-string v4, "DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download[url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    .line 170
    invoke-virtual {v6}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    if-eqz v4, :cond_215

    .line 172
    iget-object v4, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    invoke-interface {v4}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;->onFailure()V

    goto :goto_215
.end method

.method private getFilePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mContext:Landroid/content/Context;

    const-string v2, "RIVER_SDK_FLOAT_VIEW"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/CommonUtils;->getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 211
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_f

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 214
    :goto_e
    return-object v1

    :cond_f
    const-string v1, "/sdcard/riversdk/floatview/"

    goto :goto_e
.end method

.method private runTask()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mTask:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 115
    new-instance v0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$1;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$1;-><init>(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V

    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mTask:Ljava/lang/Runnable;

    .line 128
    :cond_b
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadThreadPoolManager:Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;->runTask(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V

    .line 129
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mTask:Ljava/lang/Runnable;

    .line 219
    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 220
    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 221
    iput-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    return-void
.end method

.method public execute(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;Lcom/games37/riversdk/gm99/floatview/download/QueueManager;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "threadPoolManager"    # Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;
    .param p3, "queueManager"    # Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->execute(Landroid/content/Context;Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;Lcom/games37/riversdk/gm99/floatview/download/QueueManager;Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;)V

    .line 67
    return-void
.end method

.method public execute(Landroid/content/Context;Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;Lcom/games37/riversdk/gm99/floatview/download/QueueManager;Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadPoolManager"    # Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;
    .param p3, "queueManager"    # Lcom/games37/riversdk/gm99/floatview/download/QueueManager;
    .param p4, "callback"    # Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    .prologue
    .line 79
    if-eqz p1, :cond_49

    if-eqz p2, :cond_49

    if-eqz p3, :cond_49

    .line 82
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute task isSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retryTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mContext:Landroid/content/Context;

    .line 84
    iput-object p4, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mCallback:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;

    .line 85
    iput-object p2, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadThreadPoolManager:Lcom/games37/riversdk/gm99/floatview/download/DownloadThreadPoolManager;

    .line 86
    iput-object p3, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    .line 87
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 88
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->destory()V

    .line 89
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->remove(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V

    .line 90
    if-eqz p4, :cond_49

    .line 91
    invoke-interface {p4}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;->onSuccess()V

    .line 107
    :cond_49
    :goto_49
    return-void

    .line 95
    :cond_4a
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->getRetryTimes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5e

    .line 97
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->destory()V

    .line 98
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mQueueManager:Lcom/games37/riversdk/gm99/floatview/download/QueueManager;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/gm99/floatview/download/QueueManager;->remove(Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;)V

    .line 100
    if-eqz p4, :cond_5e

    .line 101
    invoke-interface {p4}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask$DownloadCallback;->onFailure()V

    .line 105
    :cond_5e
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->runTask()V

    goto :goto_49
.end method

.method public getDownloadInfo()Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mDownloadInfo:Lcom/games37/riversdk/gm99/floatview/download/model/DownloadInfo;

    return-object v0
.end method

.method public getRetryTimes()I
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_6

    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mRetryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_5
.end method

.method public getTask()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_6

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_5
.end method

.method public isSuccess()Z
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_6

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/download/model/DownloadTask;->mIsSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_5
.end method
