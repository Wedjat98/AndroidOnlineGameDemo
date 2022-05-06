.class public abstract Lcom/games37/riversdk/core/view/IDialog;
.super Lcom/games37/riversdk/core/view/BaseDialog;
.source "IDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected presenter:Lcom/games37/riversdk/core/login/presenter/IloginPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/games37/riversdk/core/login/presenter/IloginPresenter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presenter"    # Lcom/games37/riversdk/core/login/presenter/IloginPresenter;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/games37/riversdk/core/view/IDialog;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/games37/riversdk/core/view/IDialog;->presenter:Lcom/games37/riversdk/core/login/presenter/IloginPresenter;

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/IDialog;->setCanceledOnTouchOutside(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/IDialog;->initView()V

    .line 26
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 34
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 37
    return-void
.end method

.method public dismiss()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/games37/riversdk/core/view/BaseDialog;->dismiss()V

    .line 45
    return-void
.end method

.method public abstract initView()V
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 31
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 40
    return-void
.end method
