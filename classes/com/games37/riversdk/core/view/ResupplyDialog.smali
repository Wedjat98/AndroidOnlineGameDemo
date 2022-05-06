.class public Lcom/games37/riversdk/core/view/ResupplyDialog;
.super Ljava/lang/Object;
.source "ResupplyDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ResupplyDialog"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelText:Ljava/lang/String;

.field private mConfirmText:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

.field private mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "confirmText"    # Ljava/lang/String;
    .param p5, "cancelText"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mActivity:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mTitle:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mContent:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mConfirmText:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mCancelText:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .line 59
    new-instance v0, Lcom/games37/riversdk/core/view/MaterialDialog;

    invoke-direct {v0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/games37/riversdk/core/view/ResupplyDialog;->initView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/view/ResupplyDialog;)Lcom/games37/riversdk/core/view/MaterialDialog;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/view/ResupplyDialog;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    return-object v0
.end method

.method private initView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "confirmText"    # Ljava/lang/String;
    .param p5, "cancelText"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    if-nez v0, :cond_b

    .line 70
    new-instance v0, Lcom/games37/riversdk/core/view/MaterialDialog;

    invoke-direct {v0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    .line 73
    :cond_b
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    invoke-virtual {v0, p2}, Lcom/games37/riversdk/core/view/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/games37/riversdk/core/view/MaterialDialog;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p3}, Lcom/games37/riversdk/core/view/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/games37/riversdk/core/view/MaterialDialog;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/core/view/ResupplyDialog$2;

    invoke-direct {v1, p0, p6}, Lcom/games37/riversdk/core/view/ResupplyDialog$2;-><init>(Lcom/games37/riversdk/core/view/ResupplyDialog;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V

    .line 75
    invoke-virtual {v0, p4, v1}, Lcom/games37/riversdk/core/view/MaterialDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/games37/riversdk/core/view/MaterialDialog;

    move-result-object v0

    new-instance v1, Lcom/games37/riversdk/core/view/ResupplyDialog$1;

    invoke-direct {v1, p0, p6}, Lcom/games37/riversdk/core/view/ResupplyDialog$1;-><init>(Lcom/games37/riversdk/core/view/ResupplyDialog;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V

    .line 84
    invoke-virtual {v0, p5, v1}, Lcom/games37/riversdk/core/view/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/games37/riversdk/core/view/MaterialDialog;

    .line 93
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/view/MaterialDialog;->dismiss()V

    .line 111
    :cond_9
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    invoke-virtual {v0, p1}, Lcom/games37/riversdk/core/view/MaterialDialog;->setCanceledOnTouchOutside(Z)Lcom/games37/riversdk/core/view/MaterialDialog;

    .line 99
    :cond_9
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 103
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/view/MaterialDialog;->show()V

    .line 105
    :cond_11
    return-void
.end method
