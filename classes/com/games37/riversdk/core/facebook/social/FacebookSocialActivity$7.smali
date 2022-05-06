.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->loadInviteFriend(Landroid/app/Activity;)V
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
    .line 557
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 557
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;->onSuccess(ILjava/util/List;)V

    return-void
.end method

.method public onSuccess(ILjava/util/List;)V
    .registers 4
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
    .line 560
    .local p2, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    if-eqz p2, :cond_23

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 561
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteFriendList:Ljava/util/List;
    invoke-static {v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1000(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 562
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteFriendList:Ljava/util/List;
    invoke-static {v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1000(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$7;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteView:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;
    invoke-static {v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1100(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->updateData(Ljava/util/List;)V

    .line 566
    :cond_23
    return-void
.end method
