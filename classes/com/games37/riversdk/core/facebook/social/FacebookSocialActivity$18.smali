.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$18;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->requestServerShared(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
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
    .line 1053
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$18;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$18;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$18;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$18;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 1053
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$18;->onSuccess(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "shareType"    # Ljava/lang/String;

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$18;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    const/4 v1, 0x1

    # invokes: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->updateShareImageView(Ljava/lang/String;I)V
    invoke-static {v0, p2, v1}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$2100(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;Ljava/lang/String;I)V

    .line 1058
    return-void
.end method
