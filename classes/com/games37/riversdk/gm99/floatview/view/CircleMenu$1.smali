.class Lcom/games37/riversdk/gm99/floatview/view/CircleMenu$1;
.super Ljava/lang/Object;
.source "CircleMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->hideMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v1, 0x8

    .line 553
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuItemContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->access$000(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->access$100(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mCloseViewBG:Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->access$200(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/CloseViewBG;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuStateChangeListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->access$300(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 559
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu$1;->this$0:Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->mMenuStateChangeListener:Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;->access$300(Lcom/games37/riversdk/gm99/floatview/view/CircleMenu;)Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/games37/riversdk/gm99/floatview/listener/OnMenuStateChangeListener;->onMenuHide()V

    .line 561
    :cond_33
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 566
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 549
    return-void
.end method
