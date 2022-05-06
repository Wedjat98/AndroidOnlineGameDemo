.class Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;
.super Ljava/lang/Object;
.source "FacebookShare.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/share/FacebookShare;->getServerTimestamp(Landroid/app/Activity;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/os/Bundle;Landroid/app/Activity;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;->onFinished(ILjava/lang/String;)V

    .line 200
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    invoke-interface {v0, p1, p2}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;->onFinished(ILjava/lang/String;)V

    .line 195
    return-void
.end method

.method public onSuccess(ILjava/lang/Long;)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "serverTimeMillis"    # Ljava/lang/Long;

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 184
    .local v0, "currentTimeMillis":J
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 185
    .local v2, "difference":J
    const-string v4, "FacebookShare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestServerTimestamp callbackSuccess serverTimeMillis:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " difference:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->val$bundle:Landroid/os/Bundle;

    const-string v5, "difference"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 189
    iget-object v4, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    iget-object v5, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->this$0:Lcom/games37/riversdk/core/facebook/share/FacebookShare;

    # getter for: Lcom/games37/riversdk/core/facebook/share/FacebookShare;->mImagePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->access$000(Lcom/games37/riversdk/core/facebook/share/FacebookShare;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->val$bundle:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->val$callback:Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;

    # invokes: Lcom/games37/riversdk/core/facebook/share/FacebookShare;->requestServerUploadFile(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/games37/riversdk/core/facebook/share/FacebookShare;->access$100(Lcom/games37/riversdk/core/facebook/share/FacebookShare;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/games37/riversdk/core/facebook/share/FacebookShare$ShareCallback;)V

    .line 190
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 178
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/core/facebook/share/FacebookShare$1;->onSuccess(ILjava/lang/Long;)V

    return-void
.end method
