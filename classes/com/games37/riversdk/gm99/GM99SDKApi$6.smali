.class Lcom/games37/riversdk/gm99/GM99SDKApi$6;
.super Ljava/lang/Object;
.source "GM99SDKApi.java"

# interfaces
.implements Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/GM99SDKApi;->sqSDKFBInGameFriendInfo(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
        "<[",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/GM99SDKApi;Landroid/app/Activity;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/GM99SDKApi;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 516
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->this$0:Lcom/games37/riversdk/gm99/GM99SDKApi;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    # invokes: Lcom/games37/riversdk/gm99/GM99SDKApi;->errorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V
    invoke-static {v0, p1, p2, v1}, Lcom/games37/riversdk/gm99/GM99SDKApi;->access$600(Lcom/games37/riversdk/gm99/GM99SDKApi;ILjava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 511
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 474
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->onSuccess([Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess([Landroid/os/Bundle;)V
    .registers 12
    .param p1, "bundles"    # [Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 477
    if-eqz p1, :cond_6c

    array-length v6, p1

    if-lez v6, :cond_6c

    .line 478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v2, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    array-length v7, p1

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v7, :cond_40

    aget-object v0, p1, v6

    .line 480
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    invoke-direct {v1}, Lcom/games37/riversdk/core/facebook/social/model/Friend;-><init>()V

    .line 482
    .local v1, "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    const-string v8, "inviteToken"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setToken(Ljava/lang/String;)V

    .line 484
    const-string v8, "name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setName(Ljava/lang/String;)V

    .line 486
    const-string v8, "picture"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setPicture(Ljava/lang/String;)V

    .line 488
    const-string v8, "fbid"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setFbId(Ljava/lang/String;)V

    .line 489
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 492
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    :cond_40
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "friendsInfo":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 494
    .local v5, "sucessParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "fb_friends_info"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v6, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->val$activity:Landroid/app/Activity;

    const-string v8, "a1_sdk_get_fb_friendinfo_success"

    .line 496
    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 495
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "msg":Ljava/lang/String;
    const-string v6, "msg"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v6, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-virtual {v6, v9, v5}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    .line 506
    .end local v2    # "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    .end local v3    # "friendsInfo":Ljava/lang/String;
    :goto_6b
    return-void

    .line 500
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "sucessParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6c
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 501
    .restart local v5    # "sucessParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->val$activity:Landroid/app/Activity;

    const-string v8, "a1_sdk_fb_friendinfo_empty"

    .line 502
    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 501
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 503
    .restart local v4    # "msg":Ljava/lang/String;
    const-string v6, "msg"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v6, p0, Lcom/games37/riversdk/gm99/GM99SDKApi$6;->val$callback:Lcom/games37/riversdk/core/callback/SDKCallback;

    invoke-virtual {v6, v9, v5}, Lcom/games37/riversdk/core/callback/SDKCallback;->onResult(ILjava/util/Map;)V

    goto :goto_6b
.end method
