.class public Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;
.super Lcom/games37/riversdk/core/view/BaseDialog;
.source "GM99ThirdPaymentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ivClose:Landroid/widget/ImageView;

.field private layoutGp:Landroid/view/View;

.field private layoutPlat:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mPurchaseAction:Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "purchaseAction"    # Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mPurchaseAction:Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;

    .line 34
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->initView()V

    .line 35
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->setCancelable(Z)V

    .line 37
    return-void
.end method

.method private initView()V
    .registers 5

    .prologue
    .line 62
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mContext:Landroid/content/Context;

    const-string v3, "a1_sdk_dialog_payment"

    .line 63
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mContext:Landroid/content/Context;

    const-string v2, "ivClose"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->ivClose:Landroid/widget/ImageView;

    .line 67
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_google_play"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->layoutGp:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_third_payment"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->layoutPlat:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->layoutGp:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->layoutPlat:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 42
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->dismiss()V

    .line 43
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mPurchaseAction:Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;

    if-eqz v0, :cond_14

    .line 44
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mPurchaseAction:Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;

    invoke-interface {v0}, Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;->onCancel()V

    .line 59
    :cond_14
    :goto_14
    return-void

    .line 46
    :cond_15
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->layoutGp:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 47
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->dismiss()V

    .line 48
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mPurchaseAction:Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;

    if-eqz v0, :cond_14

    .line 50
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mPurchaseAction:Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;

    invoke-interface {v0}, Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;->onGooglePlayPayment()V

    goto :goto_14

    .line 52
    :cond_2a
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->layoutPlat:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 53
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->dismiss()V

    .line 54
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mPurchaseAction:Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;

    if-eqz v0, :cond_14

    .line 56
    iget-object v0, p0, Lcom/games37/riversdk/gm99/purchase/view/GM99ThirdPaymentDialog;->mPurchaseAction:Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;

    invoke-interface {v0}, Lcom/games37/riversdk/core/purchase/callback/OnPurchaseAction;->onThridPayment()V

    goto :goto_14
.end method
