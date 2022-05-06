.class public abstract Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected final mItemLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;, "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter<TT;>;"
    .local p2, "mDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mContext:Landroid/content/Context;

    .line 20
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 21
    iput-object p2, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    .line 22
    iput p3, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mItemLayoutId:I

    .line 23
    return-void
.end method

.method private getViewHolder(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    .local p0, "this":Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;, "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter<TT;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mItemLayoutId:I

    invoke-static {v0, p2, p3, v1, p1}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 27
    .local p0, "this":Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;, "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter<TT;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDatas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;, "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter<TT;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;, "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter<TT;>;"
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;, "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    .local p0, "this":Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;, "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->getViewHolder(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;

    move-result-object v0

    .line 43
    .local v0, "viewHolder":Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->convert(Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;Ljava/lang/Object;I)V

    .line 44
    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setDatas(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;, "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter<TT;>;"
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    .line 55
    return-void
.end method
