.class Lcom/facebook/internal/FetchedAppSettingsManager$2$1;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppSettingsManager$2;->onActivityResult(ILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/internal/FetchedAppSettingsManager$2;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$finalData:Landroid/content/Intent;

.field private final synthetic val$finalResultCode:I


# direct methods
.method constructor <init>(Lcom/facebook/internal/FetchedAppSettingsManager$2;Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$2$1;->this$1:Lcom/facebook/internal/FetchedAppSettingsManager$2;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$2$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/facebook/internal/FetchedAppSettingsManager$2$1;->val$finalResultCode:I

    iput-object p4, p0, Lcom/facebook/internal/FetchedAppSettingsManager$2$1;->val$finalData:Landroid/content/Intent;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettingsManager$2$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$2$1;->val$finalResultCode:I

    iget-object v2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$2$1;->val$finalData:Landroid/content/Intent;

    .line 290
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logInAppPurchaseEvent(Landroid/content/Context;ILandroid/content/Intent;)Z

    .line 292
    return-void
.end method
