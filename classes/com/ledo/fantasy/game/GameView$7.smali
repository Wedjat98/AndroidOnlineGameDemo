.class Lcom/ledo/fantasy/game/GameView$7;
.super Ljava/lang/Object;
.source "GameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameView;->insertText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/GameView;

.field private final synthetic val$pText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameView$7;->this$0:Lcom/ledo/fantasy/game/GameView;

    iput-object p2, p0, Lcom/ledo/fantasy/game/GameView$7;->val$pText:Ljava/lang/String;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ledo/fantasy/game/GameView$7;->this$0:Lcom/ledo/fantasy/game/GameView;

    iget-object v0, v0, Lcom/ledo/fantasy/game/GameView;->mlordrender:Lcom/ledo/fantasy/game/LordRender;

    iget-object v1, p0, Lcom/ledo/fantasy/game/GameView$7;->val$pText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ledo/fantasy/game/LordRender;->handleInsertText(Ljava/lang/String;)V

    .line 280
    return-void
.end method
