.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$19;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->lineShare(Landroid/app/Activity;)V
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
        "Ljava/lang/Boolean;",
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
    .line 1083
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$19;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$19;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$19;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 1099
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$19;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    const/4 v1, 0x0

    # setter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLineShareStatus:Z
    invoke-static {v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$2202(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Z)Z

    .line 1093
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$19;->val$activity:Landroid/app/Activity;

    const-string v1, "i1_sdk_fb_social_not_found_line_app"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByResName(Landroid/content/Context;Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method public onSuccess(ILjava/lang/Boolean;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "isSuccess"    # Ljava/lang/Boolean;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$19;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    const/4 v1, 0x1

    # setter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mLineShareStatus:Z
    invoke-static {v0, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$2202(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Z)Z

    .line 1088
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 1083
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$19;->onSuccess(ILjava/lang/Boolean;)V

    return-void
.end method
