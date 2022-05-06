.class public Lcom/games37/riversdk/core/view/CustomView;
.super Landroid/widget/RelativeLayout;
.source "CustomView.java"


# static fields
.field static final ANDROIDXML:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field static final MATERIALDESIGNXML:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field animation:Z

.field beforeBackground:I

.field final disabledBackgroundColor:I

.field public isLastTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const-string v0, "#E2E2E2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/games37/riversdk/core/view/CustomView;->disabledBackgroundColor:I

    .line 21
    iput-boolean v1, p0, Lcom/games37/riversdk/core/view/CustomView;->isLastTouch:Z

    .line 38
    iput-boolean v1, p0, Lcom/games37/riversdk/core/view/CustomView;->animation:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected onAnimationEnd()V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationEnd()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/games37/riversdk/core/view/CustomView;->animation:Z

    .line 50
    return-void
.end method

.method protected onAnimationStart()V
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationStart()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/games37/riversdk/core/view/CustomView;->animation:Z

    .line 44
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-boolean v0, p0, Lcom/games37/riversdk/core/view/CustomView;->animation:Z

    if-eqz v0, :cond_a

    .line 56
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/CustomView;->invalidate()V

    .line 58
    :cond_a
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 30
    if-eqz p1, :cond_e

    .line 31
    iget v0, p0, Lcom/games37/riversdk/core/view/CustomView;->beforeBackground:I

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/CustomView;->setBackgroundColor(I)V

    .line 35
    :goto_a
    invoke-virtual {p0}, Lcom/games37/riversdk/core/view/CustomView;->invalidate()V

    .line 36
    return-void

    .line 33
    :cond_e
    iget v0, p0, Lcom/games37/riversdk/core/view/CustomView;->disabledBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/games37/riversdk/core/view/CustomView;->setBackgroundColor(I)V

    goto :goto_a
.end method
