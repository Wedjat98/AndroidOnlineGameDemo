.class Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$2;
.super Ljava/lang/Object;
.source "GM99RegisterDialog.java"

# interfaces
.implements Lcom/games37/riversdk/core/view/SnackBar$OnHideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->showSnackBar(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog$2;->this$0:Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;

    invoke-virtual {v0}, Lcom/games37/riversdk/gm99/login/view/GM99RegisterDialog;->show()V

    .line 267
    return-void
.end method
