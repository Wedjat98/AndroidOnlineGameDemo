.class public Lcom/games37/riversdk/core/login/view/UpdateDialog;
.super Lcom/games37/riversdk/core/view/BaseDialog;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;,
        Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

.field private tvCancel:Landroid/widget/TextView;

.field private tvConfirm:Landroid/widget/TextView;

.field private tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/login/view/UpdateDialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    iput-object p2, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    .line 47
    iput-object p1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/games37/riversdk/core/login/view/UpdateDialog;->initView()V

    .line 49
    invoke-direct {p0}, Lcom/games37/riversdk/core/login/view/UpdateDialog;->initData()V

    .line 50
    return-void
.end method

.method private initData()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 92
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v1, v1, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_13
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->cancelText:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 96
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v1, v1, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->cancelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_26
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->comfirmText:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 100
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->tvConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v1, v1, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->comfirmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_39
    return-void
.end method

.method private initView()V
    .registers 5

    .prologue
    .line 76
    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mContext:Landroid/content/Context;

    const-string v3, "r1_sdk_user_update_dialog"

    .line 77
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/login/view/UpdateDialog;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mContext:Landroid/content/Context;

    const-string v2, "tv_content"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->tvContent:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mContext:Landroid/content/Context;

    const-string v2, "tv_cancel"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->tvCancel:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mContext:Landroid/content/Context;

    const-string v2, "tv_confirm"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->tvConfirm:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/games37/riversdk/core/view/BaseDialog;->onBackPressed()V

    .line 70
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    if-eqz v0, :cond_10

    .line 71
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onCancel()V

    .line 73
    :cond_10
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 55
    invoke-virtual {p0}, Lcom/games37/riversdk/core/login/view/UpdateDialog;->dismiss()V

    .line 56
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    if-eqz v0, :cond_18

    .line 57
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onCancel()V

    .line 65
    :cond_18
    :goto_18
    return-void

    .line 59
    :cond_19
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 60
    invoke-virtual {p0}, Lcom/games37/riversdk/core/login/view/UpdateDialog;->dismiss()V

    .line 61
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    if-eqz v0, :cond_18

    .line 62
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onConfirm()V

    goto :goto_18
.end method
