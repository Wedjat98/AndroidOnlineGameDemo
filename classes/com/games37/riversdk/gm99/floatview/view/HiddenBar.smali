.class public Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;
.super Landroid/widget/FrameLayout;
.source "HiddenBar.java"


# instance fields
.field private mHiddenArea:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->initView(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v1, "a1_sdk_floatview_hidden_bar"

    .line 33
    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 32
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "hiddenBar":Landroid/view/View;
    const-string v1, "rl_content"

    invoke-static {p1, v1}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->mHiddenArea:Landroid/view/View;

    .line 35
    invoke-virtual {p0, v0}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->addView(Landroid/view/View;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getHiddenAreaHeight()I
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getHiddenAreaWidth()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->mHiddenArea:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 45
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->mHiddenArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 47
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hideBackground()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->mHiddenArea:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 75
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->mHiddenArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    :cond_a
    return-void
.end method

.method public showBackground()V
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->mHiddenArea:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 65
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->mHiddenArea:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/games37/riversdk/gm99/floatview/view/HiddenBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "a1_sdk_floatview_hidden_area_bg"

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/utils/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    :cond_13
    return-void
.end method
