.class public Lcom/games37/riversdk/core/login/view/WelcomeToast;
.super Landroid/widget/Toast;
.source "WelcomeToast.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mTvWelcome:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResName"    # Ljava/lang/String;
    .param p3, "tvResName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0, p2, p3}, Lcom/games37/riversdk/core/login/view/WelcomeToast;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "layoutResName"    # Ljava/lang/String;
    .param p2, "tvResName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {v1, p1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mContentView:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {v1, p2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mTvWelcome:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mTvWelcome:Landroid/widget/TextView;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 48
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/login/view/WelcomeToast;->setView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0, v3}, Lcom/games37/riversdk/core/login/view/WelcomeToast;->setDuration(I)V

    .line 50
    const/16 v0, 0x31

    invoke-virtual {p0, v0, v3, v3}, Lcom/games37/riversdk/core/login/view/WelcomeToast;->setGravity(III)V

    .line 51
    return-void
.end method


# virtual methods
.method public show(Ljava/lang/String;)V
    .registers 3
    .param p1, "welcomeText"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61
    :cond_6
    :goto_6
    return-void

    .line 57
    :cond_7
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mTvWelcome:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/games37/riversdk/common/utils/CommonUtils;->isValidActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/WelcomeToast;->mTvWelcome:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    goto :goto_6
.end method
