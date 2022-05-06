.class Lcom/games37/riversdk/gm99/floatview/FloatViewManager$4;
.super Ljava/lang/Object;
.source "FloatViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$4;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$4;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    # getter for: Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->access$100(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->hide()V

    .line 265
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/FloatViewManager$4;->this$0:Lcom/games37/riversdk/gm99/floatview/FloatViewManager;

    # getter for: Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->mFloatView:Lcom/games37/riversdk/gm99/floatview/view/FloatView;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/FloatViewManager;->access$100(Lcom/games37/riversdk/gm99/floatview/FloatViewManager;)Lcom/games37/riversdk/gm99/floatview/view/FloatView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/gm99/floatview/view/FloatView;->setShowing(Z)V

    .line 266
    return-void
.end method
