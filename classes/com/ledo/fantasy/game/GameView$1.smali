.class Lcom/ledo/fantasy/game/GameView$1;
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

.field private final synthetic val$idPointerDown:I

.field private final synthetic val$pointerNumber:I

.field private final synthetic val$xPointerDown:F

.field private final synthetic val$yPointerDown:F


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameView;IFFI)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameView$1;->this$0:Lcom/ledo/fantasy/game/GameView;

    iput p2, p0, Lcom/ledo/fantasy/game/GameView$1;->val$idPointerDown:I

    iput p3, p0, Lcom/ledo/fantasy/game/GameView$1;->val$xPointerDown:F

    iput p4, p0, Lcom/ledo/fantasy/game/GameView$1;->val$yPointerDown:F

    iput p5, p0, Lcom/ledo/fantasy/game/GameView$1;->val$pointerNumber:I

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView$1;->this$0:Lcom/ledo/fantasy/game/GameView;

    iget-object v0, v0, Lcom/ledo/fantasy/game/GameView;->mlordrender:Lcom/ledo/fantasy/game/LordRender;

    iget v1, p0, Lcom/ledo/fantasy/game/GameView$1;->val$idPointerDown:I

    iget v2, p0, Lcom/ledo/fantasy/game/GameView$1;->val$xPointerDown:F

    iget v3, p0, Lcom/ledo/fantasy/game/GameView$1;->val$yPointerDown:F

    iget v4, p0, Lcom/ledo/fantasy/game/GameView$1;->val$pointerNumber:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ledo/fantasy/game/LordRender;->handleActionDown(IFFI)V

    .line 194
    return-void
.end method
