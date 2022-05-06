.class public Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;
.super Lcom/games37/riversdk/core/view/BaseDialog;
.source "SafetyCertDialog.java"


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnConfirm:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

.field private wvContent:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .line 38
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->initViewElement()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;)Lcom/games37/riversdk/core/callback/OnBtnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    return-object v0
.end method

.method private initViewElement()V
    .registers 5

    .prologue
    .line 43
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->mContext:Landroid/content/Context;

    const-string v3, "a1_sdk_dialog_tip"

    .line 44
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->setContentView(Landroid/view/View;)V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->mContext:Landroid/content/Context;

    const-string v2, "wvContent"

    .line 49
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->wvContent:Landroid/webkit/WebView;

    .line 51
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->mContext:Landroid/content/Context;

    const-string v2, "btnConfirm"

    .line 52
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->btnConfirm:Landroid/widget/Button;

    .line 54
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->btnConfirm:Landroid/widget/Button;

    new-instance v2, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog$1;

    invoke-direct {v2, p0}, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog$1;-><init>(Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->mContext:Landroid/content/Context;

    const-string v2, "btnCancel"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->btnCancel:Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->btnCancel:Landroid/widget/Button;

    new-instance v2, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog$2;

    invoke-direct {v2, p0}, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog$2;-><init>(Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public show(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 85
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->wvContent:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 86
    invoke-super {p0}, Lcom/games37/riversdk/core/view/BaseDialog;->show()V

    .line 88
    :cond_e
    return-void
.end method
