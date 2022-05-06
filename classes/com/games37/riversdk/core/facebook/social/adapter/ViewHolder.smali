.class public Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field private mConvertView:Landroid/view/View;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutId"    # I
    .param p4, "position"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->mConvertView:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public static get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutId"    # I
    .param p4, "position"    # I

    .prologue
    .line 24
    if-nez p1, :cond_8

    .line 25
    new-instance v0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    .line 27
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;

    goto :goto_7
.end method


# virtual methods
.method public getConvertView()Landroid/view/View;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .registers 4
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 33
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_15

    .line 34
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    :cond_15
    return-object v0
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/adapter/ViewHolder;->tag:Ljava/lang/String;

    .line 50
    return-void
.end method
