.class public Lcom/ledo/fantasy/game/IcefireTextInputWraper;
.super Ljava/lang/Object;
.source "IcefireTextInputWraper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

.field private mOriginText:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ledo/fantasy/game/GameView;)V
    .registers 2
    .param p1, "pIcefireGLSurfaceView"    # Lcom/ledo/fantasy/game/GameView;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    .line 57
    return-void
.end method

.method private isFullScreenEdit()Z
    .registers 5

    .prologue
    .line 64
    iget-object v2, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v2}, Lcom/ledo/fantasy/game/GameView;->getIcefireEditText()Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v1

    .line 65
    .local v1, "textField":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 66
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->isFullScreenEdit()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 106
    :goto_6
    return-void

    .line 86
    :cond_7
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v2, v3

    .line 87
    .local v1, "nModified":I
    if-lez v1, :cond_3a

    .line 88
    iget-object v2, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "insertText":Ljava/lang/String;
    iget-object v2, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v2, v0}, Lcom/ledo/fantasy/game/GameView;->insertText(Ljava/lang/String;)V

    .line 105
    .end local v0    # "insertText":Ljava/lang/String;
    :goto_2c
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mText:Ljava/lang/String;

    goto :goto_6

    .line 97
    :cond_33
    iget-object v2, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v2}, Lcom/ledo/fantasy/game/GameView;->deleteBackward()V

    .line 96
    add-int/lit8 v1, v1, 0x1

    :cond_3a
    if-ltz v1, :cond_33

    goto :goto_2c
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "pCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 115
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mText:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "pTextView"    # Landroid/widget/TextView;
    .param p2, "pActionID"    # I
    .param p3, "pKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0xa

    .line 125
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v3}, Lcom/ledo/fantasy/game/GameView;->getIcefireEditText()Lcom/ledo/fantasy/game/IcefireEditText;

    move-result-object v3

    if-ne v3, p1, :cond_4d

    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->isFullScreenEdit()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 127
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mOriginText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_16
    if-gtz v0, :cond_57

    .line 135
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "text":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2a

    .line 139
    const-string v2, "\n"

    .line 142
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v5, v3, :cond_47

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    :cond_47
    move-object v1, v2

    .line 147
    .local v1, "insertText":Ljava/lang/String;
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v3, v1}, Lcom/ledo/fantasy/game/GameView;->insertText(Ljava/lang/String;)V

    .line 155
    .end local v0    # "i":I
    .end local v1    # "insertText":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    :cond_4d
    const/4 v3, 0x6

    if-ne p2, v3, :cond_55

    .line 156
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v3}, Lcom/ledo/fantasy/game/GameView;->requestFocus()Z

    .line 158
    :cond_55
    const/4 v3, 0x0

    return v3

    .line 128
    .restart local v0    # "i":I
    :cond_57
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v3}, Lcom/ledo/fantasy/game/GameView;->deleteBackward()V

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_16
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "pCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 121
    return-void
.end method

.method public setOriginText(Ljava/lang/String;)V
    .registers 2
    .param p1, "pOriginText"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireTextInputWraper;->mOriginText:Ljava/lang/String;

    .line 71
    return-void
.end method
