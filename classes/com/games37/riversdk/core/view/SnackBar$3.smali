.class Lcom/games37/riversdk/core/view/SnackBar$3;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/view/SnackBar;->invokeAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/view/SnackBar;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/view/SnackBar;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/view/SnackBar;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/games37/riversdk/core/view/SnackBar$3;->this$0:Lcom/games37/riversdk/core/view/SnackBar;

    iput-boolean p2, p0, Lcom/games37/riversdk/core/view/SnackBar$3;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/games37/riversdk/core/view/SnackBar$3;->val$isShow:Z

    if-nez v0, :cond_9

    .line 173
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar$3;->this$0:Lcom/games37/riversdk/core/view/SnackBar;

    # invokes: Lcom/games37/riversdk/core/view/BaseDialog;->dismiss()V
    invoke-static {v0}, Lcom/games37/riversdk/core/view/SnackBar;->access$201(Lcom/games37/riversdk/core/view/SnackBar;)V

    .line 175
    :cond_9
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 180
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 168
    return-void
.end method
