.class Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;
.super Ljava/lang/Object;
.source "FloatViewPresenter.java"

# interfaces
.implements Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->facebookShare(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;Lcom/games37/riversdk/core/model/RoleData;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$menuFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

.field final synthetic val$roleData:Lcom/games37/riversdk/core/model/RoleData;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;Lcom/games37/riversdk/core/model/RoleData;)V
    .registers 5
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->this$0:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->val$menuFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    iput-object p4, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->val$roleData:Lcom/games37/riversdk/core/model/RoleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 460
    const-string v0, "FloatViewPresenter"

    const-string v1, "requestFBShare onCancel"

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 454
    const-string v0, "FloatViewPresenter"

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

    .line 455
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 439
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 7
    .param p1, "postId"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v0, "FloatViewPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFBShare onSuccess postId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->this$0:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->val$menuFunctionInfo:Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->val$roleData:Lcom/games37/riversdk/core/model/RoleData;

    # invokes: Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->getShareReward(Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;Lcom/games37/riversdk/core/model/RoleData;)V
    invoke-static {v0, v1, v2, v3}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->access$100(Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;Landroid/app/Activity;Lcom/games37/riversdk/gm99/floatview/model/MenuFunctionInfo;Lcom/games37/riversdk/core/model/RoleData;)V

    .line 448
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->this$0:Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter$4;->val$activity:Landroid/app/Activity;

    const-string v2, "3"

    const-string v3, ""

    const-string v4, "2"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/games37/riversdk/gm99/floatview/presenter/FloatViewPresenter;->statisticClick(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method
