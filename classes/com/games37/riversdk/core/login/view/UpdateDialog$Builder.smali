.class public final Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;
.super Ljava/lang/Object;
.source "UpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/login/view/UpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    invoke-direct {v0}, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/games37/riversdk/core/login/view/UpdateDialog;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    new-instance v0, Lcom/games37/riversdk/core/login/view/UpdateDialog;

    iget-object v1, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    invoke-direct {v0, p1, v1}, Lcom/games37/riversdk/core/login/view/UpdateDialog;-><init>(Landroid/content/Context;Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;)V

    return-object v0
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;
    .registers 3
    .param p1, "cancelText"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iput-object p1, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->cancelText:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public setComfirmText(Ljava/lang/String;)Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;
    .registers 3
    .param p1, "comfirmText"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iput-object p1, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->comfirmText:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iput-object p1, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->content:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setOnBtnClickListener(Lcom/games37/riversdk/core/callback/OnBtnClickListener;)Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;
    .registers 3
    .param p1, "onBtnClickListener"    # Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/games37/riversdk/core/login/view/UpdateDialog$Builder;->mParams:Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;

    iput-object p1, v0, Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .line 148
    return-object p0
.end method
