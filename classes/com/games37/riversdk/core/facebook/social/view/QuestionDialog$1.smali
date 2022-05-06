.class Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog$1;
.super Ljava/lang/Object;
.source "QuestionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;->initViewElement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog$1;->this$0:Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/facebook/social/view/QuestionDialog;->dismiss()V

    .line 48
    return-void
.end method
