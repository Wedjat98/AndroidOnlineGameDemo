.class public abstract Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;
.super Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;
.source "FriendsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter",
        "<",
        "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
        ">;"
    }
.end annotation


# instance fields
.field private isSelectedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


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
            "<",
            "Lcom/games37/riversdk/core/facebook/social/model/Friend;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/games37/riversdk/core/facebook/social/model/Friend;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/facebook/social/adapter/CommonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->isSelectedData:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->isSelectedData:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public clearAllSelectedState()V
    .registers 4

    .prologue
    .line 58
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->isSelectedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 63
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_1f
    invoke-virtual {p0}, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public getIsSelected(I)Z
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "checked":Z
    iget-object v2, p0, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->isSelectedData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_13

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 41
    :cond_13
    return v0
.end method

.method public setIsSelected(IZ)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "check"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/adapter/FriendsListAdapter;->isSelectedData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
