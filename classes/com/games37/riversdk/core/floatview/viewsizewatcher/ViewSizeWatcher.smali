.class public Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;
.super Ljava/lang/Object;
.source "ViewSizeWatcher.java"

# interfaces
.implements Lcom/games37/riversdk/core/floatview/viewsizewatcher/Dispose;


# static fields
.field public static final TAG:Ljava/lang/String; = "ViewSizeWatcher"


# instance fields
.field private mMyOnGlobalLayoutListener:Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;

.field private mOnViewSizeChangedListener:Lcom/games37/riversdk/core/floatview/viewsizewatcher/OnViewSizeChangedListener;

.field private mPreHeight:I

.field private mPreWidth:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mView:Landroid/view/View;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    .prologue
    .line 13
    iget v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;I)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    .prologue
    .line 13
    iget v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;I)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;II)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->invokeViewSizeChangedListener(II)V

    return-void
.end method

.method private invokeViewSizeChangedListener(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 58
    const-string v0, "ViewSizeWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeViewSizeChangedListener: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mOnViewSizeChangedListener:Lcom/games37/riversdk/core/floatview/viewsizewatcher/OnViewSizeChangedListener;

    if-eqz v0, :cond_33

    .line 60
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mOnViewSizeChangedListener:Lcom/games37/riversdk/core/floatview/viewsizewatcher/OnViewSizeChangedListener;

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mView:Landroid/view/View;

    invoke-interface {v0, v1, p1, p2}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/OnViewSizeChangedListener;->onViewSizeChanged(Landroid/view/View;II)V

    .line 62
    :cond_33
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .prologue
    .line 66
    const-string v0, "ViewSizeWatcher"

    const-string v1, "dispose: "

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mOnViewSizeChangedListener:Lcom/games37/riversdk/core/floatview/viewsizewatcher/OnViewSizeChangedListener;

    .line 68
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mMyOnGlobalLayoutListener:Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;->dispose()V

    .line 70
    return-void
.end method

.method public setOnViewSizeChangedListener(Lcom/games37/riversdk/core/floatview/viewsizewatcher/OnViewSizeChangedListener;)V
    .registers 2
    .param p1, "onViewSizeChangedListener"    # Lcom/games37/riversdk/core/floatview/viewsizewatcher/OnViewSizeChangedListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mOnViewSizeChangedListener:Lcom/games37/riversdk/core/floatview/viewsizewatcher/OnViewSizeChangedListener;

    .line 55
    return-void
.end method

.method public setup()V
    .registers 3

    .prologue
    .line 30
    const-string v0, "ViewSizeWatcher"

    const-string v1, "setup: "

    invoke-static {v0, v1}, Lcom/games37/riversdk/common/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mView:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;-><init>(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;Landroid/view/View;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mMyOnGlobalLayoutListener:Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;

    .line 45
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreWidth:I

    .line 46
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreHeight:I

    .line 48
    iget v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreHeight:I

    if-nez v0, :cond_28

    iget v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreWidth:I

    if-eqz v0, :cond_2f

    .line 49
    :cond_28
    iget v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreWidth:I

    iget v1, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreHeight:I

    invoke-direct {p0, v0, v1}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->invokeViewSizeChangedListener(II)V

    .line 51
    :cond_2f
    return-void
.end method
