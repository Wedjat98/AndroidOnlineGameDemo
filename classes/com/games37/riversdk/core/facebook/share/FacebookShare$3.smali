.class Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;
.super Ljava/lang/Object;
.source "FacebookShare.java"

# interfaces
.implements Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/share/FacebookShare;->requestFBShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->val$params:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .prologue
    .line 305
    const-string v0, "FacebookShare"

    const-string v1, "requestFBShare onCancel"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    const/4 v1, -0x1

    const-string v2, "cancel"

    invoke-interface {v0, v1, v2}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;->onFinished(ILjava/lang/String;)V

    .line 309
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string v0, "FacebookShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFBShare onFailed code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;->onFinished(ILjava/lang/String;)V

    .line 300
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 287
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "postId"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->val$params:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$3;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/share/FacebookShare;->requestServerShared(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    invoke-static {v0, v1, p1, v2, v3}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->access$400(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    .line 293
    return-void
.end method
