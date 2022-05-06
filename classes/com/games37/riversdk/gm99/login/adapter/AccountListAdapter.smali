.class public Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;,
        Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;
    }
.end annotation


# instance fields
.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/games37/riversdk/core/login/model/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/games37/riversdk/core/login/model/UserInfo;",
            ">;",
            "Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/games37/riversdk/core/login/model/UserInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mAccountList:Ljava/util/ArrayList;

    .line 36
    iput-object p3, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mCallback:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;)Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mCallback:Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$OnDeleteCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mAccountList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 57
    if-nez p2, :cond_59

    .line 58
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "a1_sdk_item_account_list"

    .line 59
    invoke-static {v3, v4}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 58
    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v1, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;

    invoke-direct {v1, v5}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;-><init>(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;)V

    .line 61
    .local v1, "cell":Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "tvAccount"

    .line 62
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;->tvAccount:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "ivDelete"

    .line 64
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;->ivDelete:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_3d
    iget-object v2, p0, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/games37/riversdk/core/login/model/UserInfo;

    invoke-virtual {v2}, Lcom/games37/riversdk/core/login/model/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "account":Ljava/lang/String;
    iget-object v2, v1, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;->tvAccount:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v1, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;->ivDelete:Landroid/widget/ImageView;

    new-instance v3, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;-><init>(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-object p2

    .line 67
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "cell":Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;
    :cond_59
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;

    .restart local v1    # "cell":Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;
    goto :goto_3d
.end method
