.class public Lcom/games37/riversdk/core/model/UserInformation;
.super Ljava/lang/Object;
.source "UserInformation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UserInformation"

.field private static instance:Lcom/games37/riversdk/core/model/UserInformation;

.field private static lock:[B


# instance fields
.field private appLanguage:Ljava/lang/String;

.field private appLocale:I

.field private binging_user:Ljava/lang/String;

.field private deepLinkURL:Ljava/lang/String;

.field private deeplinkFlag:I

.field private firstRunFlag:I

.field private gameToken:Ljava/lang/String;

.field private isBind:Z

.field private isInit:Z

.field private loginAccount:Ljava/lang/String;

.field private loginStatus:Z

.field private loginToken:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

.field private roleId:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private thirdPlatform:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userType:Lcom/games37/riversdk/core/login/model/UserType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/games37/riversdk/core/model/UserInformation;->lock:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->isInit:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->userType:Lcom/games37/riversdk/core/login/model/UserType;

    .line 31
    iput-boolean v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginStatus:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->userId:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->gameToken:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginToken:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->isBind:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->binging_user:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginAccount:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->serverId:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleName:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleId:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleLevel:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->appLanguage:Ljava/lang/String;

    .line 77
    iput v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->appLocale:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->thirdPlatform:Ljava/lang/String;

    .line 86
    iput v2, p0, Lcom/games37/riversdk/core/model/UserInformation;->firstRunFlag:I

    .line 90
    iput v2, p0, Lcom/games37/riversdk/core/model/UserInformation;->deeplinkFlag:I

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->deepLinkURL:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/games37/riversdk/core/model/UserInformation;->resetUserInformation()V

    .line 102
    new-instance v0, Lcom/games37/riversdk/core/login/dao/LoginDao;

    invoke-direct {v0}, Lcom/games37/riversdk/core/login/dao/LoginDao;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    .line 103
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/core/model/UserInformation;
    .registers 2

    .prologue
    .line 106
    sget-object v0, Lcom/games37/riversdk/core/model/UserInformation;->instance:Lcom/games37/riversdk/core/model/UserInformation;

    if-nez v0, :cond_13

    .line 107
    sget-object v1, Lcom/games37/riversdk/core/model/UserInformation;->lock:[B

    monitor-enter v1

    .line 108
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/model/UserInformation;->instance:Lcom/games37/riversdk/core/model/UserInformation;

    if-nez v0, :cond_12

    .line 109
    new-instance v0, Lcom/games37/riversdk/core/model/UserInformation;

    invoke-direct {v0}, Lcom/games37/riversdk/core/model/UserInformation;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/model/UserInformation;->instance:Lcom/games37/riversdk/core/model/UserInformation;

    .line 111
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 113
    :cond_13
    sget-object v0, Lcom/games37/riversdk/core/model/UserInformation;->instance:Lcom/games37/riversdk/core/model/UserInformation;

    return-object v0

    .line 111
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public clearInfo(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/games37/riversdk/core/model/UserInformation;->resetUserInformation()V

    .line 559
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->deepLinkURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 560
    invoke-virtual {p0, p1, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setDeeplinkFlag(Landroid/content/Context;I)V

    .line 561
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/games37/riversdk/core/model/UserInformation;->setDeepLinkURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 563
    :cond_14
    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/model/UserInformation;->setFirstRunFlag(I)V

    .line 564
    return-void
.end method

.method public getAppLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->appLanguage:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 414
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getAppLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->appLanguage:Ljava/lang/String;

    .line 416
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->appLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLocale()I
    .registers 3

    .prologue
    .line 437
    iget v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->appLocale:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_16

    .line 438
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getAppLocale(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->appLocale:I

    .line 440
    :cond_16
    iget v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->appLocale:I

    return v0
.end method

.method public getBinging_user()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->binging_user:Ljava/lang/String;

    return-object v0
.end method

.method public getCurUserType()Lcom/games37/riversdk/core/login/model/UserType;
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->userType:Lcom/games37/riversdk/core/login/model/UserType;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_16

    .line 162
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getCurUserType(Landroid/content/Context;)Lcom/games37/riversdk/core/login/model/UserType;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->userType:Lcom/games37/riversdk/core/login/model/UserType;

    .line 164
    :cond_16
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->userType:Lcom/games37/riversdk/core/login/model/UserType;

    return-object v0
.end method

.method public getDeepLinkURL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->deepLinkURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 534
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getDeeplinkUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->deepLinkURL:Ljava/lang/String;

    .line 536
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->deepLinkURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplinkFlag()I
    .registers 3

    .prologue
    .line 509
    iget v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->deeplinkFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 510
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getDeeplinkFlag(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->deeplinkFlag:I

    .line 512
    :cond_17
    iget v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->deeplinkFlag:I

    return v0
.end method

.method public getFirstRunFlag()I
    .registers 3

    .prologue
    .line 485
    iget v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->firstRunFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 486
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getFirstLoginFlag(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->firstRunFlag:I

    .line 488
    :cond_17
    iget v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->firstRunFlag:I

    return v0
.end method

.method public getGameToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->gameToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 288
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->gameToken:Ljava/lang/String;

    .line 290
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->gameToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginAccount()Ljava/lang/String;
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 243
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getLoginAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginAccount:Ljava/lang/String;

    .line 245
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginStatus()Z
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 183
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getLoginStatus(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginStatus:Z

    .line 185
    :cond_12
    iget-boolean v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginStatus:Z

    return v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 309
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginToken:Ljava/lang/String;

    .line 311
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleId:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 372
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getRoleId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleId:Ljava/lang/String;

    .line 374
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleLevel:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 393
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getRoleLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleLevel:Ljava/lang/String;

    .line 395
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 351
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getRoleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleName:Ljava/lang/String;

    .line 353
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->serverId:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 330
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getServerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->serverId:Ljava/lang/String;

    .line 332
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPlatform()Ljava/lang/String;
    .registers 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->thirdPlatform:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 462
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getThridPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->thirdPlatform:Ljava/lang/String;

    .line 464
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->thirdPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 204
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->userId:Ljava/lang/String;

    .line 206
    :cond_1a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    .line 125
    :cond_a
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-nez v0, :cond_15

    .line 126
    new-instance v0, Lcom/games37/riversdk/core/login/dao/LoginDao;

    invoke-direct {v0}, Lcom/games37/riversdk/core/login/dao/LoginDao;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    .line 128
    :cond_15
    iget-boolean v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->isInit:Z

    if-nez v0, :cond_19

    .line 131
    :cond_19
    return-void
.end method

.method public isBind()Z
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 264
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->isBind(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->isBind:Z

    .line 266
    :cond_12
    iget-boolean v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->isBind:Z

    return v0
.end method

.method public resetUserInformation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    sget-object v0, Lcom/games37/riversdk/core/login/model/UserType;->NULL_TYPE:Lcom/games37/riversdk/core/login/model/UserType;

    iput-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->userType:Lcom/games37/riversdk/core/login/model/UserType;

    .line 139
    iput-boolean v2, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginStatus:Z

    .line 140
    iput-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginAccount:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->userId:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->binging_user:Ljava/lang/String;

    .line 143
    iput-boolean v2, p0, Lcom/games37/riversdk/core/model/UserInformation;->isBind:Z

    .line 144
    iput-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->gameToken:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginToken:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->serverId:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleId:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleName:Ljava/lang/String;

    .line 149
    iput-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleLevel:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2b

    .line 151
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->clearRealtimeLoginData(Landroid/content/Context;)V

    .line 153
    :cond_2b
    return-void
.end method

.method public setAppLanguage(Ljava/lang/String;)V
    .registers 4
    .param p1, "appLanguage"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->appLanguage:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 427
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setAppLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 429
    :cond_11
    return-void
.end method

.method public setAppLocale(I)V
    .registers 4
    .param p1, "locale"    # I

    .prologue
    .line 449
    iput p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->appLocale:I

    .line 450
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 451
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setAppLocale(Landroid/content/Context;I)V

    .line 453
    :cond_11
    return-void
.end method

.method public setBind(Z)V
    .registers 4
    .param p1, "bind"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->isBind:Z

    .line 276
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 277
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setIsBind(Landroid/content/Context;Z)V

    .line 279
    :cond_11
    return-void
.end method

.method public setBinging_user(Ljava/lang/String;)V
    .registers 2
    .param p1, "binging_user"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->binging_user:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setCurUserType(Lcom/games37/riversdk/core/login/model/UserType;)V
    .registers 2
    .param p1, "userType"    # Lcom/games37/riversdk/core/login/model/UserType;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->userType:Lcom/games37/riversdk/core/login/model/UserType;

    .line 174
    return-void
.end method

.method public setDeepLinkURL(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deepLinkURL"    # Ljava/lang/String;

    .prologue
    .line 545
    iput-object p2, p0, Lcom/games37/riversdk/core/model/UserInformation;->deepLinkURL:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 547
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setDeeplinkUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    :cond_d
    return-void
.end method

.method public setDeeplinkFlag(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deeplinkFlag"    # I

    .prologue
    .line 521
    iput p2, p0, Lcom/games37/riversdk/core/model/UserInformation;->deeplinkFlag:I

    .line 522
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 523
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setDeeplinkFlag(Landroid/content/Context;I)V

    .line 525
    :cond_d
    return-void
.end method

.method public setFirstRunFlag(I)V
    .registers 4
    .param p1, "firstRunFlag"    # I

    .prologue
    .line 497
    iput p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->firstRunFlag:I

    .line 498
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 499
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setFirstLoginFlag(Landroid/content/Context;I)V

    .line 501
    :cond_11
    return-void
.end method

.method public setGameToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "gameToken"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->gameToken:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setLoginAccount(Ljava/lang/String;)V
    .registers 2
    .param p1, "loginAccount"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginAccount:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setLoginStatus(Z)V
    .registers 2
    .param p1, "loginStatus"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginStatus:Z

    .line 195
    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "loginToken"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->loginToken:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2
    .param p1, "roleId"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleId:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "roleLevel"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleLevel:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->roleName:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->serverId:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setThirdPlatform(Ljava/lang/String;)V
    .registers 4
    .param p1, "thirdPlatform"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->thirdPlatform:Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 475
    iget-object v0, p0, Lcom/games37/riversdk/core/model/UserInformation;->mLoginDao:Lcom/games37/riversdk/core/login/dao/LoginDao;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/UserInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/games37/riversdk/core/login/dao/LoginDao;->setThridPlatform(Landroid/content/Context;Ljava/lang/String;)V

    .line 477
    :cond_11
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/games37/riversdk/core/model/UserInformation;->userId:Ljava/lang/String;

    .line 216
    return-void
.end method
