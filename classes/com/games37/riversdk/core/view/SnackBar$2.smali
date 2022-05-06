.class Lcom/games37/riversdk/core/view/SnackBar$2;
.super Landroid/os/Handler;
.source "SnackBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/view/SnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/view/SnackBar;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/view/SnackBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/view/SnackBar;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/games37/riversdk/core/view/SnackBar$2;->this$0:Lcom/games37/riversdk/core/view/SnackBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar$2;->this$0:Lcom/games37/riversdk/core/view/SnackBar;

    # getter for: Lcom/games37/riversdk/core/view/SnackBar;->mOnHideListener:Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;
    invoke-static {v0}, Lcom/games37/riversdk/core/view/SnackBar;->access$100(Lcom/games37/riversdk/core/view/SnackBar;)Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 135
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar$2;->this$0:Lcom/games37/riversdk/core/view/SnackBar;

    # getter for: Lcom/games37/riversdk/core/view/SnackBar;->mOnHideListener:Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;
    invoke-static {v0}, Lcom/games37/riversdk/core/view/SnackBar;->access$100(Lcom/games37/riversdk/core/view/SnackBar;)Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;->onHide()V

    .line 137
    :cond_11
    iget-object v0, p0, Lcom/games37/riversdk/core/view/SnackBar$2;->this$0:Lcom/games37/riversdk/core/view/SnackBar;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/view/SnackBar;->dismiss()V

    .line 138
    return-void
.end method
