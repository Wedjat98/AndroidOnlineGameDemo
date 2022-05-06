.class Lcom/facebook/internal/FetchedAppSettingsManager$2;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;->startInAppPurchaseAutoLogging(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$2;->val$context:Landroid/content/Context;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 285
    move v1, p1

    .line 286
    .local v1, "finalResultCode":I
    move-object v0, p2

    .line 287
    .local v0, "finalData":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/internal/FetchedAppSettingsManager$2$1;

    iget-object v4, p0, Lcom/facebook/internal/FetchedAppSettingsManager$2;->val$context:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/facebook/internal/FetchedAppSettingsManager$2$1;-><init>(Lcom/facebook/internal/FetchedAppSettingsManager$2;Landroid/content/Context;ILandroid/content/Intent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 294
    const/4 v2, 0x1

    return v2
.end method
