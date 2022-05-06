.class Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;
.super Ljava/lang/Object;
.source "GM99LoginView.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/IAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->showRegisterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "tag"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 480
    if-nez p1, :cond_33

    .line 481
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    const-string v1, "isRecord"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z
    invoke-static {v0, v1}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$902(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;Z)Z

    .line 482
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivRecord:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$1000(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z
    invoke-static {v1}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$900(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 483
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$200(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$1100(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->isRecord:Z
    invoke-static {v2}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$900(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setIsRecord(Landroid/content/Context;Z)V

    .line 490
    :cond_32
    :goto_32
    return-void

    .line 484
    :cond_33
    if-ne p1, v2, :cond_32

    .line 486
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->show()V

    .line 487
    invoke-static {}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getInstance()Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$1200(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->getFunctionList(Landroid/content/Context;)V

    .line 488
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$1400(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$1300(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;->close(Landroid/app/Activity;)V

    goto :goto_32
.end method
