.class Lcom/ledo/fantasy/game/GameView$GameViewHandler;
.super Landroid/os/Handler;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/game/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GameViewHandler"
.end annotation


# instance fields
.field private final mView:Lcom/ledo/fantasy/game/GameView;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameView;)V
    .registers 2
    .param p1, "view"    # Lcom/ledo/fantasy/game/GameView;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    .line 34
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 37
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_b6

    .line 62
    :cond_6
    :goto_6
    return-void

    .line 39
    :pswitch_7
    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    # getter for: Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameView;->access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    # getter for: Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameView;->access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ledo/fantasy/game/IcefireEditText;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 40
    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    # getter for: Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameView;->access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v2

    # getter for: Lcom/ledo/fantasy/game/GameView;->sCocos2dxTextInputWraper:Lcom/ledo/fantasy/game/IcefireTextInputWraper;
    invoke-static {}, Lcom/ledo/fantasy/game/GameView;->access$1()Lcom/ledo/fantasy/game/IcefireTextInputWraper;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/IcefireEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 41
    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    # getter for: Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameView;->access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/IcefireEditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 43
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    # getter for: Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameView;->access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ledo/fantasy/game/IcefireEditText;->append(Ljava/lang/CharSequence;)V

    .line 44
    # getter for: Lcom/ledo/fantasy/game/GameView;->sCocos2dxTextInputWraper:Lcom/ledo/fantasy/game/IcefireTextInputWraper;
    invoke-static {}, Lcom/ledo/fantasy/game/GameView;->access$1()Lcom/ledo/fantasy/game/IcefireTextInputWraper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->setOriginText(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    # getter for: Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameView;->access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v2

    # getter for: Lcom/ledo/fantasy/game/GameView;->sCocos2dxTextInputWraper:Lcom/ledo/fantasy/game/IcefireTextInputWraper;
    invoke-static {}, Lcom/ledo/fantasy/game/GameView;->access$1()Lcom/ledo/fantasy/game/IcefireTextInputWraper;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/IcefireEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    # getter for: Lcom/ledo/fantasy/game/GameView;->mIceFireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;
    invoke-static {}, Lcom/ledo/fantasy/game/GameView;->access$2()Lcom/ledo/fantasy/game/GameView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ledo/fantasy/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 47
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    # getter for: Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameView;->access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 48
    const-string v2, "GLSurfaceView"

    const-string v3, "showSoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 53
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_75
    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    # getter for: Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameView;->access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 54
    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    # getter for: Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameView;->access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v2

    # getter for: Lcom/ledo/fantasy/game/GameView;->sCocos2dxTextInputWraper:Lcom/ledo/fantasy/game/IcefireTextInputWraper;
    invoke-static {}, Lcom/ledo/fantasy/game/GameView;->access$1()Lcom/ledo/fantasy/game/IcefireTextInputWraper;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/IcefireEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 55
    # getter for: Lcom/ledo/fantasy/game/GameView;->mIceFireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;
    invoke-static {}, Lcom/ledo/fantasy/game/GameView;->access$2()Lcom/ledo/fantasy/game/GameView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ledo/fantasy/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 56
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    # getter for: Lcom/ledo/fantasy/game/GameView;->mCocos2dxEditText:Lcom/ledo/fantasy/game/IcefireEditText;
    invoke-static {v2}, Lcom/ledo/fantasy/game/GameView;->access$0(Lcom/ledo/fantasy/game/GameView;)Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ledo/fantasy/game/IcefireEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 57
    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$GameViewHandler;->mView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v2}, Lcom/ledo/fantasy/game/GameView;->requestFocus()Z

    .line 58
    const-string v2, "GLSurfaceView"

    const-string v3, "HideSoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 37
    nop

    :pswitch_data_b6
    .packed-switch 0x2
        :pswitch_7
        :pswitch_75
    .end packed-switch
.end method
