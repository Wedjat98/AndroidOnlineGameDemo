.class Lcom/games37/riversdk/functions/facebook/FacebookWrapper$6;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookSharePhoto(Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

.field final synthetic val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$6;->this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    iput-object p2, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$6;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 538
    # getter for: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebookSharePhoto onCancel"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$6;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-interface {v0}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onCancel()V

    .line 540
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 5
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 544
    # getter for: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facebookSharePhoto onError error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    if-eqz p1, :cond_2f

    .line 546
    iget-object v0, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$6;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    sget-object v1, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->FAILED:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onFailed(ILjava/lang/String;)V

    .line 548
    :cond_2f
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .registers 5
    .param p1, "result"    # Lcom/facebook/share/Sharer$Result;

    .prologue
    .line 530
    # getter for: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "facebookSharePhoto onSuccess"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "postId"

    invoke-virtual {p1}, Lcom/facebook/share/Sharer$Result;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$6;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-interface {v1, v0}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 534
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 526
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$6;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
