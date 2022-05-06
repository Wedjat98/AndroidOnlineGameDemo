.class public Lcom/ledo/fantasy/game/JniProxy;
.super Ljava/lang/Object;
.source "JniProxy.java"


# static fields
.field private static application:Landroid/app/Activity;

.field private static autoLogin:Z

.field private static channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

.field public static currentActivity:Landroid/app/Activity;

.field public static usePlatformExit:Z

.field public static usePlatformExitAfterOnKeyDownBackPressEvent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/ledo/fantasy/game/JniProxy;->currentActivity:Landroid/app/Activity;

    .line 13
    sput-boolean v1, Lcom/ledo/fantasy/game/JniProxy;->autoLogin:Z

    .line 14
    sput-boolean v1, Lcom/ledo/fantasy/game/JniProxy;->usePlatformExit:Z

    .line 15
    sput-boolean v1, Lcom/ledo/fantasy/game/JniProxy;->usePlatformExitAfterOnKeyDownBackPressEvent:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/ledo/fantasy/game/ChannelPlatformInterface;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    return-object v0
.end method

.method static synthetic access$1(I)V
    .registers 1

    .prologue
    .line 200
    invoke-static {p0}, Lcom/ledo/fantasy/game/JniProxy;->nativeOnLogined(I)V

    return-void
.end method

.method static synthetic access$2()V
    .registers 0

    .prologue
    .line 202
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->nativeOnLogout()V

    return-void
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 204
    invoke-static {p0}, Lcom/ledo/fantasy/game/JniProxy;->nativeOnServerChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 205
    invoke-static {p0}, Lcom/ledo/fantasy/game/JniProxy;->nativeOnServerChecked(Ljava/lang/String;)V

    return-void
.end method

.method public static autoLogin()V
    .registers 0

    .prologue
    .line 248
    return-void
.end method

.method public static changeAccount()V
    .registers 2

    .prologue
    .line 100
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->application:Landroid/app/Activity;

    new-instance v1, Lcom/ledo/fantasy/game/JniProxy$3;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/JniProxy$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public static enterPlatformCenter()V
    .registers 2

    .prologue
    .line 110
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->application:Landroid/app/Activity;

    new-instance v1, Lcom/ledo/fantasy/game/JniProxy$4;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/JniProxy$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public static enterPlatformFeedback()V
    .registers 2

    .prologue
    .line 130
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->application:Landroid/app/Activity;

    new-instance v1, Lcom/ledo/fantasy/game/JniProxy$6;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/JniProxy$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public static enterPlatformForum()V
    .registers 2

    .prologue
    .line 120
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->application:Landroid/app/Activity;

    new-instance v1, Lcom/ledo/fantasy/game/JniProxy$5;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/JniProxy$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public static getPlatformCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v1}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->getPlatformCenterName()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 157
    const-string v0, ""

    .line 159
    .end local v0    # "ret":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public static getPlatformFeedbackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v1}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->getPlatformFeedbackName()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 175
    const-string v0, ""

    .line 177
    .end local v0    # "ret":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public static getPlatformForumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v1}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->getPlatformForumName()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 166
    const-string v0, ""

    .line 168
    .end local v0    # "ret":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public static getPlatformHockeyAppID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v1}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->getPlatformHockeyAppID()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 293
    const-string v0, ""

    .line 295
    .end local v0    # "ret":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public static getPlatformID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v1}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->getPlatformID()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 93
    const-string v0, ""

    .line 95
    .end local v0    # "ret":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public static getPlatformName()I
    .registers 1

    .prologue
    .line 325
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->getPlatformName()I

    move-result v0

    return v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v1}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 56
    const-string v0, ""

    .line 58
    .end local v0    # "ret":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v1}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->getUserID()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 84
    const-string v0, ""

    .line 86
    .end local v0    # "ret":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    sget-object v1, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v1}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 75
    const-string v0, ""

    .line 77
    .end local v0    # "ret":Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public static guestRegister()V
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->application:Landroid/app/Activity;

    new-instance v1, Lcom/ledo/fantasy/game/JniProxy$2;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/JniProxy$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public static hasFeedback()Z
    .registers 1

    .prologue
    .line 150
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->hasFeedback()Z

    move-result v0

    return v0
.end method

.method public static hasPlatformCenter()Z
    .registers 1

    .prologue
    .line 140
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->hasPlatformCenter()Z

    move-result v0

    return v0
.end method

.method public static hasPlatformForum()Z
    .registers 1

    .prologue
    .line 145
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->hasPlatformForum()Z

    move-result v0

    return v0
.end method

.method public static initialize(Landroid/app/Activity;Lcom/ledo/fantasy/game/ChannelPlatformInterface;)V
    .registers 2
    .param p0, "app"    # Landroid/app/Activity;
    .param p1, "platformInterface"    # Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    .prologue
    .line 19
    sput-object p0, Lcom/ledo/fantasy/game/JniProxy;->application:Landroid/app/Activity;

    .line 20
    sput-object p1, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    .line 21
    return-void
.end method

.method public static isAutoLogin()Z
    .registers 1

    .prologue
    .line 286
    sget-boolean v0, Lcom/ledo/fantasy/game/JniProxy;->autoLogin:Z

    return v0
.end method

.method public static isGuest()Z
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->isGuest()Z

    move-result v0

    return v0
.end method

.method public static isLogined()Z
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->isLogined()Z

    move-result v0

    return v0
.end method

.method public static login()V
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->application:Landroid/app/Activity;

    new-instance v1, Lcom/ledo/fantasy/game/JniProxy$1;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/JniProxy$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public static loginGameCallback()V
    .registers 1

    .prologue
    .line 192
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->loginGameCallback()V

    .line 193
    return-void
.end method

.method public static logoutPlatform()V
    .registers 2

    .prologue
    .line 182
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->application:Landroid/app/Activity;

    new-instance v1, Lcom/ledo/fantasy/game/JniProxy$7;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/JniProxy$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method private static native nativeOnGuestRegistered(I)V
.end method

.method private static native nativeOnLogined(I)V
.end method

.method private static native nativeOnLogout()V
.end method

.method private static native nativeOnServerChanged(Ljava/lang/String;)V
.end method

.method private static native nativeOnServerChecked(Ljava/lang/String;)V
.end method

.method private static native nativeOnShareResult(ZLjava/lang/String;)V
.end method

.method public static native nativeSetMAC(Ljava/lang/String;)V
.end method

.method public static onBuyFinished(I)V
    .registers 1
    .param p0, "state"    # I

    .prologue
    .line 276
    return-void
.end method

.method public static onGuestRegistered(I)V
    .registers 1
    .param p0, "status"    # I

    .prologue
    .line 252
    invoke-static {p0}, Lcom/ledo/fantasy/game/JniProxy;->nativeOnGuestRegistered(I)V

    .line 253
    return-void
.end method

.method public static onLogined(I)V
    .registers 4
    .param p0, "status"    # I

    .prologue
    .line 210
    if-nez p0, :cond_14

    .line 211
    sget-object v1, Lcom/ledo/fantasy/game/FlurryManager;->flurryEndEvent:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Z)V

    .line 215
    :goto_8
    move v0, p0

    .line 216
    .local v0, "st":I
    sget-object v1, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v2, Lcom/ledo/fantasy/game/JniProxy$8;

    invoke-direct {v2, v0}, Lcom/ledo/fantasy/game/JniProxy$8;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 231
    return-void

    .line 213
    .end local v0    # "st":I
    :cond_14
    const-string v1, "EVENT_SDKLOGIN_ERROR"

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static onLogout()V
    .registers 2

    .prologue
    .line 259
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/JniProxy$9;

    invoke-direct {v1}, Lcom/ledo/fantasy/game/JniProxy$9;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method public static onServerChanged(Ljava/lang/String;)V
    .registers 3
    .param p0, "paramsWithJson"    # Ljava/lang/String;

    .prologue
    .line 335
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/JniProxy$10;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/JniProxy$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method public static onServerChecked(Ljava/lang/String;)V
    .registers 3
    .param p0, "paramsWithJson"    # Ljava/lang/String;

    .prologue
    .line 345
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/JniProxy$11;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/JniProxy$11;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 351
    return-void
.end method

.method public static onShareResult(ZLjava/lang/String;)V
    .registers 2
    .param p0, "result"    # Z
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {p0, p1}, Lcom/ledo/fantasy/game/JniProxy;->nativeOnShareResult(ZLjava/lang/String;)V

    .line 271
    return-void
.end method

.method public static postinitializeGame()V
    .registers 1

    .prologue
    .line 320
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->postinitializeGame()V

    .line 321
    return-void
.end method

.method public static release()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "EVENT_EXIT_BY_JNIPROXYRELEASE"

    invoke-static {v0}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    if-eqz v0, :cond_e

    .line 27
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->release()V

    .line 28
    :cond_e
    return-void
.end method

.method public static setAutoLogin(Z)V
    .registers 1
    .param p0, "isauto"    # Z

    .prologue
    .line 282
    sput-boolean p0, Lcom/ledo/fantasy/game/JniProxy;->autoLogin:Z

    .line 283
    return-void
.end method

.method public static setValues(Ljava/lang/String;)V
    .registers 2
    .param p0, "jsonContent"    # Ljava/lang/String;

    .prologue
    .line 197
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0, p0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->setValues(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static shareOut(Ljava/lang/String;)V
    .registers 2
    .param p0, "paramsWithJson"    # Ljava/lang/String;

    .prologue
    .line 330
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0, p0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->shareOut(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public static showExitScreen()Z
    .registers 1

    .prologue
    .line 305
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->showExitScreen()Z

    move-result v0

    return v0
.end method

.method public static showExitScreenAfterOnKeyDownBackPressEvent(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 310
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0, p0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->showExitScreenAfterOnKeyDownBackPressEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static showPauseScreen()V
    .registers 1

    .prologue
    .line 300
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->showPauseScreen()V

    .line 301
    return-void
.end method

.method public static supportFeature(I)Z
    .registers 2
    .param p0, "feature"    # I

    .prologue
    .line 315
    sget-object v0, Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    invoke-interface {v0, p0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->supportFeature(I)Z

    move-result v0

    return v0
.end method
