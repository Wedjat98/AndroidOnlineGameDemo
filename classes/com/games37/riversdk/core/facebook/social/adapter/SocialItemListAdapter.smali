.class public Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SocialItemListAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SocialItemListAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemViewParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "itemViewParamsList":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mItemViewParamsList:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mItemViewParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mItemViewParamsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 61
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mItemViewParamsList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    .line 63
    .local v4, "params":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    if-nez p2, :cond_bf

    .line 64
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    const-string v9, "i1_sdk_fb_social_item_view"

    .line 65
    invoke-static {v8, v9}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    .line 64
    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 70
    .local v6, "view":Landroid/view/View;
    :goto_1b
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "fl_item"

    .line 71
    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 73
    .local v0, "fl_item":Landroid/widget/FrameLayout;
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "iv_icon"

    .line 74
    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 76
    .local v1, "ivItemIcon":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "tv_item_text"

    .line 77
    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 79
    .local v5, "tvItemName":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "iv_item_selector"

    .line 80
    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 82
    .local v2, "ivItemSelectedIcon":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "iv_red_point"

    .line 83
    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 85
    .local v3, "ivRedPoint":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getItemIconRes()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getItemNameRes()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 89
    invoke-virtual {v4}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getItemCheckState()Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 91
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    const-string v9, "i1_sdk_fb_social_fl_fb_content_area_bg"

    .line 93
    invoke-static {v8, v9}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 92
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 91
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 95
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    const-string v9, "i1_sdk_fb_social_item_text_checked"

    .line 97
    invoke-static {v8, v9}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 96
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 95
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :goto_ae
    invoke-virtual {v4}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->isShowRedpoint()Z

    move-result v7

    if-eqz v7, :cond_f0

    .line 114
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :goto_b7
    invoke-virtual {v4}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getViewTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    return-object v6

    .line 67
    .end local v0    # "fl_item":Landroid/widget/FrameLayout;
    .end local v1    # "ivItemIcon":Landroid/widget/ImageView;
    .end local v2    # "ivItemSelectedIcon":Landroid/widget/ImageView;
    .end local v3    # "ivRedPoint":Landroid/widget/ImageView;
    .end local v5    # "tvItemName":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :cond_bf
    move-object v6, p2

    .restart local v6    # "view":Landroid/view/View;
    goto/16 :goto_1b

    .line 102
    .restart local v0    # "fl_item":Landroid/widget/FrameLayout;
    .restart local v1    # "ivItemIcon":Landroid/widget/ImageView;
    .restart local v2    # "ivItemSelectedIcon":Landroid/widget/ImageView;
    .restart local v3    # "ivRedPoint":Landroid/widget/ImageView;
    .restart local v5    # "tvItemName":Landroid/widget/TextView;
    :cond_c2
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    const-string v9, "i1_sdk_fb_social_white"

    .line 104
    invoke-static {v8, v9}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 103
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 102
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 106
    iget-object v7, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->mContext:Landroid/content/Context;

    const-string v9, "i1_sdk_fb_social_item_text_normal"

    .line 108
    invoke-static {v8, v9}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 107
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 106
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ae

    .line 116
    :cond_f0
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b7
.end method
