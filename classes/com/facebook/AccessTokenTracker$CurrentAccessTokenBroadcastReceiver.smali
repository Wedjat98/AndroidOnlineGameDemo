.class Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessTokenTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentAccessTokenBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenTracker;


# direct methods
.method private constructor <init>(Lcom/facebook/AccessTokenTracker;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;->this$0:Lcom/facebook/AccessTokenTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/AccessTokenTracker;Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;)V
    .registers 3

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;-><init>(Lcom/facebook/AccessTokenTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    const-string v2, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 103
    # getter for: Lcom/facebook/AccessTokenTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessTokenTracker;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessTokenChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v2, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/AccessToken;

    .line 108
    .local v1, "oldAccessToken":Lcom/facebook/AccessToken;
    const-string v2, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AccessToken;

    .line 110
    .local v0, "newAccessToken":Lcom/facebook/AccessToken;
    iget-object v2, p0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;->this$0:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/AccessTokenTracker;->onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 112
    .end local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    .end local v1    # "oldAccessToken":Lcom/facebook/AccessToken;
    :cond_2a
    return-void
.end method
