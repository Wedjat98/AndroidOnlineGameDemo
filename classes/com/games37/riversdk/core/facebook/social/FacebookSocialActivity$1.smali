.class Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$1;
.super Ljava/lang/Object;
.source "FacebookSocialActivity.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->init(Landroid/app/Activity;)V
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
        "Landroid/os/Bundle;",
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
    .line 288
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$1;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public onSuccess(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$1;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # getter for: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->mParamsBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$000(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 294
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$1;->this$0:Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;

    # invokes: Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->handleInitCallback()V
    invoke-static {v0}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;->access$100(Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity;)V

    .line 295
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 288
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/social/FacebookSocialActivity$1;->onSuccess(ILandroid/os/Bundle;)V

    return-void
.end method
