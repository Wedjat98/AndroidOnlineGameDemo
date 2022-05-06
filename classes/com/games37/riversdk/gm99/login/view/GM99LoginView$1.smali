.class Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;
.super Ljava/lang/Object;
.source "GM99LoginView.java"

# interfaces
.implements Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->initPopWindow()V
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
    .line 299
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$200(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v1

    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$000(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    .line 305
    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mAccountList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$100(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/login/model/UserInfo;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/login/model/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {v1, v2, v0}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->deleteAccountInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public empty()V
    .registers 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etAccount:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$300(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->etPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$400(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->ivAccountList:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$500(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$200(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$600(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setLastLoginAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->loginDao:Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$200(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$700(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/gm99/login/dao/GM99LoginDao;->setLastLoginPwd(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99LoginView$1;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99LoginView;

    # getter for: Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->aListView:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/GM99LoginView;->access$800(Lcom/games37/riversdk/gm99/login/view/GM99LoginView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 318
    return-void
.end method
