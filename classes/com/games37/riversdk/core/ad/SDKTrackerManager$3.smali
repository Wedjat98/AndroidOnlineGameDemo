.class final Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;
.super Ljava/lang/Object;
.source "SDKTrackerManager.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/ad/SDKTrackerManager;->report(Landroid/app/Activity;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/core/callback/NetCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestBundle:Landroid/os/Bundle;

.field final synthetic val$requestCount:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;I)V
    .registers 4

    .prologue
    .line 123
    iput-object p1, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->val$requestBundle:Landroid/os/Bundle;

    iput p3, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->val$requestCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->val$requestBundle:Landroid/os/Bundle;

    iget v2, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->val$requestCount:I

    add-int/lit8 v2, v2, 0x1

    # invokes: Lcom/games37/riversdk/core/ad/SDKTrackerManager;->startGMTracker(Landroid/app/Activity;Landroid/os/Bundle;I)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->access$300(Landroid/app/Activity;Landroid/os/Bundle;I)V

    .line 140
    return-void
.end method

.method public bridge synthetic callbackSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 123
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->callbackSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public callbackSuccess(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "paramObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x1

    .line 126
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "retValue":I
    if-ne v0, v3, :cond_11

    .line 129
    iget-object v1, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->val$activity:Landroid/app/Activity;

    const-string v2, "FirstRunFlag"

    invoke-static {v1, v2, v3}, Lcom/games37/riversdk/common/utils/ApplicationPrefUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 134
    :goto_10
    return-void

    .line 132
    :cond_11
    iget-object v1, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->val$requestBundle:Landroid/os/Bundle;

    iget v3, p0, Lcom/games37/riversdk/core/ad/SDKTrackerManager$3;->val$requestCount:I

    add-int/lit8 v3, v3, 0x1

    # invokes: Lcom/games37/riversdk/core/ad/SDKTrackerManager;->startGMTracker(Landroid/app/Activity;Landroid/os/Bundle;I)V
    invoke-static {v1, v2, v3}, Lcom/games37/riversdk/core/ad/SDKTrackerManager;->access$300(Landroid/app/Activity;Landroid/os/Bundle;I)V

    goto :goto_10
.end method
