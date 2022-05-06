.class Lcom/games37/riversdk/functions/facebook/FacebookWrapper$2;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"

# interfaces
.implements Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->facebookGetAccountInfo(Landroid/app/Activity;Ljava/util/List;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
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
.field final synthetic this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

.field final synthetic val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$2;->this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    iput-object p2, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$2;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$2;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-interface {v0}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onCancel()V

    .line 269
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$2;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;->onFailed(ILjava/lang/String;)V

    .line 264
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$2;->this$0:Lcom/games37/riversdk/functions/facebook/FacebookWrapper;

    iget-object v1, p0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$2;->val$callback:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;

    # invokes: Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->getAccountInfoByFB(Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V
    invoke-static {v0, v1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper;->access$100(Lcom/games37/riversdk/functions/facebook/FacebookWrapper;Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;)V

    .line 259
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 254
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$2;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
