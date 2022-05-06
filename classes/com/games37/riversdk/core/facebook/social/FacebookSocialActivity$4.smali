.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$4;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerGetShareContent(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/core/callback/ResultCallback",
        "<[",
        "Lcom/games37/riversdk/core/facebook/social/model/ShareContent;",
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
    .line 420
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$4;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 420
    check-cast p2, [Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$4;->onSuccess(I[Lcom/games37/riversdk/core/facebook/social/model/ShareContent;)V

    return-void
.end method

.method public onSuccess(I[Lcom/games37/riversdk/core/facebook/social/model/ShareContent;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "shareContents"    # [Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$4;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    # setter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mFBContent:Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    invoke-static {v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$402(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Lcom/games37/riversdk/core/facebook/social/model/ShareContent;)Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    .line 426
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$4;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    # setter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLineContent:Lcom/games37/riversdk/core/facebook/social/model/ShareContent;
    invoke-static {v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$502(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Lcom/games37/riversdk/core/facebook/social/model/ShareContent;)Lcom/games37/riversdk/core/facebook/social/model/ShareContent;

    .line 427
    return-void
.end method
