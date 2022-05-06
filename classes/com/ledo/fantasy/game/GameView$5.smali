.class Lcom/ledo/fantasy/game/GameView$5;
.super Ljava/lang/Object;
.source "GameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/GameView;

.field private final synthetic val$idUp:I

.field private final synthetic val$pointerNumber:I

.field private final synthetic val$xUp:F

.field private final synthetic val$yUp:F


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameView;IFFI)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameView$5;->this$0:Lcom/ledo/fantasy/game/GameView;

    iput p2, p0, Lcom/ledo/fantasy/game/GameView$5;->val$idUp:I

    iput p3, p0, Lcom/ledo/fantasy/game/GameView$5;->val$xUp:F

    iput p4, p0, Lcom/ledo/fantasy/game/GameView$5;->val$yUp:F

    iput p5, p0, Lcom/ledo/fantasy/game/GameView$5;->val$pointerNumber:I

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView$5;->this$0:Lcom/ledo/fantasy/game/GameView;

    iget-object v0, v0, Lcom/ledo/fantasy/game/GameView;->mlordrender:Lcom/ledo/fantasy/game/LordRender;

    iget v1, p0, Lcom/ledo/fantasy/game/GameView$5;->val$idUp:I

    iget v2, p0, Lcom/ledo/fantasy/game/GameView$5;->val$xUp:F

    iget v3, p0, Lcom/ledo/fantasy/game/GameView$5;->val$yUp:F

    iget v4, p0, Lcom/ledo/fantasy/game/GameView$5;->val$pointerNumber:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ledo/fantasy/game/LordRender;->handleActionUp(IFFI)V

    .line 247
    return-void
.end method
