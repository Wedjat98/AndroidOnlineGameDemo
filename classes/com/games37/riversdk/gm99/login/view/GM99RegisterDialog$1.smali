.class Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;
.super Ljava/lang/Object;
.source "GM99RegisterDialog.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->register(Landroid/app/Activity;)V
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->showSnackBar(Landroid/app/Activity;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->showSnackBar(Landroid/app/Activity;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 232
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;->onSuccess(ILjava/util/Map;)V

    return-void
.end method

.method public onSuccess(ILjava/util/Map;)V
    .registers 6
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getInstance()Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    move-result-object v0

    sget-object v1, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;->LOGIN:Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;

    .line 237
    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;)Lcom/games37/riversdk/core/callback/BaseCallback;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p1, p2}, Lcom/games37/riversdk/core/callback/BaseCallback;->onResult(ILjava/util/Map;)V

    .line 239
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->dismiss()V

    .line 240
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->iAction:Lcom/games37/riversdk/core/callback/IAction;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->access$000(Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;)Lcom/games37/riversdk/core/callback/IAction;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/games37/riversdk/core/callback/IAction;->onFinished(ILandroid/os/Bundle;)V

    .line 241
    return-void
.end method
