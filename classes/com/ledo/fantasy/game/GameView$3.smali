.class Lcom/ledo/fantasy/game/GameView$3;
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

.field private final synthetic val$ids:[I

.field private final synthetic val$pointerNumber:I

.field private final synthetic val$xs:[F

.field private final synthetic val$ys:[F


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameView;[I[F[FI)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameView$3;->this$0:Lcom/ledo/fantasy/game/GameView;

    iput-object p2, p0, Lcom/ledo/fantasy/game/GameView$3;->val$ids:[I

    iput-object p3, p0, Lcom/ledo/fantasy/game/GameView$3;->val$xs:[F

    iput-object p4, p0, Lcom/ledo/fantasy/game/GameView$3;->val$ys:[F

    iput p5, p0, Lcom/ledo/fantasy/game/GameView$3;->val$pointerNumber:I

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView$3;->this$0:Lcom/ledo/fantasy/game/GameView;

    iget-object v0, v0, Lcom/ledo/fantasy/game/GameView;->mlordrender:Lcom/ledo/fantasy/game/LordRender;

    iget-object v1, p0, Lcom/ledo/fantasy/game/GameView$3;->val$ids:[I

    iget-object v2, p0, Lcom/ledo/fantasy/game/GameView$3;->val$xs:[F

    iget-object v3, p0, Lcom/ledo/fantasy/game/GameView$3;->val$ys:[F

    iget v4, p0, Lcom/ledo/fantasy/game/GameView$3;->val$pointerNumber:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ledo/fantasy/game/LordRender;->handleActionMove([I[F[FI)V

    .line 219
    return-void
.end method
