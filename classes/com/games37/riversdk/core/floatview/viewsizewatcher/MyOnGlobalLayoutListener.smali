.class public abstract Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "MyOnGlobalLayoutListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/games37/riversdk/core/floatview/viewsizewatcher/Dispose;


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;->mView:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 19
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 28
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    :goto_f
    return-void

    .line 30
    :cond_10
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/viewsizewatcher/MyOnGlobalLayoutListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_f
.end method

.method public abstract onGlobalLayout()V
.end method
