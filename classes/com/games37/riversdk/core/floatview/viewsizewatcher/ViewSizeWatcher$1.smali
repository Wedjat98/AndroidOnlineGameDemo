.class Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;
.super Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;
.source "ViewSizeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;->this$0:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    invoke-direct {p0, p2}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 34
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;->this$0:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    # getter for: Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->access$000(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 35
    .local v1, "width":I
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;->this$0:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    # getter for: Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->access$000(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 37
    .local v0, "height":I
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;->this$0:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    # getter for: Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreWidth:I
    invoke-static {v2}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->access$100(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;)I

    move-result v2

    if-ne v1, v2, :cond_24

    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;->this$0:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    # getter for: Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreHeight:I
    invoke-static {v2}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->access$200(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;)I

    move-result v2

    if-eq v0, v2, :cond_33

    .line 38
    :cond_24
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;->this$0:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    # invokes: Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->invokeViewSizeChangedListener(II)V
    invoke-static {v2, v1, v0}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->access$300(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;II)V

    .line 39
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;->this$0:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    # setter for: Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreWidth:I
    invoke-static {v2, v1}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->access$102(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;I)I

    .line 40
    iget-object v2, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher$1;->this$0:Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;

    # setter for: Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->mPreHeight:I
    invoke-static {v2, v0}, Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;->access$202(Lcom/games37/riversdk/core/floatview/viewsizewatcher/ViewSizeWatcher;I)I

    .line 42
    :cond_33
    return-void
.end method
