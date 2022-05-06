.class Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;
.super Ljava/lang/Object;
.source "SocialPresenter.java"

# interfaces
.implements Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->loadInviteFriend(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback",
        "<[",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Lcom/games37/riversdk/core/callback/ResultCallback;Landroid/app/Activity;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;->this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;->this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->handleCancelCallback(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->access$100(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 237
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;->this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->handleErrorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static {v0, p1, p2, v1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->access$000(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;ILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 232
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 210
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;->onSuccess([Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess([Landroid/os/Bundle;)V
    .registers 8
    .param p1, "bundles"    # [Landroid/os/Bundle;

    .prologue
    .line 213
    if-eqz p1, :cond_3c

    array-length v3, p1

    if-lez v3, :cond_3c

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v2, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v4, :cond_36

    aget-object v0, p1, v3

    .line 216
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/games37/riversdk/core/facebook/social/model/Friend;

    invoke-direct {v1}, Lcom/games37/riversdk/core/facebook/social/model/Friend;-><init>()V

    .line 218
    .local v1, "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    const-string v5, "inviteToken"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setToken(Ljava/lang/String;)V

    .line 220
    const-string v5, "name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setName(Ljava/lang/String;)V

    .line 222
    const-string v5, "picture"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/games37/riversdk/core/facebook/social/model/Friend;->setPicture(Ljava/lang/String;)V

    .line 223
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 225
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "friend":Lcom/games37/riversdk/core/facebook/social/model/Friend;
    :cond_36
    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$4;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v2}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 227
    .end local v2    # "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    :cond_3c
    return-void
.end method
