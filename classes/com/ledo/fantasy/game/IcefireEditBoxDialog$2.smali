.class Lcom/ledo/fantasy/game/IcefireEditBoxDialog$2;
.super Ljava/lang/Object;
.source "IcefireEditBoxDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$2;->this$0:Lcom/ledo/fantasy/game/IcefireEditBoxDialog;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 280
    if-nez p2, :cond_c

    if-nez p2, :cond_29

    if-eqz p3, :cond_29

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_29

    .line 281
    :cond_c
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$2;->this$0:Lcom/ledo/fantasy/game/IcefireEditBoxDialog;

    # getter for: Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->mInputEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->access$0(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ledo/fantasy/game/IcefireHelper;->setEditTextDialogResult(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$2;->this$0:Lcom/ledo/fantasy/game/IcefireEditBoxDialog;

    # invokes: Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->closeKeyboard()V
    invoke-static {v0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->access$2(Lcom/ledo/fantasy/game/IcefireEditBoxDialog;)V

    .line 283
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireEditBoxDialog$2;->this$0:Lcom/ledo/fantasy/game/IcefireEditBoxDialog;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/IcefireEditBoxDialog;->dismiss()V

    .line 284
    const/4 v0, 0x1

    .line 286
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method
