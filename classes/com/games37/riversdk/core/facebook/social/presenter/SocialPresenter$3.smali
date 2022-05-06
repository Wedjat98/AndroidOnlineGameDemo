.class Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;
.super Ljava/lang/Object;
.source "SocialPresenter.java"

# interfaces
.implements Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->lineShare(Landroid/app/Activity;Lcom/games37/riversdk/core/facebook/social/model/ShareContent;Lcom/games37/riversdk/core/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/games37/riversdk/functions/line/LineWrapper$LineCallback",
        "<",
        "Ljava/lang/Boolean;",
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
    .line 180
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->handleCancelCallback(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static {v0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->access$100(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 196
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->this$0:Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->handleErrorCallback(ILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
    invoke-static {v0, p1, p2, v1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;->access$000(Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter;ILjava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V

    .line 191
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "isSuccess"    # Ljava/lang/Boolean;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    if-eqz v0, :cond_a

    .line 184
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->val$callback:Lcom/games37/riversdk/core/callback/ResultCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/games37/riversdk/core/callback/ResultCallback;->onSuccess(ILjava/lang/Object;)V

    .line 186
    :cond_a
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/social/presenter/SocialPresenter$3;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
