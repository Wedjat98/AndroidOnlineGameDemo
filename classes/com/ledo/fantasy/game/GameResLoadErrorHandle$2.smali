.class Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2;
.super Ljava/lang/Object;
.source "GameResLoadErrorHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameResLoadErrorHandle;->resLoadErrorHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 35
    const-string v3, ""

    .line 36
    .local v3, "title":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    sget v5, Lcom/ledo/fantasy/game/R$string;->strinfo_res_error_verify:I

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "Ok":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v4

    sget v5, Lcom/ledo/fantasy/game/R$string;->strinfo_res_error:I

    invoke-virtual {v4, v5}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "errMsg":Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2$1;

    invoke-direct {v5, p0}, Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2$1;-><init>(Lcom/ledo/fantasy/game/GameResLoadErrorHandle$2;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 43
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 44
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 45
    return-void
.end method
