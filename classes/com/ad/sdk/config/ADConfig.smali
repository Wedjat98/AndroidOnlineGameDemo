.class public Lcom/ad/sdk/config/ADConfig;
.super Ljava/lang/Object;
.source "ADConfig.java"


# instance fields
.field private mAdWordsAppId:Ljava/lang/String;

.field private mAdWordsEnable:Z

.field private mAdWordsFirstOpenLabel:Ljava/lang/String;

.field private mAdWordsFirstOpenValue:Ljava/lang/String;

.field private mAppsFlyerDevKey:Ljava/lang/String;

.field private mAppsFlyerEnable:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdWordsAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ad/sdk/config/ADConfig;->mAdWordsAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWordsFirstOpenLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ad/sdk/config/ADConfig;->mAdWordsFirstOpenLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWordsFirstOpenValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ad/sdk/config/ADConfig;->mAdWordsFirstOpenValue:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsFlyerDevKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ad/sdk/config/ADConfig;->mAppsFlyerDevKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAdWordsEnable()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/ad/sdk/config/ADConfig;->mAdWordsEnable:Z

    return v0
.end method

.method public isAppsFlyerEnable()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/ad/sdk/config/ADConfig;->mAppsFlyerEnable:Z

    return v0
.end method

.method public setAdWords(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "firstOpenLabel"    # Ljava/lang/String;
    .param p4, "firstOpenValue"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/ad/sdk/config/ADConfig;->mAdWordsEnable:Z

    .line 45
    if-eqz p1, :cond_a

    .line 46
    iput-object p2, p0, Lcom/ad/sdk/config/ADConfig;->mAdWordsAppId:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/ad/sdk/config/ADConfig;->mAdWordsFirstOpenLabel:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/ad/sdk/config/ADConfig;->mAdWordsFirstOpenValue:Ljava/lang/String;

    .line 50
    :cond_a
    return-void
.end method

.method public setAppsFlyer(ZLjava/lang/String;)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "devKey"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/ad/sdk/config/ADConfig;->mAppsFlyerEnable:Z

    .line 25
    if-eqz p1, :cond_6

    .line 26
    iput-object p2, p0, Lcom/ad/sdk/config/ADConfig;->mAppsFlyerDevKey:Ljava/lang/String;

    .line 28
    :cond_6
    return-void
.end method
