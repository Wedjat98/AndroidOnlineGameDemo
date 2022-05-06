.class public Lcom/ledo/fantasy/update/AsynFileDownloader;
.super Ljava/lang/Object;
.source "AsynFileDownloader.java"


# static fields
.field static m_DestDir:Ljava/lang/String;

.field static m_DownLoadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field static m_DownloadFailCnt:I

.field static m_DownloadList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static m_DownloadSucCnt:I

.field static m_Index:I

.field static m_ThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field static m_TotalCnt:I

.field static m_UrlPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadList:Ljava/util/Vector;

    .line 24
    sput v1, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadSucCnt:I

    .line 25
    sput v1, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadFailCnt:I

    .line 26
    sput v1, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_TotalCnt:I

    .line 27
    sput v1, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_Index:I

    .line 29
    sput-object v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_ThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    sput-object v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownLoadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Clear()V
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 42
    return-void
.end method

.method static DownLoadShutDown()V
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownLoadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_c

    .line 57
    sget-object v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownLoadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownLoadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    :cond_c
    return-void
.end method

.method static DownloadOneFileAsyn(Ljava/lang/String;)V
    .registers 2
    .param p0, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadList:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method static InitUrlAndDestdir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "urlprefix"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;

    .prologue
    .line 64
    sput-object p0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_UrlPrefix:Ljava/lang/String;

    .line 65
    sput-object p1, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DestDir:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static OnDownloadFailed(Ljava/lang/String;)V
    .registers 4
    .param p0, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 90
    sget v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadFailCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadFailCnt:I

    .line 91
    const-string v0, "main"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download failed m_TotalCnt:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_TotalCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadFailCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {p0}, Lcom/ledo/fantasy/update/AsynFileDownloader;->nativeNotifyDownFileFail(Ljava/lang/String;)V

    .line 95
    sget v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_TotalCnt:I

    sget v1, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadSucCnt:I

    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadFailCnt:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_5d

    .line 97
    const-string v0, "main"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download completed ! cnt:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadSucCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadFailCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/ledo/fantasy/update/AsynFileDownloader;->nativeNotifyCompletedFailed()V

    .line 101
    :cond_5d
    return-void
.end method

.method static OnDownloadSizeChanged(ILjava/lang/String;)V
    .registers 5
    .param p0, "notifysize"    # I
    .param p1, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "main"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download OnDownloadSizeChanged  notifysize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p0, p1}, Lcom/ledo/fantasy/update/AsynFileDownloader;->nativeNotifyDownSizeChanged(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method static OnDownloadSuc(Ljava/lang/String;)V
    .registers 4
    .param p0, "urlkey"    # Ljava/lang/String;

    .prologue
    .line 75
    sget v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadSucCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadSucCnt:I

    .line 76
    const-string v0, "main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " download success m_TotalCnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_TotalCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadSucCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p0}, Lcom/ledo/fantasy/update/AsynFileDownloader;->nativeNotifyDownFileSuc(Ljava/lang/String;)V

    .line 78
    sget v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_TotalCnt:I

    sget v1, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadSucCnt:I

    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadFailCnt:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_71

    .line 80
    const-string v0, "main"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download completed ! cnt:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadSucCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadFailCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadFailCnt:I

    if-lez v0, :cond_72

    .line 82
    invoke-static {}, Lcom/ledo/fantasy/update/AsynFileDownloader;->nativeNotifyCompletedFailed()V

    .line 86
    :cond_71
    :goto_71
    return-void

    .line 84
    :cond_72
    invoke-static {}, Lcom/ledo/fantasy/update/AsynFileDownloader;->nativeNotifyCompleted()V

    goto :goto_71
.end method

.method static ShutDown()V
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_ThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_c

    .line 48
    sget-object v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_ThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_ThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    :cond_c
    return-void
.end method

.method static StartDownload()V
    .registers 6

    .prologue
    .line 113
    const/4 v2, 0x0

    sput v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadFailCnt:I

    sput v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadSucCnt:I

    .line 114
    sget-object v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sput v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_TotalCnt:I

    .line 116
    sget-object v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_ThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v2, :cond_1b

    .line 117
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_ThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 119
    :cond_1b
    new-instance v0, Lcom/loopj/wanmei/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;-><init>()V

    .line 120
    .local v0, "client":Lcom/loopj/wanmei/android/http/AsyncHttpClient;
    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v0, v2, v3}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_ThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 123
    sget-object v2, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownloadList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_39

    .line 165
    return-void

    .line 123
    :cond_39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "urlkey":Ljava/lang/String;
    const-string v3, "main"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "download file url :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_UrlPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_UrlPrefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ledo/fantasy/update/AsynFileDownloader$1;

    sget-object v5, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DestDir:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Lcom/ledo/fantasy/update/AsynFileDownloader$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;)V

    goto :goto_32
.end method

.method public static StartDownloadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "index"    # I

    .prologue
    .line 169
    sget-object v1, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownLoadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_e

    .line 170
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v1, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownLoadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 172
    :cond_e
    new-instance v0, Lcom/loopj/wanmei/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;-><init>()V

    .line 173
    .local v0, "client":Lcom/loopj/wanmei/android/http/AsyncHttpClient;
    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_DownLoadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 175
    invoke-virtual {v0, p3}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 176
    sput p4, Lcom/ledo/fantasy/update/AsynFileDownloader;->m_Index:I

    .line 177
    new-instance v1, Lcom/ledo/fantasy/update/AsynFileDownloader$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/ledo/fantasy/update/AsynFileDownloader$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;)V

    .line 205
    return-void
.end method

.method static native nativeNotifyCompleted()V
.end method

.method static native nativeNotifyCompletedFailed()V
.end method

.method static native nativeNotifyDownFileFail(Ljava/lang/String;)V
.end method

.method static native nativeNotifyDownFileSuc(Ljava/lang/String;)V
.end method

.method static native nativeNotifyDownSizeChanged(ILjava/lang/String;)V
.end method
