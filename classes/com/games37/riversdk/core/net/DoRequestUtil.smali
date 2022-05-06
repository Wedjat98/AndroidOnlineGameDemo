.class public Lcom/games37/riversdk/core/net/DoRequestUtil;
.super Ljava/lang/Object;
.source "DoRequestUtil.java"


# static fields
.field public static final DISMISS_PROGRESS:I = 0x2711

.field public static final SHOW_PROGRESS:I = 0x2710

.field public static final TAG:Ljava/lang/String; = "DoRequestUtil"

.field private static volatile instance:Lcom/games37/riversdk/core/net/DoRequestUtil;

.field private static mActivity:Landroid/app/Activity;

.field private static mHandler:Landroid/os/Handler;

.field private static mProgressDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/core/view/SDKProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/net/DoRequestUtil;->mProgressDialogMap:Ljava/util/Map;

    .line 74
    new-instance v0, Lcom/games37/riversdk/core/net/DoRequestUtil$1;

    invoke-direct {v0}, Lcom/games37/riversdk/core/net/DoRequestUtil$1;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/net/DoRequestUtil;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/games37/riversdk/core/net/DoRequestUtil;->showProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/games37/riversdk/core/net/DoRequestUtil;->dismissProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/net/DoRequestUtil;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/net/DoRequestUtil;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/net/DoRequestUtil;->sendDismissProgressMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/net/DoRequestUtil;Landroid/content/Context;Ljava/lang/Throwable;Lcom/games37/riversdk/core/callback/NetCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/games37/riversdk/core/net/DoRequestUtil;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/Throwable;
    .param p3, "x3"    # Lcom/games37/riversdk/core/callback/NetCallback;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/net/DoRequestUtil;->requestFailureCallback(Landroid/content/Context;Ljava/lang/Throwable;Lcom/games37/riversdk/core/callback/NetCallback;)V

    return-void
.end method

.method private static dismissProgress(Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mProgressDialogMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 116
    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mProgressDialogMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/view/SDKProgressDialog;

    .line 117
    .local v0, "progressDialog":Lcom/games37/riversdk/core/view/SDKProgressDialog;
    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->dismissWithCheck(Landroid/app/Dialog;)V

    .line 119
    .end local v0    # "progressDialog":Lcom/games37/riversdk/core/view/SDKProgressDialog;
    :cond_19
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/games37/riversdk/core/net/DoRequestUtil;->instance:Lcom/games37/riversdk/core/net/DoRequestUtil;

    if-nez v0, :cond_13

    .line 65
    const-class v1, Lcom/games37/riversdk/core/net/DoRequestUtil;

    monitor-enter v1

    .line 66
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/net/DoRequestUtil;->instance:Lcom/games37/riversdk/core/net/DoRequestUtil;

    if-nez v0, :cond_12

    .line 67
    new-instance v0, Lcom/games37/riversdk/core/net/DoRequestUtil;

    invoke-direct {v0}, Lcom/games37/riversdk/core/net/DoRequestUtil;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/net/DoRequestUtil;->instance:Lcom/games37/riversdk/core/net/DoRequestUtil;

    .line 69
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 71
    :cond_13
    sget-object v0, Lcom/games37/riversdk/core/net/DoRequestUtil;->instance:Lcom/games37/riversdk/core/net/DoRequestUtil;

    return-object v0

    .line 69
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private requestFailureCallback(Landroid/content/Context;Ljava/lang/Throwable;Lcom/games37/riversdk/core/callback/NetCallback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Throwable;",
            "Lcom/games37/riversdk/core/callback/NetCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p3, "callback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    if-eqz p3, :cond_19

    .line 462
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "msg":Ljava/lang/String;
    if-eqz p1, :cond_16

    instance-of v1, p2, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_16

    .line 465
    const-string v1, "r1_sdk_request_timeout"

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    :cond_16
    invoke-interface {p3, v0}, Lcom/games37/riversdk/core/callback/NetCallback;->callbackError(Ljava/lang/String;)V

    .line 469
    .end local v0    # "msg":Ljava/lang/String;
    :cond_19
    return-void
.end method

.method private sendDismissProgressMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 498
    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_19

    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 499
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 500
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    const/16 v1, 0x2711

    iput v1, v0, Landroid/os/Message;->what:I

    .line 502
    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    .end local v0    # "msg":Landroid/os/Message;
    :cond_19
    return-void
.end method

.method private sendShowProgressMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 478
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_29

    .line 479
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    sput-object p1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mActivity:Landroid/app/Activity;

    .line 480
    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_29

    .line 482
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 483
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 484
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 485
    const/16 v1, 0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 486
    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 489
    .end local v0    # "msg":Landroid/os/Message;
    :cond_29
    return-void
.end method

.method private static showProgress(Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 101
    new-instance v0, Lcom/games37/riversdk/core/view/SDKProgressDialog;

    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/games37/riversdk/core/view/SDKProgressDialog;-><init>(Landroid/app/Activity;)V

    .line 102
    .local v0, "progressDialog":Lcom/games37/riversdk/core/view/SDKProgressDialog;
    invoke-virtual {v0}, Lcom/games37/riversdk/core/view/SDKProgressDialog;->showDialog()V

    .line 103
    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mProgressDialogMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 104
    sget-object v1, Lcom/games37/riversdk/core/net/DoRequestUtil;->mProgressDialogMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .end local v0    # "progressDialog":Lcom/games37/riversdk/core/view/SDKProgressDialog;
    :cond_1f
    return-void
.end method


# virtual methods
.method public cancelRequest(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 517
    :goto_6
    return-void

    .line 515
    :cond_7
    new-instance v0, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;

    invoke-direct {v0}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;-><init>()V

    .line 516
    .local v0, "okHttpProxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    invoke-virtual {v0, p1}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->cancel(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public declared-synchronized doGetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/games37/riversdk/core/callback/NetCallback;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/games37/riversdk/core/callback/NetCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "callback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    monitor-enter p0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doGetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doGetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "isShowProgress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/games37/riversdk/core/callback/NetCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "callback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    monitor-enter p0

    :try_start_1
    const-string v1, "DoRequestUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doGetRequest url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 151
    const-string v1, "DoRequestUtil"

    const-string v2, "doGetRequest the url is empty"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_55

    .line 194
    :goto_26
    monitor-exit p0

    return-void

    .line 155
    :cond_28
    if-eqz p4, :cond_2d

    .line 156
    :try_start_2a
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/net/DoRequestUtil;->sendShowProgressMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    :cond_2d
    new-instance v0, Lcom/games37/riversdk/core/net/DoRequestUtil$2;

    new-instance v2, Lcom/games37/riversdk/net/okhttp/plus/parser/OkTextParser;

    invoke-direct {v2}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkTextParser;-><init>()V

    move-object v1, p0

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/games37/riversdk/core/net/DoRequestUtil$2;-><init>(Lcom/games37/riversdk/core/net/DoRequestUtil;Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;ZLandroid/content/Context;Ljava/lang/String;Lcom/games37/riversdk/core/callback/NetCallback;)V

    .line 188
    .local v0, "okCallback":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback<Ljava/lang/String;>;"
    new-instance v7, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;

    invoke-direct {v7}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;-><init>()V

    .line 189
    .local v7, "proxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    invoke-virtual {v7}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->get()Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;

    move-result-object v1

    .line 190
    invoke-virtual {v1, p2}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url(Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {v1, p2}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->tag(Ljava/lang/Object;)Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {v1, p3}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->setParams(Ljava/util/Map;)Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->enqueue(Lokhttp3/Callback;)Lokhttp3/Call;
    :try_end_54
    .catchall {:try_start_2a .. :try_end_54} :catchall_55

    goto :goto_26

    .line 149
    .end local v0    # "okCallback":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback<Ljava/lang/String;>;"
    .end local v7    # "proxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    :catchall_55
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized doGetRequestSync(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Response;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Response;"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 205
    monitor-enter p0

    :try_start_2
    const-string v3, "DoRequestUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doGetRequestSync url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 207
    const-string v3, "DoRequestUtil"

    const-string v4, "doGetRequestSync the url is empty"

    invoke-static {v3, v4}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_48

    .line 220
    :goto_27
    monitor-exit p0

    return-object v2

    .line 211
    :cond_29
    :try_start_29
    new-instance v1, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;

    invoke-direct {v1}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;-><init>()V

    .line 212
    .local v1, "proxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    invoke-virtual {v1}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->get()Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;

    move-result-object v3

    .line 213
    invoke-virtual {v3, p1}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->url(Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;

    move-result-object v3

    .line 214
    invoke-virtual {v3, p1}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->tag(Ljava/lang/Object;)Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;

    move-result-object v3

    .line 215
    invoke-virtual {v3, p2}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->setParams(Ljava/util/Map;)Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Lcom/games37/riversdk/net/okhttp/plus/builder/GetRequestBuilder;->execute()Lokhttp3/Response;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_41} :catch_43
    .catchall {:try_start_29 .. :try_end_41} :catchall_48

    move-result-object v2

    .line 217
    .local v2, "response":Lokhttp3/Response;
    goto :goto_27

    .line 218
    .end local v1    # "proxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    .end local v2    # "response":Lokhttp3/Response;
    :catch_43
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    :try_start_44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_27

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/games37/riversdk/core/callback/NetCallback;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/games37/riversdk/core/callback/NetCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "callback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    monitor-enter p0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 237
    monitor-exit p0

    return-void

    .line 236
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "isShowProgress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/games37/riversdk/core/callback/NetCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "callback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    monitor-enter p0

    :try_start_1
    const-string v1, "DoRequestUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPostRequest url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {p2}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 255
    const-string v1, "DoRequestUtil"

    const-string v2, "doPostRequest the url is empty"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_55

    .line 300
    :goto_26
    monitor-exit p0

    return-void

    .line 259
    :cond_28
    if-eqz p4, :cond_2d

    .line 260
    :try_start_2a
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/net/DoRequestUtil;->sendShowProgressMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    :cond_2d
    new-instance v0, Lcom/games37/riversdk/core/net/DoRequestUtil$3;

    new-instance v2, Lcom/games37/riversdk/net/okhttp/plus/parser/OkTextParser;

    invoke-direct {v2}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkTextParser;-><init>()V

    move-object v1, p0

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/games37/riversdk/core/net/DoRequestUtil$3;-><init>(Lcom/games37/riversdk/core/net/DoRequestUtil;Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;ZLandroid/content/Context;Ljava/lang/String;Lcom/games37/riversdk/core/callback/NetCallback;)V

    .line 294
    .local v0, "okCallback":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback<Ljava/lang/String;>;"
    new-instance v7, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;

    invoke-direct {v7}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;-><init>()V

    .line 295
    .local v7, "proxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    invoke-virtual {v7}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->post()Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;

    move-result-object v1

    .line 296
    invoke-virtual {v1, p2}, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->url(Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;

    move-result-object v1

    .line 297
    invoke-virtual {v1, p2}, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->tag(Ljava/lang/Object;)Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;

    move-result-object v1

    .line 298
    invoke-virtual {v1, p3}, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->setParams(Ljava/util/Map;)Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;

    move-result-object v1

    .line 299
    invoke-virtual {v1, v0}, Lcom/games37/riversdk/net/okhttp/plus/builder/PostRequestBuilder;->enqueue(Lokhttp3/Callback;)Lokhttp3/Call;
    :try_end_54
    .catchall {:try_start_2a .. :try_end_54} :catchall_55

    goto :goto_26

    .line 253
    .end local v0    # "okCallback":Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback;, "Lcom/games37/riversdk/net/okhttp/plus/callback/OkCallback<Ljava/lang/String;>;"
    .end local v7    # "proxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    :catchall_55
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/games37/riversdk/core/callback/NetCallback;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "isShowProgress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/games37/riversdk/core/callback/NetCallback",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p6, "callback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Ljava/io/File;>;"
    monitor-enter p0

    :try_start_1
    const-string v0, "DoRequestUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadFile url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 408
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 411
    :cond_3b
    if-eqz p5, :cond_40

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/net/DoRequestUtil;->sendShowProgressMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    :cond_40
    new-instance v9, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;

    invoke-direct {v9}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;-><init>()V

    .line 415
    .local v9, "okHttpProxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    new-instance v0, Lcom/games37/riversdk/core/net/DoRequestUtil$5;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move v4, p5

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/games37/riversdk/core/net/DoRequestUtil$5;-><init>(Lcom/games37/riversdk/core/net/DoRequestUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/games37/riversdk/core/callback/NetCallback;)V

    invoke-virtual {v9, p2, v0}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->download(Ljava/lang/String;Lcom/games37/riversdk/net/okhttp/plus/listener/DownloadListener;)Lokhttp3/Call;
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_57

    .line 449
    monitor-exit p0

    return-void

    .line 403
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "okHttpProxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uploadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fileParamsKey"    # Ljava/lang/String;
    .param p4, "filePath"    # Ljava/lang/String;
    .param p6, "isShowProgress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/games37/riversdk/core/callback/NetCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "callback":Lcom/games37/riversdk/core/callback/NetCallback;, "Lcom/games37/riversdk/core/callback/NetCallback<Lorg/json/JSONObject;>;"
    monitor-enter p0

    :try_start_1
    const-string v2, "DoRequestUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFile url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fileParamsKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " filePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_41

    .line 325
    const-string v2, "file is not exist!"

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Lcom/games37/riversdk/core/callback/NetCallback;->callbackError(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_7b

    .line 385
    :goto_3f
    monitor-exit p0

    return-void

    .line 329
    :cond_41
    if-eqz p6, :cond_46

    .line 330
    :try_start_43
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/net/DoRequestUtil;->sendShowProgressMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    :cond_46
    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, p3, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    .local v10, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v1, Lcom/games37/riversdk/core/net/DoRequestUtil$4;

    new-instance v3, Lcom/games37/riversdk/net/okhttp/plus/parser/OkTextParser;

    invoke-direct {v3}, Lcom/games37/riversdk/net/okhttp/plus/parser/OkTextParser;-><init>()V

    move-object v2, p0

    move/from16 v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/games37/riversdk/core/net/DoRequestUtil$4;-><init>(Lcom/games37/riversdk/core/net/DoRequestUtil;Lcom/games37/riversdk/net/okhttp/plus/parser/OkBaseParser;ZLandroid/content/Context;Ljava/lang/String;Lcom/games37/riversdk/core/callback/NetCallback;)V

    .line 379
    .local v1, "listener":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener<Ljava/lang/String;>;"
    new-instance v9, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;

    invoke-direct {v9}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;-><init>()V

    .line 380
    .local v9, "okHttpProxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    invoke-virtual {v9}, Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;->upload()Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->url(Ljava/lang/String;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;

    move-result-object v2

    .line 381
    invoke-virtual {v2, p2}, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->tag(Ljava/lang/Object;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;

    move-result-object v2

    .line 382
    invoke-virtual {v2, v10}, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->file(Landroid/util/Pair;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;

    move-result-object v2

    .line 383
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->setParams(Ljava/util/Map;)Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;

    move-result-object v2

    .line 384
    invoke-virtual {v2, v1}, Lcom/games37/riversdk/net/okhttp/plus/builder/UploadRequestBuilder;->start(Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;)Lokhttp3/Call;
    :try_end_7a
    .catchall {:try_start_43 .. :try_end_7a} :catchall_7b

    goto :goto_3f

    .line 320
    .end local v1    # "listener":Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener;, "Lcom/games37/riversdk/net/okhttp/plus/listener/UploadListener<Ljava/lang/String;>;"
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "okHttpProxy":Lcom/games37/riversdk/net/okhttp/plus/OkHttpProxy;
    .end local v10    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    :catchall_7b
    move-exception v2

    monitor-exit p0

    throw v2
.end method
