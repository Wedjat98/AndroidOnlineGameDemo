.class Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/view/FloatView;->moveLogo(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

.field final synthetic val$endY:I

.field final synthetic val$isOpenMenu:Z


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/view/FloatView;IZ)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    iput p2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;->val$endY:I

    iput-boolean p3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;->val$isOpenMenu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 831
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 833
    .local v0, "animatorValue":I
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->access$300(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 834
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowManagerImpl:Lcom/games37/riversdk/core/floatview/SDKWindowManager;
    invoke-static {v1}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->access$400(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)Lcom/games37/riversdk/core/floatview/SDKWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    iget-object v3, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/FloatView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->access$300(Lcom/games37/riversdk/gm99/floatview/view/FloatView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/games37/riversdk/core/floatview/SDKWindowManager;->updateLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 836
    iget v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;->val$endY:I

    if-ne v0, v1, :cond_30

    iget-boolean v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;->val$isOpenMenu:Z

    if-eqz v1, :cond_30

    .line 838
    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/view/FloatView$2;->this$0:Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    invoke-virtual {v1}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->changeMenuState()V

    .line 840
    :cond_30
    return-void
.end method
