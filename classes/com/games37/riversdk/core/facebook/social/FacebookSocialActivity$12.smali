.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->loadPresentFriends(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/core/callback/ResultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 756
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->onSuccess(ILjava/util/List;)V

    return-void
.end method

.method public onSuccess(ILjava/util/List;)V
    .registers 7
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p2, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    if-eqz p2, :cond_4e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4e

    .line 760
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;
    invoke-static {v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1600(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 761
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;
    invoke-static {v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1600(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 762
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1700(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 763
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;
    invoke-static {v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1600(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    .line 764
    .local v0, "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1700(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->getFbId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 767
    .end local v0    # "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    :cond_47
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$12;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestFriendStatus(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v1, v2, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1800(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/util/List;)V

    .line 769
    :cond_4e
    return-void
.end method
