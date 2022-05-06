.class Lcom/ledo/fantasy/game/Cocos2dxVideoView$4$1;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4$1;->this$1:Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4$1;->this$1:Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;
    invoke-static {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->access$0(Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;)Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    move-result-object v0

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;
    invoke-static {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$11(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 480
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4$1;->this$1:Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;
    invoke-static {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->access$0(Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;)Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    move-result-object v0

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;
    invoke-static {v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$11(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4$1;->this$1:Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;
    invoke-static {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->access$0(Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;)Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    move-result-object v1

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTag:I
    invoke-static {v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$12(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I

    move-result v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 482
    :cond_24
    return-void
.end method
