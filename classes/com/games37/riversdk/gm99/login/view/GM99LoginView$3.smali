.class Lcom/games37/riversdk/gm99/login/view/GM99LoginView$3;
.super Ljava/lang/Object;
.source "GM99LoginView.java"

# interfaces
.implements Lcom/games37/riversdk/core/callback/OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->showPrivacyDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$3;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$3;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->presenter:Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$1400(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/login/presenter/GM99LoginPresenterImpl;->close(Landroid/app/Activity;)V

    .line 516
    return-void
.end method

.method public onConfirm()V
    .registers 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$3;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$200(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$3;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setPrivacyStatus(Landroid/content/Context;Z)V

    .line 510
    return-void
.end method
