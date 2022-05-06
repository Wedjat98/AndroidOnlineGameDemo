.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$3;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerInit(Landroid/app/Activity;)V
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
        "Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;",
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
    .line 364
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$3;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public onSuccess(ILcom/games37/riversdk/core/facebook/social/model/SocialInfo;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "socialInfo"    # Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$3;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # invokes: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->handleServerInitCallback(Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;)V
    invoke-static {v0, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$300(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;)V

    .line 369
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 364
    check-cast p2, Lcom/games37/riversdk/core/facebook/social/model/SocialInfo;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$3;->onSuccess(ILcom/games37/riversdk/core/facebook/social/model/SocialInfo;)V

    return-void
.end method
