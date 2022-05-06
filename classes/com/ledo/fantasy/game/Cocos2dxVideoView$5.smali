.class Lcom/ledo/fantasy/game/Cocos2dxVideoView$5;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$5;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$5;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-static {v0, p2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$15(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V

    .line 495
    return-void
.end method
