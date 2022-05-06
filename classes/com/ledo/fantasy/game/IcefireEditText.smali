.class public Lcom/ledo/fantasy/game/IcefireEditText;
.super Landroid/widget/EditText;
.source "IcefireEditText.java"


# instance fields
.field private mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "pKeyCode"    # I
    .param p2, "pKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 76
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 77
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireEditText;->mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameView;->requestFocus()Z

    .line 80
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public setIcefireGLSurfaceView(Lcom/ledo/fantasy/game/GameView;)V
    .registers 2
    .param p1, "pIcefireGLSurfaceView"    # Lcom/ledo/fantasy/game/GameView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireEditText;->mIcefireGLSurfaceView:Lcom/ledo/fantasy/game/GameView;

    .line 65
    return-void
.end method
