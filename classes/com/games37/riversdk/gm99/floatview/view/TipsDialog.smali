.class public Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;
.super Lcom/games37/riversdk/core/view/BaseDialog;
.source "TipsDialog.java"


# instance fields
.field private btn_comfirm:Landroid/widget/Button;

.field private btn_dismiss:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .line 31
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->initView()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;)Lcom/games37/riversdk/core/callback/OnBtnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    return-object v0
.end method

.method private initView()V
    .registers 6

    .prologue
    .line 35
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->mContext:Landroid/content/Context;

    const-string v3, "a1_sdk_floatview_remind_dialog"

    .line 36
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->setContentView(Landroid/view/View;)V

    .line 39
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->mContext:Landroid/content/Context;

    const-string v2, "btn_comfirm"

    .line 40
    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->btn_comfirm:Landroid/widget/Button;

    .line 42
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->btn_comfirm:Landroid/widget/Button;

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->mContext:Landroid/content/Context;

    const-string v3, "a1_sdk_floatview_bt"

    const-string v4, "a1_sdk_floatview_bt_press"

    .line 43
    invoke-static {v2, v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->addStateDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->btn_comfirm:Landroid/widget/Button;

    new-instance v2, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog$1;

    invoke-direct {v2, p0}, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog$1;-><init>(Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->mContext:Landroid/content/Context;

    const-string v2, "btn_dismiss"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->btn_dismiss:Landroid/widget/Button;

    .line 57
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->btn_dismiss:Landroid/widget/Button;

    new-instance v2, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog$2;

    invoke-direct {v2, p0}, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog$2;-><init>(Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
