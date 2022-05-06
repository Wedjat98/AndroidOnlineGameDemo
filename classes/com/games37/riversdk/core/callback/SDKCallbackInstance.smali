.class public Lcom/games37/riversdk/core/callback/SDKCallbackInstance;
.super Ljava/lang/Object;
.source "SDKCallbackInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;
    }
.end annotation


# static fields
.field private static mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;",
            "Lcom/games37/riversdk/core/callback/BaseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sdkCallback:Lcom/games37/riversdk/core/callback/SDKCallbackInstance;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->sdkCallback:Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->mCallbackMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;
    .registers 2

    .prologue
    .line 18
    sget-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->sdkCallback:Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    if-nez v0, :cond_13

    .line 19
    const-class v1, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    monitor-enter v1

    .line 20
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->sdkCallback:Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    if-nez v0, :cond_12

    .line 21
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    invoke-direct {v0}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->sdkCallback:Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    .line 23
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 25
    :cond_13
    sget-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->sdkCallback:Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    return-object v0

    .line 23
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;)Lcom/games37/riversdk/core/callback/BaseCallback;
    .registers 4
    .param p1, "type"    # Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .prologue
    .line 51
    if-nez p1, :cond_a

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDKCallbackType is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_a
    sget-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    .line 55
    :cond_1a
    new-instance v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$1;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$1;-><init>(Lcom/games37/riversdk/core/callback/SDKCallbackInstance;)V

    .line 77
    :goto_1f
    return-object v0

    :cond_20
    sget-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/callback/BaseCallback;

    goto :goto_1f
.end method

.method public setCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;Lcom/games37/riversdk/core/callback/BaseCallback;)V
    .registers 5
    .param p1, "type"    # Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;
    .param p2, "callback"    # Lcom/games37/riversdk/core/callback/BaseCallback;

    .prologue
    .line 35
    if-nez p1, :cond_a

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDKCallbackType is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_a
    if-nez p2, :cond_14

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "callback is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_14
    sget-object v0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
