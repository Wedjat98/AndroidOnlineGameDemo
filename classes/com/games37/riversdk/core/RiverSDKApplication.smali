.class public Lcom/games37/riversdk/core/RiverSDKApplication;
.super Landroid/app/Application;
.source "RiverSDKApplication.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field protected static instance:Lcom/games37/riversdk/core/RiverSDKApplication;

.field private static mCurrentActivity:Landroid/app/Activity;


# instance fields
.field private mApplicationProxy:Lcom/games37/riversdk/core/api/BaseApplication;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/games37/riversdk/core/RiverSDKApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/RiverSDKApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 25
    sput-object p0, Lcom/games37/riversdk/core/RiverSDKApplication;->mCurrentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/games37/riversdk/core/RiverSDKApplication;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getInstance()Lcom/games37/riversdk/core/RiverSDKApplication;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/games37/riversdk/core/RiverSDKApplication;->instance:Lcom/games37/riversdk/core/RiverSDKApplication;

    return-object v0
.end method

.method private registerActivityListener()V
    .registers 3

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 65
    new-instance v0, Lcom/games37/riversdk/core/RiverSDKApplication$1;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/core/RiverSDKApplication$1;-><init>(Lcom/games37/riversdk/core/RiverSDKApplication;)V

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/RiverSDKApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 103
    :cond_e
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 5
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 43
    const-string v1, "com.games37.riversdk.core.config.SDKConfig"

    const-string v2, "PTCODE"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ReflectUtil;->reflectGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "platform":Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/core/route/RiverSDKTransfer;->getRiverSDKApplication(Ljava/lang/String;)Lcom/games37/riversdk/core/api/BaseApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/core/RiverSDKApplication;->mApplicationProxy:Lcom/games37/riversdk/core/api/BaseApplication;

    .line 47
    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 52
    sput-object p0, Lcom/games37/riversdk/core/RiverSDKApplication;->instance:Lcom/games37/riversdk/core/RiverSDKApplication;

    .line 53
    invoke-direct {p0}, Lcom/games37/riversdk/core/RiverSDKApplication;->registerActivityListener()V

    .line 54
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApplication;->mApplicationProxy:Lcom/games37/riversdk/core/api/BaseApplication;

    if-eqz v0, :cond_11

    .line 55
    iget-object v0, p0, Lcom/games37/riversdk/core/RiverSDKApplication;->mApplicationProxy:Lcom/games37/riversdk/core/api/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/games37/riversdk/core/api/BaseApplication;->onCreate(Landroid/content/Context;)V

    .line 57
    :cond_11
    return-void
.end method
