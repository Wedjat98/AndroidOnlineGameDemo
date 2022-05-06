.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestRedPointStatus(Landroid/app/Activity;)V
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
    .line 448
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 448
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;->onSuccess(ILorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 451
    if-eqz p2, :cond_2a

    .line 453
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    const-string v1, "can_receive"

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mCanReceive:I
    invoke-static {v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$602(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;I)I

    .line 455
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    const-string v1, "exist_function"

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mExistFunstion:I
    invoke-static {v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$702(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;I)I

    .line 457
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mExistFunstion:I
    invoke-static {v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$700(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$5;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mCanReceive:I
    invoke-static {v2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$600(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)I

    move-result v2

    # invokes: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->showPresentItem(II)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$800(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;II)V

    .line 459
    :cond_2a
    return-void
.end method
