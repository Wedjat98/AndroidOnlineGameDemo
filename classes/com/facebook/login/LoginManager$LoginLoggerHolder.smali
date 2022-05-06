.class Lcom/facebook/login/LoginManager$LoginLoggerHolder;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoginLoggerHolder"
.end annotation


# static fields
.field private static logger:Lcom/facebook/login/LoginLogger;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    .registers 2

    .prologue
    .line 832
    invoke-static {p0}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 833
    const-class v1, Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    monitor-enter v1

    if-eqz p0, :cond_a

    .line 834
    :goto_5
    if-nez p0, :cond_f

    .line 835
    const/4 v0, 0x0

    .line 840
    :goto_8
    monitor-exit v1

    return-object v0

    .line 833
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_5

    .line 837
    :cond_f
    sget-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;

    if-nez v0, :cond_1e

    .line 838
    new-instance v0, Lcom/facebook/login/LoginLogger;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;

    .line 840
    :cond_1e
    sget-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_21

    goto :goto_8

    .line 833
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method
