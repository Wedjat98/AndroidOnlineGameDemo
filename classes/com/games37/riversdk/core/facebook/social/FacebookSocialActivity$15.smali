.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestPresentGift(Landroid/app/Activity;Ljava/util/List;)V
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


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 929
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 915
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;->onSuccess(ILorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$15;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mPresentFriendList:Ljava/util/List;
    invoke-static {v2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1600(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestFriendStatus(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$1800(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Landroid/app/Activity;Ljava/util/List;)V

    .line 920
    return-void
.end method
