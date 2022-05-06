.class Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$0(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V

    .line 380
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$1(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V

    .line 381
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I
    invoke-static {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$2(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I
    invoke-static {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$3(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v0

    if-eqz v0, :cond_37

    .line 382
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I
    invoke-static {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$2(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$3(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 384
    :cond_37
    return-void
.end method
