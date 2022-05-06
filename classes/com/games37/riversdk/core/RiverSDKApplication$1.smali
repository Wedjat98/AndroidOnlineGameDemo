.class Lcom/games37/riversdk/core/RiverSDKApplication$1;
.super Ljava/lang/Object;
.source "RiverSDKApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/RiverSDKApplication;->registerActivityListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/RiverSDKApplication;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/RiverSDKApplication;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/RiverSDKApplication;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/games37/riversdk/core/RiverSDKApplication$1;->this$0:Lcom/games37/riversdk/core/RiverSDKApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    const/4 v0, 0x0

    # setter for: Lcom/games37/riversdk/core/RiverSDKApplication;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/games37/riversdk/core/RiverSDKApplication;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 100
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    sget-object v0, Lcom/games37/riversdk/core/RiverSDKApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPaused activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    # setter for: Lcom/games37/riversdk/core/RiverSDKApplication;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/games37/riversdk/core/RiverSDKApplication;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 85
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    sget-object v0, Lcom/games37/riversdk/core/RiverSDKApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    # setter for: Lcom/games37/riversdk/core/RiverSDKApplication;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/games37/riversdk/core/RiverSDKApplication;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 79
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    return-void
.end method
