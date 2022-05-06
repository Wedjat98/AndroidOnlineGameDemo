.class Lcom/games37/riversdk/core/view/MaterialDialog$Builder$1;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/view/MaterialDialog$Builder;)V
    .registers 2
    .param p1, "this$1"    # Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder$1;->this$1:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 461
    iget-object v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder$1;->this$1:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;
    invoke-static {v1}, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->access$2300(Lcom/games37/riversdk/core/view/MaterialDialog$Builder;)Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 464
    iget-object v1, p0, Lcom/games37/riversdk/core/view/MaterialDialog$Builder$1;->this$1:Lcom/games37/riversdk/core/view/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/games37/riversdk/core/view/MaterialDialog$Builder;->this$0:Lcom/games37/riversdk/core/view/MaterialDialog;

    # getter for: Lcom/games37/riversdk/core/view/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/games37/riversdk/core/view/MaterialDialog;->access$200(Lcom/games37/riversdk/core/view/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 466
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 468
    return-void
.end method
