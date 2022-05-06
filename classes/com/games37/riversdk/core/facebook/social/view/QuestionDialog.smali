.class public Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;
.super Lcom/games37/riversdk/core/view/BaseDialog;
.source "QuestionDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;->initViewElement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private initViewElement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 30
    invoke-virtual {p0}, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "i1_sdk_fb_social_question_dialog"

    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 31
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;->setContentView(Landroid/view/View;)V

    .line 32
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;->setCanceledOnTouchOutside(Z)V

    .line 34
    const-string v4, "tvTitle"

    .line 35
    invoke-static {p1, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 34
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    .local v2, "tvTitle":Landroid/widget/TextView;
    const-string v4, "tvContent"

    .line 37
    invoke-static {p1, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 36
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 38
    .local v1, "tvContent":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const-string v4, "iv_dialog_close"

    .line 42
    invoke-static {p1, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 41
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 43
    .local v0, "btnClose":Landroid/widget/ImageView;
    new-instance v4, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog$1;

    invoke-direct {v4, p0}, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog$1;-><init>(Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
