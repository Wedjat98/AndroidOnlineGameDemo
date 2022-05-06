.class Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 390
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$4(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V

    .line 392
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$5(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 393
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$5(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$6(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 396
    :cond_1d
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$0(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V

    .line 397
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$1(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V

    .line 399
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$7(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v0

    .line 400
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_3c

    .line 401
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v1, v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->seekTo(I)V

    .line 403
    :cond_3c
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I
    invoke-static {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$2(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I
    invoke-static {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$3(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v1

    if-eqz v1, :cond_51

    .line 404
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->fixSize()V

    .line 407
    :cond_51
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I
    invoke-static {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$8(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5f

    .line 408
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->start()V

    .line 410
    :cond_5f
    return-void
.end method
