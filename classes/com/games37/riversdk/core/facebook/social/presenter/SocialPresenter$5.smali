.class Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;
.super Ljava/lang/Object;
.source "SocialPresenter.java"

# interfaces
.implements Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->requestFacebookInviteFriends(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

.field final synthetic val$paramsBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->val$paramsBundle:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->handleCancelCallback(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->access$100(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 278
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->handleErrorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static {v0, p1, p2, v1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->access$000(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;ILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 273
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 264
    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "requestId":Ljava/lang/String;
    const-string v0, "friendsId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 267
    .local v3, "friendsId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->val$paramsBundle:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->requestServerInvite(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->access$200(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 268
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 261
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$5;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
