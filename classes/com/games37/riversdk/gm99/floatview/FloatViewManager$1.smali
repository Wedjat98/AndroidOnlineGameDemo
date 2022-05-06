.class Lcom/games37/riversdk/gm99/floatview/FloatViewManager$1;
.super Ljava/lang/Object;
.source "FloatViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->showFloatView(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$1;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    iput-object p2, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$1;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    iget-object v1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->createFloatView(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->access$000(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;Landroid/app/Activity;)V

    .line 147
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$1;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    # getter for: Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->access$100(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->show()V

    .line 148
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$1;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    # getter for: Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->access$100(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->setShowing(Z)V

    .line 149
    return-void
.end method
