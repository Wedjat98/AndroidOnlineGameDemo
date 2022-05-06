.class Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;
.super Ljava/lang/Object;
.source "GM99JSPresenter.java"

# interfaces
.implements Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->facebookShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V
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
.field final synthetic this$0:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;

.field final synthetic val$callbackMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;Landroid/app/Activity;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->this$0:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$callbackMethod:Ljava/lang/String;

    iput-object p4, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$callback:Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 8

    .prologue
    .line 167
    iget-object v0, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$activity:Landroid/app/Activity;

    const-string v2, "a1_sdk_share_cancel"

    .line 168
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 167
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->this$0:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$activity:Landroid/app/Activity;

    const-string v2, "0"

    const-string v4, ""

    iget-object v5, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$callbackMethod:Ljava/lang/String;

    iget-object v6, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$callback:Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;

    # invokes: Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->shareCallback2JS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->access$000(Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V

    .line 170
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 10
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, "GM99JSPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facebookShare onFailed code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->this$0:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$activity:Landroid/app/Activity;

    const-string v2, "0"

    const-string v4, ""

    iget-object v5, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$callbackMethod:Ljava/lang/String;

    iget-object v6, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$callback:Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;

    move-object v3, p2

    # invokes: Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->shareCallback2JS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->access$000(Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V

    .line 163
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 150
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 9
    .param p1, "postId"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "GM99JSPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facebookShare onSuccess postId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$activity:Landroid/app/Activity;

    const-string v2, "a1_sdk_share_success"

    .line 155
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->this$0:Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$activity:Landroid/app/Activity;

    const-string v2, "1"

    iget-object v5, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$callbackMethod:Ljava/lang/String;

    iget-object v6, p0, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter$1;->val$callback:Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;

    move-object v4, p1

    # invokes: Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->shareCallback2JS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;->access$000(Lcom/games37/riversdk/gm99/presenter/GM99JSPresenter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/presenter/IJSBusinessPresenter$BusinessCallback;)V

    .line 157
    return-void
.end method
