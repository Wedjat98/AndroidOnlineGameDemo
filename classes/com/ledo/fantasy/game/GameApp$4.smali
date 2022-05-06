.class Lcom/ledo/fantasy/game/GameApp$4;
.super Ljava/lang/Object;
.source "GameApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameApp;->CheckAnimDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/GameApp;

.field private final synthetic val$anim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameApp;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameApp$4;->this$0:Lcom/ledo/fantasy/game/GameApp;

    iput-object p2, p0, Lcom/ledo/fantasy/game/GameApp$4;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 628
    iget-object v1, p0, Lcom/ledo/fantasy/game/GameApp$4;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/ledo/fantasy/game/GameApp$4;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v3, p0, Lcom/ledo/fantasy/game/GameApp$4;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v1, v2, :cond_24

    .line 630
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 631
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 632
    sget-object v1, Lcom/ledo/fantasy/game/GameApp;->mHandler:Lcom/ledo/fantasy/game/IcefireHandler;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/IcefireHandler;->sendMessage(Landroid/os/Message;)Z

    .line 638
    .end local v0    # "msg":Landroid/os/Message;
    :goto_23
    return-void

    .line 636
    :cond_24
    iget-object v1, p0, Lcom/ledo/fantasy/game/GameApp$4;->this$0:Lcom/ledo/fantasy/game/GameApp;

    # invokes: Lcom/ledo/fantasy/game/GameApp;->CheckAnimDone()V
    invoke-static {v1}, Lcom/ledo/fantasy/game/GameApp;->access$0(Lcom/ledo/fantasy/game/GameApp;)V

    goto :goto_23
.end method
