.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestFBInvite(Landroid/app/Activity;Ljava/util/List;)V
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$inviteFriendsToken:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Ljava/util/List;Landroid/app/Activity;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;->val$inviteFriendsToken:Ljava/util/List;

    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 600
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;->onSuccess(ILorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteView:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;
    invoke-static {v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1100(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 605
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mInviteView:Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;
    invoke-static {v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1100(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$8;->val$inviteFriendsToken:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/facebook/social/view/InviteFriendView;->update(Ljava/util/List;)V

    .line 607
    :cond_13
    return-void
.end method
