.class public abstract Lcom/ledo/fantasy/game/GameApp;
.super Landroid/app/Activity;
.source "GameApp.java"

# interfaces
.implements Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final LOADTYPE_GET:Ljava/lang/String; = "get"

.field private static final LOADTYPE_LOAD:Ljava/lang/String; = "load"

.field private static final RUNVIEW_MARGIN_BOTTOM:I = 0xa

.field private static final RUNVIEW_MARGIN_RIGHT:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "GameApp:"

.field public static mHandler:Lcom/ledo/fantasy/game/IcefireHandler;

.field public static mView:Lcom/ledo/fantasy/game/GameView;

.field private static m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

.field private static m_gameApp:Lcom/ledo/fantasy/game/GameApp;

.field private static m_launchBGMp3:Lcom/ledo/fantasy/game/IcefireMusic;

.field private static m_launchView:Landroid/widget/ImageView;

.field private static m_loadingRunView:Landroid/widget/ImageView;

.field protected static sHasLaunched:Z

.field public static s_GameJniInited:Z

.field private static s_bHasInitLedoCrashSDK:Z

.field private static s_bHasInitPlayerAnalyzerSDK:Z

.field private static s_bIsFirstPlayCurInstall:Z

.field public static s_bNeedHideDevVirtualKey:Z

.field private static s_hasCheckFirstPlayCurInstall:Z

.field public static s_iFirstPlayCurInstall:I

.field private static s_strFileOutDir:Ljava/lang/String;


# instance fields
.field bMusicEnable:Z

.field private batteryLevelFilter:Landroid/content/IntentFilter;

.field private batteryRcvr:Landroid/content/BroadcastReceiver;

.field protected delayInitSDk:Z

.field private m_LoadingViewVisible:Z

.field private m_channelID:Ljava/lang/String;

.field private m_isCheckNetworkOK:Z

.field private m_isInitSDKSucceed:Z

.field private m_isSplashEnd:Z

.field private m_isUpdateEngineStart:Z

.field protected needFinish:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    sput-object v2, Lcom/ledo/fantasy/game/GameApp;->m_gameApp:Lcom/ledo/fantasy/game/GameApp;

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ledo/fantasy/game/GameApp;->s_bNeedHideDevVirtualKey:Z

    .line 63
    sput-boolean v1, Lcom/ledo/fantasy/game/GameApp;->s_GameJniInited:Z

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/ledo/fantasy/game/GameApp;->s_strFileOutDir:Ljava/lang/String;

    .line 68
    sput-boolean v1, Lcom/ledo/fantasy/game/GameApp;->s_bHasInitLedoCrashSDK:Z

    .line 69
    sput-boolean v1, Lcom/ledo/fantasy/game/GameApp;->s_bHasInitPlayerAnalyzerSDK:Z

    .line 70
    sput-boolean v1, Lcom/ledo/fantasy/game/GameApp;->s_hasCheckFirstPlayCurInstall:Z

    .line 71
    sput-boolean v1, Lcom/ledo/fantasy/game/GameApp;->s_bIsFirstPlayCurInstall:Z

    .line 72
    sput v1, Lcom/ledo/fantasy/game/GameApp;->s_iFirstPlayCurInstall:I

    .line 74
    sput-boolean v1, Lcom/ledo/fantasy/game/GameApp;->sHasLaunched:Z

    .line 95
    sput-object v2, Lcom/ledo/fantasy/game/GameApp;->m_launchView:Landroid/widget/ImageView;

    .line 96
    sput-object v2, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    .line 98
    sput-object v2, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->needFinish:Z

    .line 77
    iput-boolean v1, p0, Lcom/ledo/fantasy/game/GameApp;->delayInitSDk:Z

    .line 82
    iput-boolean v1, p0, Lcom/ledo/fantasy/game/GameApp;->bMusicEnable:Z

    .line 85
    iput-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isCheckNetworkOK:Z

    .line 86
    iput-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isSplashEnd:Z

    .line 87
    iput-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isInitSDKSucceed:Z

    .line 90
    iput-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isUpdateEngineStart:Z

    .line 91
    iput-boolean v1, p0, Lcom/ledo/fantasy/game/GameApp;->m_LoadingViewVisible:Z

    .line 57
    return-void
.end method

.method public static AndroidLogMessage(Ljava/lang/String;I)V
    .registers 2
    .param p0, "logstr"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    .line 1198
    return-void
.end method

.method private CheckAnimDone()V
    .registers 7

    .prologue
    .line 621
    iget-boolean v3, p0, Lcom/ledo/fantasy/game/GameApp;->m_LoadingViewVisible:Z

    if-eqz v3, :cond_1c

    .line 623
    sget-object v3, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 624
    .local v1, "anim":Landroid/graphics/drawable/AnimationDrawable;
    const/16 v0, 0x32

    .line 625
    .local v0, "CheckInterval":I
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 626
    .local v2, "h":Landroid/os/Handler;
    new-instance v3, Lcom/ledo/fantasy/game/GameApp$4;

    invoke-direct {v3, p0, v1}, Lcom/ledo/fantasy/game/GameApp$4;-><init>(Lcom/ledo/fantasy/game/GameApp;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 639
    int-to-long v4, v0

    .line 626
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 641
    .end local v0    # "CheckInterval":I
    .end local v1    # "anim":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "h":Landroid/os/Handler;
    :cond_1c
    return-void
.end method

.method public static IsFirstPlayCurInstall()Z
    .registers 1

    .prologue
    .line 300
    sget-boolean v0, Lcom/ledo/fantasy/game/GameApp;->s_bIsFirstPlayCurInstall:Z

    return v0
.end method

.method public static IsFirstPlayGame()I
    .registers 1

    .prologue
    .line 305
    sget v0, Lcom/ledo/fantasy/game/GameApp;->s_iFirstPlayCurInstall:I

    return v0
.end method

.method public static LogForLedoCrashSDK(Ljava/lang/String;)V
    .registers 1
    .param p0, "strlog"    # Ljava/lang/String;

    .prologue
    .line 262
    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/game/GameApp;)V
    .registers 1

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/ledo/fantasy/game/GameApp;->CheckAnimDone()V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1129
    invoke-static {p0, p1}, Lcom/ledo/fantasy/game/GameApp;->sendPOSTRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkFirstPlayGameCurInstall()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 267
    sget-boolean v7, Lcom/ledo/fantasy/game/GameApp;->s_hasCheckFirstPlayCurInstall:Z

    if-eqz v7, :cond_7

    .line 296
    :goto_6
    return-void

    .line 270
    :cond_7
    const/4 v0, 0x1

    .line 272
    .local v0, "bFirstPlayCurIns":Z
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getFileOutDir()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/firstplaycurinstall"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ledo/fantasy/update/Utils;->loadConfig(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v3

    .line 273
    .local v3, "prop":Ljava/util/Properties;
    if-eqz v3, :cond_38

    .line 274
    const-string v7, "played"

    invoke-virtual {v3, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    .local v2, "has_playedString":Ljava/lang/String;
    if-eqz v2, :cond_38

    .line 276
    const-string v7, "yes"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    move v0, v5

    .line 279
    .end local v2    # "has_playedString":Ljava/lang/String;
    :cond_38
    :goto_38
    if-eqz v0, :cond_60

    .line 281
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 282
    .local v4, "prop1":Ljava/util/Properties;
    const-string v7, "played"

    const-string v8, "yes"

    invoke-virtual {v4, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getFileOutDir()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/firstplaycurinstall"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/ledo/fantasy/update/Utils;->saveConfig(Ljava/lang/String;Ljava/util/Properties;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_60} :catch_6b

    .line 289
    .end local v3    # "prop":Ljava/util/Properties;
    .end local v4    # "prop1":Ljava/util/Properties;
    :cond_60
    :goto_60
    sput-boolean v0, Lcom/ledo/fantasy/game/GameApp;->s_bIsFirstPlayCurInstall:Z

    .line 290
    if-eqz v0, :cond_70

    .line 291
    sput v6, Lcom/ledo/fantasy/game/GameApp;->s_iFirstPlayCurInstall:I

    .line 295
    :goto_66
    sput-boolean v6, Lcom/ledo/fantasy/game/GameApp;->s_hasCheckFirstPlayCurInstall:Z

    goto :goto_6

    .restart local v2    # "has_playedString":Ljava/lang/String;
    .restart local v3    # "prop":Ljava/util/Properties;
    :cond_69
    move v0, v6

    .line 276
    goto :goto_38

    .line 285
    .end local v2    # "has_playedString":Ljava/lang/String;
    .end local v3    # "prop":Ljava/util/Properties;
    :catch_6b
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_70
    sput v5, Lcom/ledo/fantasy/game/GameApp;->s_iFirstPlayCurInstall:I

    goto :goto_66
.end method

.method private checkHasEnterGameSceneCurInstall()V
    .registers 7

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "bHasEnterCurIns":Z
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getFileOutDir()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/enterscenecurinstall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ledo/fantasy/update/Utils;->loadConfig(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v3

    .line 314
    .local v3, "prop":Ljava/util/Properties;
    if-eqz v3, :cond_31

    .line 315
    const-string v4, "hasenter"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    .local v2, "has_enterString":Ljava/lang/String;
    if-eqz v2, :cond_31

    .line 317
    const-string v4, "yes"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_34

    move-result v4

    if-eqz v4, :cond_32

    const/4 v0, 0x1

    .line 323
    .end local v2    # "has_enterString":Ljava/lang/String;
    .end local v3    # "prop":Ljava/util/Properties;
    :cond_31
    :goto_31
    return-void

    .line 317
    .restart local v2    # "has_enterString":Ljava/lang/String;
    .restart local v3    # "prop":Ljava/util/Properties;
    :cond_32
    const/4 v0, 0x0

    goto :goto_31

    .line 320
    .end local v2    # "has_enterString":Ljava/lang/String;
    .end local v3    # "prop":Ljava/util/Properties;
    :catch_34
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 990
    :try_start_1
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 991
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_20

    .line 993
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 994
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 996
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_21

    if-ne v4, v5, :cond_20

    .line 997
    const/4 v3, 0x1

    .line 1006
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_20
    :goto_20
    return v3

    .line 1001
    :catch_21
    move-exception v1

    .line 1003
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_20
.end method

.method private dpi2px(I)I
    .registers 5
    .param p1, "px"    # I

    .prologue
    .line 532
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 533
    .local v1, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 534
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 535
    .local v0, "density":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method

.method public static getApkAssetsOutDir()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1088
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getApkDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApp()Lcom/ledo/fantasy/game/GameApp;
    .registers 1

    .prologue
    .line 228
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_gameApp:Lcom/ledo/fantasy/game/GameApp;

    return-object v0
.end method

.method public static getAssetsOutDir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/artres"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileOutDir()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 242
    sget-object v2, Lcom/ledo/fantasy/game/GameApp;->s_strFileOutDir:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/ledo/fantasy/game/GameApp;->s_strFileOutDir:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 243
    :cond_f
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ledo/fantasy/game/GameApp;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 244
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    .line 245
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 246
    .local v1, "e":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ledo/fantasy/game/GameApp;->s_strFileOutDir:Ljava/lang/String;

    .line 253
    :cond_2d
    :goto_2d
    sget-object v2, Lcom/ledo/fantasy/game/GameApp;->s_strFileOutDir:Ljava/lang/String;

    return-object v2

    .line 248
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "e":Ljava/io/File;
    :cond_30
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    .line 249
    .restart local v0    # "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 250
    .restart local v1    # "e":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ledo/fantasy/game/GameApp;->s_strFileOutDir:Ljava/lang/String;

    goto :goto_2d
.end method

.method public static getHttpUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    .line 1104
    invoke-static {p0}, Lcom/ledo/fantasy/game/LedowebviewActivity;->setPreLoadUrl(Ljava/lang/String;)V

    .line 1105
    invoke-static {p1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->setPostData(Ljava/lang/String;)V

    .line 1106
    const-string v1, "get"

    invoke-static {v1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->setLoadType(Ljava/lang/String;)V

    .line 1107
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    const-class v2, Lcom/ledo/fantasy/game/LedowebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1108
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/GameApp;->startActivity(Landroid/content/Intent;)V

    .line 1109
    return-void
.end method

.method public static getLaunchBGMp3()Lcom/ledo/fantasy/game/IcefireMusic;
    .registers 1

    .prologue
    .line 238
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_launchBGMp3:Lcom/ledo/fantasy/game/IcefireMusic;

    return-object v0
.end method

.method private initializeGame()V
    .registers 13

    .prologue
    const/16 v11, 0x78

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 467
    move-object v1, p0

    .line 468
    .local v1, "ctx":Landroid/content/Context;
    const-string v7, "activity"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 469
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 470
    .local v6, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 472
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 473
    .local v5, "mainLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v5}, Lcom/ledo/fantasy/game/GameApp;->setContentView(Landroid/view/View;)V

    .line 474
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    if-nez v7, :cond_36

    .line 475
    new-instance v7, Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/ledo/fantasy/game/GameView;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    .line 476
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 477
    .local v4, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v5, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    .end local v4    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_36
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_launchView:Landroid/widget/ImageView;

    if-nez v7, :cond_59

    .line 482
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/ledo/fantasy/game/GameApp;->m_launchView:Landroid/widget/ImageView;

    .line 483
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_launchView:Landroid/widget/ImageView;

    sget v8, Lcom/ledo/fantasy/game/R$drawable;->ledo_fantasy_gamelaunch:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_launchView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 485
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 486
    .restart local v4    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_launchView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    .end local v4    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_59
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    if-nez v7, :cond_ac

    .line 492
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    .line 493
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    sget v8, Lcom/ledo/fantasy/game/R$anim;->loading:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 494
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 495
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v11}, Lcom/ledo/fantasy/game/GameApp;->dpi2px(I)I

    move-result v7

    invoke-direct {p0, v11}, Lcom/ledo/fantasy/game/GameApp;->dpi2px(I)I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 496
    .restart local v4    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 497
    const/16 v7, 0xb

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 499
    const/16 v7, 0x3c

    invoke-direct {p0, v7}, Lcom/ledo/fantasy/game/GameApp;->dpi2px(I)I

    move-result v7

    const/16 v8, 0xa

    invoke-direct {p0, v8}, Lcom/ledo/fantasy/game/GameApp;->dpi2px(I)I

    move-result v8

    invoke-virtual {v4, v9, v9, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 500
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    sput-object v7, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    .line 502
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 505
    .end local v4    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_ac
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v7}, Lcom/ledo/fantasy/game/GameView;->hasLordRenderer()Z

    move-result v7

    if-nez v7, :cond_c2

    .line 506
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v8, Lcom/ledo/fantasy/game/LordRender;

    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/ledo/fantasy/game/LordRender;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Lcom/ledo/fantasy/game/GameView;->setLordRenderer(Lcom/ledo/fantasy/game/LordRender;)V

    .line 510
    :cond_c2
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v7}, Lcom/ledo/fantasy/game/GameView;->hasIcefireEditText()Z

    move-result v7

    if-nez v7, :cond_dd

    .line 512
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 513
    const/4 v7, -0x2

    .line 512
    invoke-direct {v3, v10, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 514
    .local v3, "edittext_layout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Lcom/ledo/fantasy/game/IcefireEditText;

    invoke-direct {v2, p0}, Lcom/ledo/fantasy/game/IcefireEditText;-><init>(Landroid/content/Context;)V

    .line 516
    .local v2, "edittext":Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/IcefireEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v7, v2}, Lcom/ledo/fantasy/game/GameView;->setIcefireEditText(Lcom/ledo/fantasy/game/IcefireEditText;)V

    .line 521
    .end local v2    # "edittext":Lcom/ledo/fantasy/game/IcefireEditText;
    .end local v3    # "edittext_layout_params":Landroid/view/ViewGroup$LayoutParams;
    :cond_dd
    invoke-static {p0, p0}, Lcom/ledo/fantasy/game/IcefireHelper;->init(Landroid/content/Context;Lcom/ledo/fantasy/game/IcefireHelper$IcefireHelperListener;)V

    .line 522
    invoke-static {}, Lcom/ledo/fantasy/game/GameJNILib;->loadLib()V

    .line 528
    return-void
.end method

.method public static loadUrlWebview(Ljava/lang/String;)V
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1097
    invoke-static {p0}, Lcom/ledo/fantasy/game/LedowebviewActivity;->setPreLoadUrl(Ljava/lang/String;)V

    .line 1098
    const-string v1, "load"

    invoke-static {v1}, Lcom/ledo/fantasy/game/LedowebviewActivity;->setLoadType(Ljava/lang/String;)V

    .line 1099
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    const-class v2, Lcom/ledo/fantasy/game/LedowebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1100
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/GameApp;->startActivity(Landroid/content/Intent;)V

    .line 1101
    return-void
.end method

.method private monitorBatteryState()V
    .registers 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameApp;->batteryLevelFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1b

    .line 327
    new-instance v0, Lcom/ledo/fantasy/game/GameApp$2;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/game/GameApp$2;-><init>(Lcom/ledo/fantasy/game/GameApp;)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/GameApp;->batteryRcvr:Landroid/content/BroadcastReceiver;

    .line 354
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/GameApp;->batteryLevelFilter:Landroid/content/IntentFilter;

    .line 355
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameApp;->batteryRcvr:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/ledo/fantasy/game/GameApp;->batteryLevelFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/ledo/fantasy/game/GameApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    :cond_1b
    return-void
.end method

.method public static postHttpUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    .line 1112
    move-object v1, p0

    .line 1113
    .local v1, "url":Ljava/lang/String;
    move-object v0, p1

    .line 1114
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ledo/fantasy/game/GameApp$9;

    invoke-direct {v3, v1, v0}, Lcom/ledo/fantasy/game/GameApp$9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1126
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1127
    return-void
.end method

.method public static purchaseWithJson(Ljava/lang/String;)I
    .registers 3
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 861
    const/4 v0, 0x0

    .line 862
    .local v0, "result":I
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 863
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ledo/fantasy/game/GameApp;->purchaseWithJsonStrParam(Ljava/lang/String;)I

    move-result v0

    .line 865
    :cond_f
    return v0
.end method

.method private static sendPOSTRequest(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "postData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1130
    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 1131
    .local v1, "entity":[B
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1132
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v5, 0x1388

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1133
    const-string v5, "POST"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1135
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1136
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1138
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v5, "Content-Length"

    new-instance v6, Ljava/lang/StringBuilder;

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1141
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1142
    .local v2, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1143
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_5e

    .line 1145
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1149
    :goto_5d
    return v3

    .line 1148
    :cond_5e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v3, v4

    .line 1149
    goto :goto_5d
.end method

.method public static socialShareWithJson(Ljava/lang/String;)I
    .registers 3
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, "result":I
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 872
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ledo/fantasy/game/GameApp;->socialShareWithJsonParam(Ljava/lang/String;)I

    move-result v0

    .line 874
    :cond_f
    return v0
.end method

.method public static takePhoto()V
    .registers 3

    .prologue
    .line 1167
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/ledo/fantasy/game/CameraActivity;->setSelectProperty(I)V

    .line 1168
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    const-class v2, Lcom/ledo/fantasy/game/CameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1169
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/GameApp;->startActivity(Landroid/content/Intent;)V

    .line 1170
    return-void
.end method

.method public static takePicture()V
    .registers 3

    .prologue
    .line 1160
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/ledo/fantasy/game/CameraActivity;->setSelectProperty(I)V

    .line 1161
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    const-class v2, Lcom/ledo/fantasy/game/CameraActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1162
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/GameApp;->startActivity(Landroid/content/Intent;)V

    .line 1163
    return-void
.end method

.method public static terminateProcess()V
    .registers 1

    .prologue
    .line 1154
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1155
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1156
    return-void
.end method

.method public static transferExtendDataToSDKJsonStr(Ljava/lang/String;)V
    .registers 2
    .param p0, "strJson"    # Ljava/lang/String;

    .prologue
    .line 854
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 855
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ledo/fantasy/game/GameApp;->submitExtendDataToSDKJsonStr(Ljava/lang/String;)V

    .line 857
    :cond_d
    return-void
.end method

.method public static verifyRecordAudioPermission()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 1202
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1203
    .local v1, "permission":I
    if-eqz v1, :cond_1b

    .line 1205
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v4

    .line 1206
    .local v0, "message":[Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    invoke-static {v2, v0, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1208
    .end local v0    # "message":[Ljava/lang/String;
    :cond_1b
    return-void
.end method


# virtual methods
.method protected abstract CheckAndShowNetworkDialog()V
.end method

.method public ShowOriginalExitWnd()V
    .registers 4

    .prologue
    .line 813
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 814
    .local v0, "exitGame":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/ledo/fantasy/game/R$string;->exittip:I

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 815
    sget v1, Lcom/ledo/fantasy/game/R$string;->exityes:I

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 816
    new-instance v2, Lcom/ledo/fantasy/game/GameApp$7;

    invoke-direct {v2, p0}, Lcom/ledo/fantasy/game/GameApp$7;-><init>(Lcom/ledo/fantasy/game/GameApp;)V

    .line 815
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 824
    sget v1, Lcom/ledo/fantasy/game/R$string;->exitno:I

    invoke-virtual {p0, v1}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 825
    new-instance v2, Lcom/ledo/fantasy/game/GameApp$8;

    invoke-direct {v2, p0}, Lcom/ledo/fantasy/game/GameApp$8;-><init>(Lcom/ledo/fantasy/game/GameApp;)V

    .line 824
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 829
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 830
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 831
    return-void
.end method

.method public clickRunView()V
    .registers 3

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_LoadingViewVisible:Z

    if-eqz v0, :cond_2c

    .line 610
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    sput-object v0, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    .line 611
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 612
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    sget v1, Lcom/ledo/fantasy/game/R$anim;->loadingtouch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 613
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    sput-object v0, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    .line 614
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 615
    invoke-direct {p0}, Lcom/ledo/fantasy/game/GameApp;->CheckAnimDone()V

    .line 617
    :cond_2c
    return-void
.end method

.method public getChannelId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_channelID:Ljava/lang/String;

    return-object v0
.end method

.method public getCurFreeMemSize()I
    .registers 11

    .prologue
    .line 914
    const/4 v3, 0x0

    .line 917
    .local v3, "nResult":I
    :try_start_1
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/ledo/fantasy/game/GameApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 918
    .local v0, "actMgr":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 919
    .local v2, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 920
    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v8, 0x100000

    div-long v4, v6, v8

    .line 921
    .local v4, "regFreeSize":J
    long-to-int v3, v4

    .line 922
    const/4 v6, 0x1

    if-ge v3, v6, :cond_1d

    .line 924
    const/4 v3, 0x1

    .line 927
    :cond_1d
    const-string v6, "getCurFreeMemSize"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "MByte"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_36

    .line 934
    .end local v0    # "actMgr":Landroid/app/ActivityManager;
    .end local v2    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    .end local v4    # "regFreeSize":J
    :goto_35
    return v3

    .line 929
    :catch_36
    move-exception v1

    .line 931
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public getCurNetWorkType()Ljava/lang/String;
    .registers 7

    .prologue
    .line 939
    const-string v3, ""

    .line 940
    .local v3, "strNetworkType":Ljava/lang/String;
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/ledo/fantasy/game/GameApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 941
    .local v0, "connectiMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1a

    .line 945
    :try_start_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 946
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 947
    :cond_18
    const-string v3, "no connection"

    .line 963
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1a
    :goto_1a
    return-object v3

    .line 948
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1b
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 949
    const-string v3, "WIFI"

    goto :goto_1a

    .line 950
    :cond_2a
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EDGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 951
    const-string v3, "EDGE"

    goto :goto_1a

    .line 953
    :cond_39
    const-string v3, "OTHERS"
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3b} :catch_3c

    goto :goto_1a

    .line 956
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_3c
    move-exception v1

    .line 958
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 959
    const-string v3, "invalidResult"

    goto :goto_1a
.end method

.method public getGPUName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1071
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    iget-object v0, v0, Lcom/ledo/fantasy/game/GameView;->mlordrender:Lcom/ledo/fantasy/game/LordRender;

    if-eqz v0, :cond_f

    .line 1073
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    iget-object v0, v0, Lcom/ledo/fantasy/game/GameView;->mlordrender:Lcom/ledo/fantasy/game/LordRender;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/LordRender;->getGPUName()Ljava/lang/String;

    move-result-object v0

    .line 1075
    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 7

    .prologue
    .line 968
    const-string v3, ""

    .line 969
    .local v3, "macAddress":Ljava/lang/String;
    const/4 v4, 0x0

    .line 972
    .local v4, "wifiMgr":Landroid/net/wifi/WifiManager;
    :try_start_3
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/ledo/fantasy/game/GameApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/net/wifi/WifiManager;

    move-object v4, v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_17

    .line 979
    :goto_d
    if-nez v4, :cond_1c

    const/4 v2, 0x0

    .line 980
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    :goto_10
    if-eqz v2, :cond_16

    .line 981
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 983
    :cond_16
    return-object v3

    .line 974
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    :catch_17
    move-exception v1

    .line 976
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 979
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1c
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    goto :goto_10
.end method

.method public getScreenHeightInfo()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1033
    const-string v2, ""

    .line 1034
    .local v2, "strHeight":Ljava/lang/String;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1038
    .local v0, "disMetrics":Landroid/util/DisplayMetrics;
    :try_start_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_28

    .line 1039
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1043
    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1050
    :goto_27
    return-object v2

    .line 1041
    :cond_28
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_34

    goto :goto_18

    .line 1045
    :catch_34
    move-exception v1

    .line 1047
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public getScreenResolution()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1055
    const-string v2, ""

    .line 1056
    .local v2, "strResolution":Ljava/lang/String;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1059
    .local v0, "disMetrics":Landroid/util/DisplayMetrics;
    :try_start_7
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1060
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2c} :catch_2e

    move-result-object v2

    .line 1067
    :goto_2d
    return-object v2

    .line 1062
    :catch_2e
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public getScreenWidthInfo()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1011
    const-string v2, ""

    .line 1012
    .local v2, "strWidth":Ljava/lang/String;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1016
    .local v0, "disMetrics":Landroid/util/DisplayMetrics;
    :try_start_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_28

    .line 1017
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1021
    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1028
    :goto_27
    return-object v2

    .line 1019
    :cond_28
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_34

    goto :goto_18

    .line 1023
    :catch_34
    move-exception v1

    .line 1025
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method protected abstract getUpdateResourceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getUpdateResourceId(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getUpdateResourceClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ledo/fantasy/game/Utils;->getResourceId(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hideLaunchView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 553
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_launchView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 555
    iput-boolean v2, p0, Lcom/ledo/fantasy/game/GameApp;->m_LoadingViewVisible:Z

    .line 556
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 557
    return-void
.end method

.method public hideRunView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 575
    iput-boolean v2, p0, Lcom/ledo/fantasy/game/GameApp;->m_LoadingViewVisible:Z

    .line 576
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 577
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 578
    return-void
.end method

.method public initializeApplication()V
    .registers 3

    .prologue
    .line 362
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ledo/fantasy/game/GameApp$3;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/GameApp$3;-><init>(Lcom/ledo/fantasy/game/GameApp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 397
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 398
    return-void
.end method

.method protected abstract initializeSDK()V
.end method

.method public isCheckNetworkOK()Z
    .registers 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isCheckNetworkOK:Z

    return v0
.end method

.method public isInitSDKSuccess()Z
    .registers 2

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isInitSDKSucceed:Z

    return v0
.end method

.method public isMeetStartGameCondition()Z
    .registers 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isCheckNetworkOK:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isSplashEnd:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isInitSDKSucceed:Z

    if-eqz v0, :cond_e

    .line 421
    const/4 v0, 0x1

    .line 423
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSplashEnd()Z
    .registers 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isSplashEnd:Z

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 837
    sget-boolean v0, Lcom/ledo/fantasy/game/JniProxy;->usePlatformExitAfterOnKeyDownBackPressEvent:Z

    if-eqz v0, :cond_5

    .line 847
    :goto_4
    return-void

    .line 840
    :cond_5
    sget-boolean v0, Lcom/ledo/fantasy/game/JniProxy;->usePlatformExit:Z

    if-eqz v0, :cond_d

    .line 841
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->showExitScreen()Z

    goto :goto_4

    .line 845
    :cond_d
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->ShowOriginalExitWnd()V

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 105
    const-string v7, "GameApp:"

    const-string v8, "onCreate called"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-boolean v7, Lcom/ledo/fantasy/game/GameApp;->sHasLaunched:Z

    if-nez v7, :cond_19

    .line 107
    sput-boolean v6, Lcom/ledo/fantasy/game/GameApp;->sHasLaunched:Z

    .line 108
    iput-boolean v5, p0, Lcom/ledo/fantasy/game/GameApp;->needFinish:Z

    .line 113
    :goto_11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    iget-boolean v7, p0, Lcom/ledo/fantasy/game/GameApp;->needFinish:Z

    if-eqz v7, :cond_1f

    .line 214
    :cond_18
    :goto_18
    return-void

    .line 110
    :cond_19
    iput-boolean v6, p0, Lcom/ledo/fantasy/game/GameApp;->needFinish:Z

    .line 111
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->finish()V

    goto :goto_11

    .line 118
    :cond_1f
    sput-object p0, Lcom/ledo/fantasy/game/GameApp;->m_gameApp:Lcom/ledo/fantasy/game/GameApp;

    .line 120
    sget-object v7, Lcom/ledo/fantasy/game/GameApp;->m_gameApp:Lcom/ledo/fantasy/game/GameApp;

    invoke-static {v7}, Lcom/ledo/fantasy/game/SystemUIUtil;->setActivity(Landroid/app/Activity;)V

    .line 121
    const-string v7, "0"

    iput-object v7, p0, Lcom/ledo/fantasy/game/GameApp;->m_channelID:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/ledo/fantasy/game/GameApp;->checkFirstPlayGameCurInstall()V

    .line 124
    invoke-direct {p0}, Lcom/ledo/fantasy/game/GameApp;->checkHasEnterGameSceneCurInstall()V

    .line 128
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v7

    sget v8, Lcom/ledo/fantasy/game/R$string;->platform_suffix:I

    invoke-virtual {v7, v8}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "strCurSuffix":Ljava/lang/String;
    const-string v7, "youk"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ea

    .line 130
    sput-boolean v5, Lcom/ledo/fantasy/game/GameApp;->s_bNeedHideDevVirtualKey:Z

    .line 143
    :goto_44
    invoke-static {p0}, Lcom/ledo/fantasy/game/LocalNotificationManager;->init(Landroid/app/Activity;)V

    .line 145
    sget-boolean v7, Lcom/ledo/fantasy/game/GameApp;->s_bHasInitPlayerAnalyzerSDK:Z

    if-nez v7, :cond_4d

    .line 146
    sput-boolean v6, Lcom/ledo/fantasy/game/GameApp;->s_bHasInitPlayerAnalyzerSDK:Z

    .line 161
    :cond_4d
    invoke-static {}, Lcom/ledo/fantasy/game/FlurryManager;->checkFirstInstall()V

    .line 162
    const-string v7, "EVENT_APPONCREATE"

    invoke-static {v7}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/ledo/fantasy/game/CrashHandler;->getInstance()Lcom/ledo/fantasy/game/CrashHandler;

    move-result-object v0

    .line 165
    .local v0, "crashHandler":Lcom/ledo/fantasy/game/CrashHandler;
    invoke-virtual {v0}, Lcom/ledo/fantasy/game/CrashHandler;->init()V

    .line 167
    new-instance v7, Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-direct {v7, p0}, Lcom/ledo/fantasy/game/IcefireMusic;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/ledo/fantasy/game/GameApp;->m_launchBGMp3:Lcom/ledo/fantasy/game/IcefireMusic;

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/soundsetting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "strPathSoundsetting":Ljava/lang/String;
    invoke-static {v4}, Lcom/ledo/fantasy/update/Utils;->loadConfig(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v2

    .line 170
    .local v2, "prop":Ljava/util/Properties;
    if-eqz v2, :cond_95

    .line 172
    const-string v7, "music"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    .local v1, "open_musicString":Ljava/lang/String;
    if-eqz v1, :cond_95

    .line 175
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    move v5, v6

    :cond_93
    iput-boolean v5, p0, Lcom/ledo/fantasy/game/GameApp;->bMusicEnable:Z

    .line 178
    .end local v1    # "open_musicString":Ljava/lang/String;
    :cond_95
    iget-boolean v5, p0, Lcom/ledo/fantasy/game/GameApp;->bMusicEnable:Z

    if-eqz v5, :cond_ee

    .line 179
    sget-object v5, Lcom/ledo/fantasy/game/GameApp;->m_launchBGMp3:Lcom/ledo/fantasy/game/IcefireMusic;

    const-string v7, "select.mp3"

    invoke-virtual {v5, v7, v6}, Lcom/ledo/fantasy/game/IcefireMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    .line 183
    :goto_a0
    new-instance v5, Lcom/ledo/fantasy/game/IcefireHandler;

    invoke-direct {v5, p0}, Lcom/ledo/fantasy/game/IcefireHandler;-><init>(Lcom/ledo/fantasy/game/GameApp;)V

    sput-object v5, Lcom/ledo/fantasy/game/GameApp;->mHandler:Lcom/ledo/fantasy/game/IcefireHandler;

    .line 184
    sput-object p0, Lcom/ledo/fantasy/game/JniProxy;->currentActivity:Landroid/app/Activity;

    .line 185
    sget v5, Lcom/ledo/fantasy/game/R$string;->channel_id:I

    invoke-virtual {p0, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ledo/fantasy/game/GameApp;->m_channelID:Ljava/lang/String;

    .line 187
    invoke-virtual {p0, v6}, Lcom/ledo/fantasy/game/GameApp;->requestWindowFeature(I)Z

    .line 189
    iget-boolean v5, p0, Lcom/ledo/fantasy/game/GameApp;->delayInitSDk:Z

    if-nez v5, :cond_bf

    .line 190
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ledo/fantasy/game/GameApp;->initializeSDK()V

    .line 193
    :cond_bf
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->initializeApplication()V

    .line 195
    invoke-direct {p0}, Lcom/ledo/fantasy/game/GameApp;->monitorBatteryState()V

    .line 197
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 200
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_18

    sget-boolean v5, Lcom/ledo/fantasy/game/GameApp;->s_bNeedHideDevVirtualKey:Z

    if-eqz v5, :cond_18

    .line 201
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 202
    new-instance v6, Lcom/ledo/fantasy/game/GameApp$1;

    invoke-direct {v6, p0}, Lcom/ledo/fantasy/game/GameApp$1;-><init>(Lcom/ledo/fantasy/game/GameApp;)V

    .line 201
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto/16 :goto_18

    .line 132
    .end local v0    # "crashHandler":Lcom/ledo/fantasy/game/CrashHandler;
    .end local v2    # "prop":Ljava/util/Properties;
    .end local v4    # "strPathSoundsetting":Ljava/lang/String;
    :cond_ea
    sput-boolean v6, Lcom/ledo/fantasy/game/GameApp;->s_bNeedHideDevVirtualKey:Z

    goto/16 :goto_44

    .line 181
    .restart local v0    # "crashHandler":Lcom/ledo/fantasy/game/CrashHandler;
    .restart local v2    # "prop":Ljava/util/Properties;
    .restart local v4    # "strPathSoundsetting":Ljava/lang/String;
    :cond_ee
    sget-object v5, Lcom/ledo/fantasy/game/GameApp;->m_launchBGMp3:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v5}, Lcom/ledo/fantasy/game/IcefireMusic;->stopBackgroundMusic()V

    goto :goto_a0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/ledo/fantasy/game/R$menu;->main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 908
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 756
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 757
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->needFinish:Z

    if-eqz v0, :cond_8

    .line 775
    :cond_7
    :goto_7
    return-void

    .line 760
    :cond_8
    const-string v0, "GameApp:"

    const-string v1, "onDestroy called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isUpdateEngineStart:Z

    if-eqz v0, :cond_1a

    .line 763
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getUpdateEngineActivity()Lcom/ledo/fantasy/update/UpdateEngineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->onDestroy()V

    .line 766
    :cond_1a
    const-string v0, "EVENT_GAMEAPP_ONDESTROY"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Z)V

    .line 767
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->release()V

    .line 768
    invoke-static {p0}, Lcom/ledo/fantasy/game/FlurryManager;->EndSession(Landroid/content/Context;)V

    .line 769
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameApp;->batteryRcvr:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 771
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameApp;->batteryRcvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ledo/fantasy/game/GameApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_7
.end method

.method public onGameLaunched()V
    .registers 3

    .prologue
    .line 540
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 541
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 542
    sget-object v1, Lcom/ledo/fantasy/game/GameApp;->mHandler:Lcom/ledo/fantasy/game/IcefireHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/IcefireHandler;->sendMessage(Landroid/os/Message;)Z

    .line 543
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 801
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    .line 802
    sget-boolean v0, Lcom/ledo/fantasy/game/JniProxy;->usePlatformExitAfterOnKeyDownBackPressEvent:Z

    if-eqz v0, :cond_f

    .line 803
    invoke-static {p2}, Lcom/ledo/fantasy/game/JniProxy;->showExitScreenAfterOnKeyDownBackPressEvent(Landroid/view/KeyEvent;)Z

    .line 809
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_e
    return v0

    .line 804
    :cond_f
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    if-nez v0, :cond_a

    .line 805
    const/4 v0, 0x1

    goto :goto_e
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 730
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 731
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->needFinish:Z

    if-eqz v0, :cond_8

    .line 751
    :goto_7
    return-void

    .line 735
    :cond_8
    const-string v0, "GameApp:"

    const-string v1, "onPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isUpdateEngineStart:Z

    if-eqz v0, :cond_22

    .line 737
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getUpdateEngineActivity()Lcom/ledo/fantasy/update/UpdateEngineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->onPause()V

    .line 750
    :cond_1a
    :goto_1a
    const-string v0, "onPause"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 739
    :cond_22
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_launchBGMp3:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->pauseBackgroundMusic()V

    .line 741
    sget-boolean v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mHasCopiedSo:Z

    if-eqz v0, :cond_1a

    .line 742
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/GameApp$6;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/GameApp$6;-><init>(Lcom/ledo/fantasy/game/GameApp;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1a
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 677
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 678
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->needFinish:Z

    if-eqz v0, :cond_7

    .line 681
    :cond_7
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 795
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 796
    const-string v0, "GameApp:"

    const-string v1, "OnRestoreInstanceState called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 686
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 687
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->needFinish:Z

    if-eqz v0, :cond_8

    .line 726
    :cond_7
    :goto_7
    return-void

    .line 691
    :cond_8
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isUpdateEngineStart:Z

    if-eqz v0, :cond_2b

    .line 692
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getUpdateEngineActivity()Lcom/ledo/fantasy/update/UpdateEngineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->onResume()V

    .line 719
    :cond_13
    :goto_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_7

    sget-boolean v0, Lcom/ledo/fantasy/game/GameApp;->s_bNeedHideDevVirtualKey:Z

    if-eqz v0, :cond_7

    .line 720
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 721
    const/16 v1, 0x1006

    .line 720
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_7

    .line 694
    :cond_2b
    const-string v0, "GameApp:"

    const-string v1, "onResume called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->bMusicEnable:Z

    if-eqz v0, :cond_3b

    .line 697
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_launchBGMp3:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->resumeBackgroundMusic()V

    .line 699
    :cond_3b
    sget-boolean v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->mHasCopiedSo:Z

    if-eqz v0, :cond_13

    .line 700
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v1, Lcom/ledo/fantasy/game/GameApp$5;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/GameApp$5;-><init>(Lcom/ledo/fantasy/game/GameApp;)V

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_13
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 784
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_launchBGMp3:Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->stopBackgroundMusic()V

    .line 785
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 786
    const-string v0, "GameApp:"

    const-string v1, "OnSaveInstanceState called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 653
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 654
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->needFinish:Z

    if-eqz v0, :cond_8

    .line 659
    :goto_7
    return-void

    .line 658
    :cond_8
    const-string v0, "GameApp:"

    const-string v1, "onStart called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public onStartGame()V
    .registers 3

    .prologue
    .line 547
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 548
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 549
    sget-object v1, Lcom/ledo/fantasy/game/GameApp;->mHandler:Lcom/ledo/fantasy/game/IcefireHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/IcefireHandler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 663
    const-string v0, "GameApp:"

    const-string v1, "onStop called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 667
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->needFinish:Z

    if-eqz v0, :cond_f

    .line 671
    :goto_e
    return-void

    .line 670
    :cond_f
    const-string v0, "EVENT_GAMEAPP_ONSTOP"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Z)V

    goto :goto_e
.end method

.method public onUpdateEngineEnded()V
    .registers 3

    .prologue
    .line 443
    const-string v0, "gameapp"

    const-string v1, "initialize game!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isUpdateEngineStart:Z

    .line 450
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getLaunchBGMp3()Lcom/ledo/fantasy/game/IcefireMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->stopBackgroundMusic()V

    .line 451
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getLaunchBGMp3()Lcom/ledo/fantasy/game/IcefireMusic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireMusic;->end()V

    .line 452
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    invoke-direct {p0}, Lcom/ledo/fantasy/game/GameApp;->initializeGame()V

    .line 456
    return-void
.end method

.method protected parentPause()V
    .registers 1

    .prologue
    .line 645
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 646
    return-void
.end method

.method protected abstract purchaseWithJsonStrParam(Ljava/lang/String;)I
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 893
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v0, p1}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 894
    return-void
.end method

.method public setCheckNetworkOKFlag(Z)V
    .registers 2
    .param p1, "bFlag"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/ledo/fantasy/game/GameApp;->m_isCheckNetworkOK:Z

    .line 412
    return-void
.end method

.method public setGPUName(Ljava/lang/String;)V
    .registers 2
    .param p1, "gpuName"    # Ljava/lang/String;

    .prologue
    .line 1083
    return-void
.end method

.method public setInitSDKSucceedFlag(Z)V
    .registers 2
    .param p1, "bFlag"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/ledo/fantasy/game/GameApp;->m_isInitSDKSucceed:Z

    .line 418
    return-void
.end method

.method public setRunImageVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 561
    sget-object v1, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    if-eqz v1, :cond_13

    .line 563
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 564
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_14

    .line 565
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 570
    :goto_e
    sget-object v1, Lcom/ledo/fantasy/game/GameApp;->mHandler:Lcom/ledo/fantasy/game/IcefireHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/IcefireHandler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    .end local v0    # "msg":Landroid/os/Message;
    :cond_13
    return-void

    .line 568
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_14
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_e
.end method

.method public setSplashEndFlag(Z)V
    .registers 2
    .param p1, "bFlag"    # Z

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/ledo/fantasy/game/GameApp;->m_isSplashEnd:Z

    .line 415
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 898
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 899
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 900
    new-instance v1, Lcom/ledo/fantasy/game/IcefireHandler$DialogMessage;

    invoke-direct {v1, p1, p2}, Lcom/ledo/fantasy/game/IcefireHandler$DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 901
    sget-object v1, Lcom/ledo/fantasy/game/GameApp;->mHandler:Lcom/ledo/fantasy/game/IcefireHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/IcefireHandler;->sendMessage(Landroid/os/Message;)Z

    .line 902
    return-void
.end method

.method public showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 15
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pContent"    # Ljava/lang/String;
    .param p3, "pInputMode"    # I
    .param p4, "pInputFlag"    # I
    .param p5, "pReturnType"    # I
    .param p6, "pMaxLength"    # I

    .prologue
    .line 884
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 885
    .local v7, "msg":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    .line 886
    new-instance v0, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 887
    invoke-direct/range {v0 .. v6}, Lcom/ledo/fantasy/game/IcefireHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 886
    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 888
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->mHandler:Lcom/ledo/fantasy/game/IcefireHandler;

    invoke-virtual {v0, v7}, Lcom/ledo/fantasy/game/IcefireHandler;->sendMessage(Landroid/os/Message;)Z

    .line 889
    return-void
.end method

.method public showRunView()V
    .registers 3

    .prologue
    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_LoadingViewVisible:Z

    .line 582
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    sget v1, Lcom/ledo/fantasy/game/R$anim;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 583
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    sput-object v0, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    .line 584
    sget-object v0, Lcom/ledo/fantasy/game/GameApp;->m_bearRunanim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 585
    return-void
.end method

.method protected abstract socialShareWithJsonParam(Ljava/lang/String;)I
.end method

.method public startGame()V
    .registers 3

    .prologue
    .line 431
    const-string v0, "GameApp:"

    const-string v1, "gameapp start updateengine plz"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->CreateUpdateEngineActivity()Lcom/ledo/fantasy/update/UpdateEngineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->showUpdateEngineView()V

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/GameApp;->m_isUpdateEngineStart:Z

    .line 440
    return-void
.end method

.method protected abstract submitExtendDataToSDKJsonStr(Ljava/lang/String;)V
.end method

.method public touchBegin(II)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v8, 0x3c

    const/16 v7, 0xa

    .line 588
    sget-object v5, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    if-eqz v5, :cond_5a

    iget-boolean v5, p0, Lcom/ledo/fantasy/game/GameApp;->m_LoadingViewVisible:Z

    if-eqz v5, :cond_5a

    .line 590
    sget-object v5, Lcom/ledo/fantasy/game/GameApp;->m_loadingRunView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 591
    .local v0, "layout":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 592
    .local v1, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/GameApp;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 593
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 594
    .local v4, "screenwidth":I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 595
    .local v3, "screenheight":I
    invoke-direct {p0, v8}, Lcom/ledo/fantasy/game/GameApp;->dpi2px(I)I

    move-result v5

    sub-int v5, v4, v5

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v5, v6

    if-le p1, v5, :cond_5a

    .line 596
    invoke-direct {p0, v8}, Lcom/ledo/fantasy/game/GameApp;->dpi2px(I)I

    move-result v5

    sub-int v5, v4, v5

    if-ge p1, v5, :cond_5a

    .line 597
    invoke-direct {p0, v7}, Lcom/ledo/fantasy/game/GameApp;->dpi2px(I)I

    move-result v5

    sub-int v5, v3, v5

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v6

    if-le p2, v5, :cond_5a

    .line 598
    invoke-direct {p0, v7}, Lcom/ledo/fantasy/game/GameApp;->dpi2px(I)I

    move-result v5

    sub-int v5, v3, v5

    if-ge p2, v5, :cond_5a

    .line 600
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 601
    .local v2, "msg":Landroid/os/Message;
    const/16 v5, 0x8

    iput v5, v2, Landroid/os/Message;->what:I

    .line 602
    sget-object v5, Lcom/ledo/fantasy/game/GameApp;->mHandler:Lcom/ledo/fantasy/game/IcefireHandler;

    invoke-virtual {v5, v2}, Lcom/ledo/fantasy/game/IcefireHandler;->sendMessage(Landroid/os/Message;)Z

    .line 605
    .end local v0    # "layout":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "metric":Landroid/util/DisplayMetrics;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "screenheight":I
    .end local v4    # "screenwidth":I
    :cond_5a
    return-void
.end method
