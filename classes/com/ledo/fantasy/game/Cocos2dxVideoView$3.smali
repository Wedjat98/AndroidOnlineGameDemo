.class Lcom/ledo/fantasy/game/Cocos2dxVideoView$3;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/game/Cocos2dxVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$3;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 416
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$3;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$4(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V

    .line 417
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$3;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$9(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V

    .line 419
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$3;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v1, 0x1

    # invokes: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->release(Z)V
    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$10(Lcom/ledo/fantasy/game/Cocos2dxVideoView;Z)V

    .line 420
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$3;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;
    invoke-static {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$11(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 421
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$3;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;
    invoke-static {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$11(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$3;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTag:I
    invoke-static {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$12(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 423
    :cond_29
    return-void
.end method
