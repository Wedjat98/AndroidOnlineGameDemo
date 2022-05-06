.class Lcom/ledo/fantasy/game/GameView$8;
.super Ljava/lang/Object;
.source "GameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameView;->deleteBackward()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/GameView;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameView$8;->this$0:Lcom/ledo/fantasy/game/GameView;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView$8;->this$0:Lcom/ledo/fantasy/game/GameView;

    iget-object v0, v0, Lcom/ledo/fantasy/game/GameView;->mlordrender:Lcom/ledo/fantasy/game/LordRender;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/LordRender;->handleDeleteBackward()V

    .line 289
    return-void
.end method
