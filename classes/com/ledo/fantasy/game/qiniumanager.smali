.class public Lcom/ledo/fantasy/game/qiniumanager;
.super Ljava/lang/Object;
.source "qiniumanager.java"


# static fields
.field static m_QiniuThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field static m_downloadFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static m_httpClient:Lcom/loopj/wanmei/android/http/AsyncHttpClient;

.field static m_uploadManager:Lcom/qiniu/android/storage/UploadManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_QiniuThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 26
    sput-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_uploadManager:Lcom/qiniu/android/storage/UploadManager;

    .line 27
    sput-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_httpClient:Lcom/loopj/wanmei/android/http/AsyncHttpClient;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_downloadFiles:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 76
    sget-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_downloadFiles:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_QiniuThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_24

    .line 78
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_QiniuThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 79
    :cond_24
    sget-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_httpClient:Lcom/loopj/wanmei/android/http/AsyncHttpClient;

    if-nez v0, :cond_2f

    .line 80
    new-instance v0, Lcom/loopj/wanmei/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_httpClient:Lcom/loopj/wanmei/android/http/AsyncHttpClient;

    .line 81
    :cond_2f
    sget-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_httpClient:Lcom/loopj/wanmei/android/http/AsyncHttpClient;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_httpClient:Lcom/loopj/wanmei/android/http/AsyncHttpClient;

    sget-object v1, Lcom/ledo/fantasy/game/qiniumanager;->m_QiniuThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 83
    sget-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_httpClient:Lcom/loopj/wanmei/android/http/AsyncHttpClient;

    invoke-virtual {v0, p3}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 84
    sget-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_httpClient:Lcom/loopj/wanmei/android/http/AsyncHttpClient;

    new-instance v1, Lcom/ledo/fantasy/game/qiniumanager$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/ledo/fantasy/game/qiniumanager$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/loopj/wanmei/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/wanmei/android/http/AsyncHttpResponseHandler;)V

    .line 136
    return-void
.end method

.method public static UploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_uploadManager:Lcom/qiniu/android/storage/UploadManager;

    if-nez v0, :cond_7

    .line 46
    invoke-static {}, Lcom/ledo/fantasy/game/qiniumanager;->initQiniu()V

    .line 48
    :cond_7
    sget-object v0, Lcom/ledo/fantasy/game/qiniumanager;->m_uploadManager:Lcom/qiniu/android/storage/UploadManager;

    .line 49
    new-instance v4, Lcom/ledo/fantasy/game/qiniumanager$1;

    invoke-direct {v4}, Lcom/ledo/fantasy/game/qiniumanager$1;-><init>()V

    .line 61
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 62
    return-void
.end method

.method public static initQiniu()V
    .registers 3

    .prologue
    .line 32
    new-instance v1, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {v1}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    .line 33
    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize(I)Lcom/qiniu/android/storage/Configuration$Builder;

    move-result-object v1

    .line 34
    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Lcom/qiniu/android/storage/Configuration$Builder;->putThreshhold(I)Lcom/qiniu/android/storage/Configuration$Builder;

    move-result-object v1

    .line 35
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/qiniu/android/storage/Configuration$Builder;->connectTimeout(I)Lcom/qiniu/android/storage/Configuration$Builder;

    move-result-object v1

    .line 36
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/qiniu/android/storage/Configuration$Builder;->responseTimeout(I)Lcom/qiniu/android/storage/Configuration$Builder;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object v0

    .line 39
    .local v0, "config":Lcom/qiniu/android/storage/Configuration;
    new-instance v1, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v1, v0}, Lcom/qiniu/android/storage/UploadManager;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    sput-object v1, Lcom/ledo/fantasy/game/qiniumanager;->m_uploadManager:Lcom/qiniu/android/storage/UploadManager;

    .line 40
    return-void
.end method
