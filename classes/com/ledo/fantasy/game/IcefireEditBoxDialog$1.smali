.class Lcom/ledo/fantasy/game/IcefireEditBoxDialog$1;
.super Ljava/lang/Object;
.source "IcefireEditBoxDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/IcefireEditBoxDialog;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$1;->this$0:Lcom/ledo/fantasy/game/IcefireEditBoxDialog;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$1;->this$0:Lcom/ledo/fantasy/game/IcefireEditBoxDialog;

    # getter for: Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->access$0(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 271
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$1;->this$0:Lcom/ledo/fantasy/game/IcefireEditBoxDialog;

    # getter for: Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->access$0(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$1;->this$0:Lcom/ledo/fantasy/game/IcefireEditBoxDialog;

    # getter for: Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->access$0(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 272
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$1;->this$0:Lcom/ledo/fantasy/game/IcefireEditBoxDialog;

    # invokes: Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->openKeyboard()V
    invoke-static {v0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->access$1(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)V

    .line 273
    return-void
.end method
