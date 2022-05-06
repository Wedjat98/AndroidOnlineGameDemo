.class public Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;
.super Landroid/widget/ListView;
.source "SocialItemListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView$OnItemClickCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SocialItemListView"


# instance fields
.field private mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;

.field private mOnItemClickCallback:Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView$OnItemClickCallback;

.field private mViewParamsList:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public hideItem(Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 127
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    .line 128
    .local v0, "params":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getViewTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 129
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->notifyDataSetChanged()V

    .line 135
    .end local v0    # "params":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    :cond_2c
    return-void
.end method

.method public init(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;

    invoke-virtual {p0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;

    .line 54
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    invoke-virtual {p0, p0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p3, :cond_2e

    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mOnItemClickCallback:Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView$OnItemClickCallback;

    if-eqz v1, :cond_2e

    .line 68
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    .line 69
    .local v0, "params":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getItemCheckState()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 70
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getViewTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->selectItem(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mOnItemClickCallback:Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView$OnItemClickCallback;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getViewTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p3, v2}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView$OnItemClickCallback;->onItemClick(ILjava/lang/String;)V

    .line 75
    .end local v0    # "params":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    :cond_2e
    return-void
.end method

.method public selectItem(Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 99
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;

    .line 100
    .local v1, "params":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    invoke-virtual {v1}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->getViewTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->setItemCheckState(Z)V

    .line 98
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_22
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;->setItemCheckState(Z)V

    goto :goto_1f

    .line 107
    .end local v1    # "params":Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;
    :cond_27
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public setOnItemClickCallback(Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView$OnItemClickCallback;)V
    .registers 2
    .param p1, "onItemClickCallback"    # Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView$OnItemClickCallback;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mOnItemClickCallback:Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView$OnItemClickCallback;

    .line 61
    return-void
.end method

.method public setRedPointState(Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p1}, Lcom/games37/riversdk/common/utils/StringVerifyUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 84
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_22

    .line 86
    invoke-virtual {p0}, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "iv_red_point"

    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    .local v0, "ivRedPoint":Landroid/widget/ImageView;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    .end local v0    # "ivRedPoint":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_22
    return-void
.end method

.method public update(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/SocialItemViewParams;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mViewParamsList:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/SocialItemListView;->mAdapter:Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/adapter/SocialItemListAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method
