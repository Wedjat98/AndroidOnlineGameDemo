.class public Lcom/games37/riversdk/functions/line/LineWrapper;
.super Ljava/lang/Object;
.source "LineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback;
    }
.end annotation


# static fields
.field public static final CANCEL:Ljava/lang/Integer;

.field public static final FAILED:Ljava/lang/Integer;

.field public static final SUCCESS:Ljava/lang/Integer;

.field public static final TAG:Ljava/lang/String; = "LineWrapper"

.field private static instance:Lcom/games37/riversdk/functions/line/LineWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/functions/line/LineWrapper;->SUCCESS:Ljava/lang/Integer;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/functions/line/LineWrapper;->CANCEL:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/functions/line/LineWrapper;->FAILED:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/games37/riversdk/functions/line/LineWrapper;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/games37/riversdk/functions/line/LineWrapper;->instance:Lcom/games37/riversdk/functions/line/LineWrapper;

    if-nez v0, :cond_13

    .line 26
    const-class v1, Lcom/games37/riversdk/functions/line/LineWrapper;

    monitor-enter v1

    .line 27
    :try_start_7
    sget-object v0, Lcom/games37/riversdk/functions/line/LineWrapper;->instance:Lcom/games37/riversdk/functions/line/LineWrapper;

    if-nez v0, :cond_12

    .line 28
    new-instance v0, Lcom/games37/riversdk/functions/line/LineWrapper;

    invoke-direct {v0}, Lcom/games37/riversdk/functions/line/LineWrapper;-><init>()V

    sput-object v0, Lcom/games37/riversdk/functions/line/LineWrapper;->instance:Lcom/games37/riversdk/functions/line/LineWrapper;

    .line 30
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 32
    :cond_13
    sget-object v0, Lcom/games37/riversdk/functions/line/LineWrapper;->instance:Lcom/games37/riversdk/functions/line/LineWrapper;

    return-object v0

    .line 30
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public lineShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "shareLink"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p4, "callback":Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback;, "Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line://msg/text/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 55
    :try_start_2e
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 56
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_39} :catch_3a

    .line 60
    :goto_39
    return-void

    .line 57
    :catch_3a
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/games37/riversdk/functions/line/LineWrapper;->FAILED:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2, v3}, Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_39
.end method
