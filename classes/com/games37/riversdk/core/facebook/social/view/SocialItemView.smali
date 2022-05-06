.class public Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;
.super Landroid/widget/FrameLayout;
.source "SocialItemView.java"


# instance fields
.field private mIvItemIcon:Landroid/widget/ImageView;

.field private mIvItemSelectedIcon:Landroid/widget/ImageView;

.field private mIvRedPoint:Landroid/widget/ImageView;

.field private mParams:Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

.field private mtvItemName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socialItemViewParams"    # Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mParams:Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    .line 48
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->initViewElement(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private initViewElement(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "i1_sdk_fb_social_item_view"

    .line 53
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->initViewElement(Landroid/content/Context;)V

    .line 55
    const-string v0, "iv_social_item"

    .line 56
    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvItemIcon:Landroid/widget/ImageView;

    .line 57
    const-string v0, "tv_item_text"

    .line 58
    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mtvItemName:Landroid/widget/TextView;

    .line 59
    const-string v0, "iv_item_selector"

    .line 60
    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvItemSelectedIcon:Landroid/widget/ImageView;

    .line 61
    const-string v0, "iv_red_point"

    .line 62
    invoke-static {p1, v0}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvRedPoint:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvItemIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mParams:Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getItemIconRes()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mtvItemName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mParams:Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getItemNameRes()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mParams:Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getItemCheckState()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 71
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvItemSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :goto_75
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mParams:Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->isShowRedpoint()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 77
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :goto_82
    return-void

    .line 73
    :cond_83
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvItemSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_75

    .line 79
    :cond_89
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_82
.end method


# virtual methods
.method public changeDisplayItemView(Z)V
    .registers 5
    .param p1, "isChecked"    # Z

    .prologue
    .line 89
    if-eqz p1, :cond_18

    .line 90
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mtvItemName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "i1_sdk_fb_social_item_text_checked"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvItemSelectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :goto_17
    return-void

    .line 93
    :cond_18
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mtvItemName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "i1_sdk_fb_social_item_text_normal"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvItemSelectedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17
.end method

.method public setRedPointState(Z)V
    .registers 4
    .param p1, "isShow"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvRedPoint:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 110
    :goto_4
    return-void

    .line 105
    :cond_5
    if-eqz p1, :cond_e

    .line 106
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvRedPoint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 108
    :cond_e
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemView;->mIvRedPoint:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method
