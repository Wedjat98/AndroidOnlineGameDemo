.class public Lcom/games37/riversdk/core/floatview/view/MenuView;
.super Landroid/widget/FrameLayout;
.source "MenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/floatview/view/MenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field public static final RED_POINT:Ljava/lang/String; = "RED_POINT"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/games37/riversdk/core/floatview/view/MenuView$OnMenuItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/games37/riversdk/core/floatview/view/MenuView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/floatview/view/MenuView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/floatview/view/MenuView$OnMenuItemClickListener;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/games37/riversdk/core/floatview/view/MenuView$OnMenuItemClickListener;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mListener:Lcom/games37/riversdk/core/floatview/view/MenuView$OnMenuItemClickListener;

    .line 36
    invoke-direct {p0}, Lcom/games37/riversdk/core/floatview/view/MenuView;->initView()V

    .line 37
    return-void
.end method

.method private buildMenuItem(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "isAddRedPoint"    # Z

    .prologue
    .line 78
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContext:Landroid/content/Context;

    const-string v6, "a1_floatview_circle_menu_item"

    .line 79
    invoke-static {v5, v6}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    .line 78
    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 81
    .local v2, "menuItem":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContext:Landroid/content/Context;

    const-string v5, "iv_red_point"

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 82
    .local v1, "iv_red_point":Landroid/widget/ImageView;
    const-string v4, "RED_POINT"

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContext:Landroid/content/Context;

    const-string v5, "iv_icon"

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    .local v0, "iv_icon":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContext:Landroid/content/Context;

    const-string v5, "tv_name"

    invoke-static {v4, v5}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 89
    .local v3, "tv_name":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 91
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    if-eqz p3, :cond_5d

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :goto_56
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-object v2

    .line 96
    :cond_5d
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_56
.end method

.method private initView()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 43
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContext:Landroid/content/Context;

    const-string v3, "a1_floatview_circle_menu"

    .line 44
    invoke-static {v2, v3}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 43
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContentView:Landroid/view/ViewGroup;

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/floatview/view/MenuView;->addView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/floatview/view/MenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method

.method private setRedPointState(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    if-nez p1, :cond_7

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_7

    .line 146
    :cond_6
    :goto_6
    return-void

    :cond_7
    move-object v1, p1

    .line 137
    check-cast v1, Landroid/view/ViewGroup;

    .line 139
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const-string v2, "RED_POINT"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "red_point":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 143
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method


# virtual methods
.method public addMenuChild(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "isAddedRP"    # Z

    .prologue
    .line 58
    sget-object v0, Lcom/games37/riversdk/core/floatview/view/MenuView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMenuChild url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAddedRP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_41

    .line 60
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContentView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/floatview/view/MenuView;->buildMenuItem(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 62
    invoke-virtual {p0}, Lcom/games37/riversdk/core/floatview/view/MenuView;->invalidate()V

    .line 64
    :cond_41
    return-void
.end method

.method public getMenuItemCount()I
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 124
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/floatview/view/MenuView;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/floatview/view/MenuView;->setRedPointState(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mListener:Lcom/games37/riversdk/core/floatview/view/MenuView$OnMenuItemClickListener;

    if-eqz v0, :cond_c

    .line 152
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/MenuView;->mListener:Lcom/games37/riversdk/core/floatview/view/MenuView$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Lcom/games37/riversdk/core/floatview/view/MenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/View;)V

    .line 154
    :cond_c
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/floatview/view/MenuView;->setVisibility(I)V

    .line 118
    return-void
.end method
