.class Lcom/games37/riversdk/gm99/floatview/view/TipsDialog$2;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog$2;->this$0:Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog$2;->this$0:Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->dismiss()V

    .line 61
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog$2;->this$0:Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->access$000(Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;)Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 62
    iget-object v0, p0, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog$2;->this$0:Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;

    # getter for: Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->mListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;
    invoke-static {v0}, Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;->access$000(Lcom/games37/riversdk/gm99/floatview/view/TipsDialog;)Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/games37/riversdk/core/callback/OnBtnClickListener;->onCancel()V

    .line 64
    :cond_16
    return-void
.end method
