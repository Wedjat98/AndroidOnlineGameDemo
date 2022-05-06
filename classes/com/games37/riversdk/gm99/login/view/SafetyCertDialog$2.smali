.class Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog$2;
.super Ljava/lang/Object;
.source "SafetyCertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->initViewElement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog$2;->this$0:Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog$2;->this$0:Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->dismiss()V

    .line 71
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog$2;->this$0:Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;

    # getter for: Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->access$000(Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;)Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 72
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog$2;->this$0:Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;

    # getter for: Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;->access$000(Lcom/games37/riversdk/gm99/login/view/SafetyCertDialog;)Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onCancel()V

    .line 74
    :cond_16
    return-void
.end method
