.class public Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;
.super Lcom/games37/riversdk/core/view/BaseDialog;
.source "ApplyPermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;,
        Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

.field private tvCancel:Landroid/widget/TextView;

.field private tvConfirm:Landroid/widget/TextView;

.field private tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    .line 46
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->initView()V

    .line 48
    invoke-direct {p0}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->initData()V

    .line 49
    return-void
.end method

.method private initData()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 84
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iget-object v1, v1, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_13
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->cancelText:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 88
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->tvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iget-object v1, v1, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->cancelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_26
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->comfirmText:Ljava/lang/String;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 92
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->tvConfirm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iget-object v1, v1, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->comfirmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_39
    return-void
.end method

.method private initView()V
    .registers 5

    .prologue
    .line 67
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mContext:Landroid/content/Context;

    const-string v3, "r1_sdk_floatview_apply_permission_dialog"

    .line 68
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->setContentView(Landroid/view/View;)V

    .line 70
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mContext:Landroid/content/Context;

    const-string v2, "tv_content"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->tvContent:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mContext:Landroid/content/Context;

    const-string v2, "tv_cancel"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->tvCancel:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mContext:Landroid/content/Context;

    const-string v2, "tv_confirm"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->tvConfirm:Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->setCanceledOnTouchOutside(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 54
    invoke-virtual {p0}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->dismiss()V

    .line 55
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    if-eqz v0, :cond_18

    .line 56
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onCancel()V

    .line 64
    :cond_18
    :goto_18
    return-void

    .line 58
    :cond_19
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 59
    invoke-virtual {p0}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->dismiss()V

    .line 60
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    if-eqz v0, :cond_18

    .line 61
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iget-object v0, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onConfirm()V

    goto :goto_18
.end method
