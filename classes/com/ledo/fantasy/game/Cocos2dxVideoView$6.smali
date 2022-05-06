.class Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 11
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 539
    iget-object v4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I
    invoke-static {v4}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$8(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_42

    move v1, v2

    .line 540
    .local v1, "isValidState":Z
    :goto_c
    iget-object v4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I
    invoke-static {v4}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$2(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_44

    iget-object v4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I
    invoke-static {v4}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$3(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_44

    move v0, v2

    .line 541
    .local v0, "hasValidSize":Z
    :goto_1d
    iget-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$6(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_41

    if-eqz v1, :cond_41

    if-eqz v0, :cond_41

    .line 542
    iget-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$7(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v2

    if-eqz v2, :cond_3c

    .line 543
    iget-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    iget-object v3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$7(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->seekTo(I)V

    .line 545
    :cond_3c
    iget-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->start()V

    .line 547
    :cond_41
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_42
    move v1, v3

    .line 539
    goto :goto_c

    .restart local v1    # "isValidState":Z
    :cond_44
    move v0, v3

    .line 540
    goto :goto_1d
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-static {v0, p1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$16(Lcom/ledo/fantasy/game/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)V

    .line 552
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # invokes: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->openVideo()V
    invoke-static {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$17(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V

    .line 553
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$16(Lcom/ledo/fantasy/game/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)V

    .line 560
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v1, 0x1

    # invokes: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->release(Z)V
    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$10(Lcom/ledo/fantasy/game/Cocos2dxVideoView;Z)V

    .line 561
    return-void
.end method
