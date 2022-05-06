.class public Lcom/games37/riversdk/core/view/SDKProgressDialog;
.super Lcom/games37/riversdk/core/view/BaseDialog;
.source "SDKProgressDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKProgressDialog"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/games37/riversdk/core/view/SDKProgressDialog;->mActivity:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method public hideDialog()V
    .registers 2

    .prologue
    .line 40
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/SDKProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/SDKProgressDialog;->dismiss()V

    .line 43
    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/view/SDKProgressDialog;->setCancelable(Z)V

    .line 34
    iget-object v1, p0, Lcom/games37/riversdk/core/view/SDKProgressDialog;->mActivity:Landroid/app/Activity;

    .line 35
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/core/view/SDKProgressDialog;->mActivity:Landroid/app/Activity;

    const-string v3, "r1_sdk_dialog_progress"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/SDKProgressDialog;->setContentView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public showDialog()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SDKProgressDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/SDKProgressDialog;->show()V

    .line 49
    :cond_b
    return-void
.end method
