.class public final Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;
.super Ljava/lang/Object;
.source "ApplyPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    invoke-direct {v0}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;-><init>()V

    iput-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    new-instance v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;

    iget-object v1, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    invoke-direct {v0, p1, v1}, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog;-><init>(Landroid/content/Context;Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;)V

    return-object v0
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;
    .registers 3
    .param p1, "cancelText"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iput-object p1, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->cancelText:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setComfirmText(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;
    .registers 3
    .param p1, "comfirmText"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iput-object p1, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->comfirmText:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iput-object p1, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->content:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setOnBtnClickListener(Lcom/games37/riversdk/core/callback/OnBtnClickListener;)Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;
    .registers 3
    .param p1, "onBtnClickListener"    # Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$Builder;->mParams:Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;

    iput-object p1, v0, Lcom/games37/riversdk/core/floatview/view/ApplyPermissionDialog$DialogParams;->onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;

    .line 140
    return-object p0
.end method
