.class Lcom/games37/riversdk/gm99/floatview/view/FloatView$1;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/gm99/floatview/view/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->access$000(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 547
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    const/4 v1, 0x0

    # setter for: Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mIsShowMenu:Z
    invoke-static {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->access$002(Lcom/games37/riversdk/gm99/floatview/view/FloatView;Z)Z

    .line 548
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mMenuView:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->access$100(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setVisibility(I)V

    .line 550
    :cond_19
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    # invokes: Lcom/games37/riversdk/gm99/floatview/view/FloatView;->suspendClingBoundary()V
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->access$200(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)V

    .line 551
    return-void
.end method
