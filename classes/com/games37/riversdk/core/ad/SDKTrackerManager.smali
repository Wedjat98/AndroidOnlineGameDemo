.class public Lcom/games37/riversdk/core/ad/SDKTrackerManager;
.super Ljava/lang/Object;
.source "SDKTrackerManager.java"


# static fields
.field public static final REPORT_INSTALL_INFO:I = 0x2710

.field public static final TAG:Ljava/lang/String; = "SDKTrackerManager"

.field private static mActivity:Landroid/app/Activity;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$1;

    invoke-direct {v0}, Lcom/games37/riversdk/core/ad/SDKTrackerManager$1;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Activity;Landroid/os/Bundle;I)V
    .registers 3
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->report(Landroid/app/Activity;Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Activity;Landroid/os/Bundle;I)V
    .registers 3
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->startGMTracker(Landroid/app/Activity;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    sput-object p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->mActivity:Landroid/app/Activity;

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FirstRunFlag"

    invoke-static {v1, v2, v3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, "isFirst":Z
    if-nez v0, :cond_1b

    .line 65
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/games37/riversdk/core/model/UserInformation;->setFirstRunFlag(I)V

    .line 70
    :goto_17
    invoke-static {p0, p1, v4}, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->startGMTracker(Landroid/app/Activity;Landroid/os/Bundle;I)V

    .line 71
    return-void

    .line 67
    :cond_1b
    invoke-static {}, Lcom/games37/riversdk/core/model/UserInformation;->getInstance()Lcom/games37/riversdk/core/model/UserInformation;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/games37/riversdk/core/model/UserInformation;->setFirstRunFlag(I)V

    goto :goto_17
.end method

.method private static report(Landroid/app/Activity;Landroid/os/Bundle;I)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestBundle"    # Landroid/os/Bundle;
    .param p2, "requestCount"    # I

    .prologue
    .line 117
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "install_url":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 120
    new-instance v3, Lcom/games37/riversdk/core/model/RequestEntity;

    invoke-direct {v3, p1}, Lcom/games37/riversdk/core/model/RequestEntity;-><init>(Landroid/os/Bundle;)V

    .line 121
    .local v3, "requestEntity":Lcom/games37/riversdk/core/model/RequestEntity;
    invoke-static {}, Lcom/games37/riversdk/core/net/DoRequestUtil;->getInstance()Lcom/games37/riversdk/core/net/DoRequestUtil;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;

    invoke-direct {v5, p0, p1, p2}, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;-><init>(Landroid/app/Activity;Landroid/os/Bundle;I)V

    move-object v1, p0

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/games37/riversdk/core/net/DoRequestUtil;->doPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/games37/riversdk/core/callback/NetCallback;)V

    .line 142
    return-void
.end method

.method private static startGMTracker(Landroid/app/Activity;Landroid/os/Bundle;I)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestBundle"    # Landroid/os/Bundle;
    .param p2, "requestCount"    # I

    .prologue
    .line 82
    const/4 v0, 0x3

    if-le p2, v0, :cond_4

    .line 104
    :goto_3
    return-void

    .line 86
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/games37/riversdk/core/ad/SDKTrackerManager$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/games37/riversdk/core/ad/SDKTrackerManager$2;-><init>(Landroid/app/Activity;ILandroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3
.end method
