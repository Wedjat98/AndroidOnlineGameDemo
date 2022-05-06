.class public Lcom/ad/sdk/ADManager;
.super Ljava/lang/Object;
.source "ADManager.java"


# static fields
.field private static sAdManager:Lcom/ad/sdk/ADManager;


# instance fields
.field private mAdConfig:Lcom/ad/sdk/config/ADConfig;

.field private mAdWordsManager:Lcom/ad/sdk/adwords/AdWordsManager;

.field private mAppsFlyerManager:Lcom/ad/sdk/appsflyer/AppsFlyerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/ad/sdk/ADManager;->sAdManager:Lcom/ad/sdk/ADManager;

    return-void
.end method

.method private constructor <init>(Lcom/ad/sdk/config/ADConfig;)V
    .registers 6
    .param p1, "adConfig"    # Lcom/ad/sdk/config/ADConfig;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/ad/sdk/ADManager;->mAdConfig:Lcom/ad/sdk/config/ADConfig;

    .line 52
    iget-object v0, p0, Lcom/ad/sdk/ADManager;->mAdConfig:Lcom/ad/sdk/config/ADConfig;

    invoke-virtual {v0}, Lcom/ad/sdk/config/ADConfig;->isAppsFlyerEnable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 53
    new-instance v0, Lcom/ad/sdk/appsflyer/AppsFlyerManager;

    .line 54
    iget-object v1, p0, Lcom/ad/sdk/ADManager;->mAdConfig:Lcom/ad/sdk/config/ADConfig;

    invoke-virtual {v1}, Lcom/ad/sdk/config/ADConfig;->getAppsFlyerDevKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ad/sdk/appsflyer/AppsFlyerManager;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object v0, p0, Lcom/ad/sdk/ADManager;->mAppsFlyerManager:Lcom/ad/sdk/appsflyer/AppsFlyerManager;

    .line 57
    :cond_1a
    iget-object v0, p0, Lcom/ad/sdk/ADManager;->mAdConfig:Lcom/ad/sdk/config/ADConfig;

    invoke-virtual {v0}, Lcom/ad/sdk/config/ADConfig;->isAdWordsEnable()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 58
    new-instance v0, Lcom/ad/sdk/adwords/AdWordsManager;

    iget-object v1, p0, Lcom/ad/sdk/ADManager;->mAdConfig:Lcom/ad/sdk/config/ADConfig;

    invoke-virtual {v1}, Lcom/ad/sdk/config/ADConfig;->getAdWordsAppId()Ljava/lang/String;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/ad/sdk/ADManager;->mAdConfig:Lcom/ad/sdk/config/ADConfig;

    invoke-virtual {v2}, Lcom/ad/sdk/config/ADConfig;->getAdWordsFirstOpenLabel()Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-object v3, p0, Lcom/ad/sdk/ADManager;->mAdConfig:Lcom/ad/sdk/config/ADConfig;

    invoke-virtual {v3}, Lcom/ad/sdk/config/ADConfig;->getAdWordsFirstOpenValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ad/sdk/adwords/AdWordsManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object v0, p0, Lcom/ad/sdk/ADManager;->mAdWordsManager:Lcom/ad/sdk/adwords/AdWordsManager;

    .line 63
    :cond_3b
    sput-object p0, Lcom/ad/sdk/ADManager;->sAdManager:Lcom/ad/sdk/ADManager;

    .line 64
    return-void
.end method

.method public static clear()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/ad/sdk/ADManager;->sAdManager:Lcom/ad/sdk/ADManager;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/ad/sdk/ADManager;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/ad/sdk/ADManager;->sAdManager:Lcom/ad/sdk/ADManager;

    return-object v0
.end method

.method public static init(Lcom/ad/sdk/config/ADConfig;)V
    .registers 2
    .param p0, "adConfig"    # Lcom/ad/sdk/config/ADConfig;

    .prologue
    .line 46
    new-instance v0, Lcom/ad/sdk/ADManager;

    invoke-direct {v0, p0}, Lcom/ad/sdk/ADManager;-><init>(Lcom/ad/sdk/config/ADConfig;)V

    sput-object v0, Lcom/ad/sdk/ADManager;->sAdManager:Lcom/ad/sdk/ADManager;

    .line 47
    return-void
.end method


# virtual methods
.method public getAppsFlyerUniqueId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ad/sdk/ADManager;->mAdConfig:Lcom/ad/sdk/config/ADConfig;

    invoke-virtual {v0}, Lcom/ad/sdk/config/ADConfig;->isAppsFlyerEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 148
    iget-object v0, p0, Lcom/ad/sdk/ADManager;->mAppsFlyerManager:Lcom/ad/sdk/appsflyer/AppsFlyerManager;

    invoke-virtual {v0, p1}, Lcom/ad/sdk/appsflyer/AppsFlyerManager;->getAppsFlyerUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ad/sdk/ADManager;->mAdConfig:Lcom/ad/sdk/config/ADConfig;

    invoke-virtual {v0}, Lcom/ad/sdk/config/ADConfig;->isAppsFlyerEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 73
    iget-object v0, p0, Lcom/ad/sdk/ADManager;->mAppsFlyerManager:Lcom/ad/sdk/appsflyer/AppsFlyerManager;

    invoke-virtual {v0, p1}, Lcom/ad/sdk/appsflyer/AppsFlyerManager;->onCreate(Landroid/app/Activity;)V

    .line 76
    :cond_d
    iget-object v0, p0, Lcom/ad/sdk/ADManager;->mAdConfig:Lcom/ad/sdk/config/ADConfig;

    invoke-virtual {v0}, Lcom/ad/sdk/config/ADConfig;->isAdWordsEnable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 77
    iget-object v0, p0, Lcom/ad/sdk/ADManager;->mAdWordsManager:Lcom/ad/sdk/adwords/AdWordsManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ad/sdk/adwords/AdWordsManager;->onCreate(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 79
    :cond_1e
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 124
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    return-void
.end method
