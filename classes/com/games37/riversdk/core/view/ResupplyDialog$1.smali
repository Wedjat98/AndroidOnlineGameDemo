.class Lcom/games37/riversdk/core/view/ResupplyDialog$1;
.super Ljava/lang/Object;
.source "ResupplyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/view/ResupplyDialog;->initView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/view/ResupplyDialog;

.field final synthetic val$listener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/view/ResupplyDialog;Lcom/games37/riversdk/core/callback/OnBtnClickListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/view/ResupplyDialog;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/games37/riversdk/core/view/ResupplyDialog$1;->this$0:Lcom/games37/riversdk/core/view/ResupplyDialog;

    iput-object p2, p0, Lcom/games37/riversdk/core/view/ResupplyDialog$1;->val$listener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog$1;->this$0:Lcom/games37/riversdk/core/view/ResupplyDialog;

    # getter for: Lcom/games37/riversdk/core/view/ResupplyDialog;->mDialog:Lcom/games37/riversdk/core/view/MaterialDialog;
    invoke-static {v0}, Lcom/games37/riversdk/core/view/ResupplyDialog;->access$000(Lcom/games37/riversdk/core/view/ResupplyDialog;)Lcom/games37/riversdk/core/view/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/games37/riversdk/core/view/MaterialDialog;->dismiss()V

    .line 88
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog$1;->val$listener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    if-eqz v0, :cond_12

    .line 89
    iget-object v0, p0, Lcom/games37/riversdk/core/view/ResupplyDialog$1;->val$listener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onCancel()V

    .line 91
    :cond_12
    return-void
.end method
