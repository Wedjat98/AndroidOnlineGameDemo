.class Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;)Lcom/ledo/fantasy/game/Cocos2dxVideoView;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    return-object v0
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 13
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 441
    iget-object v4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$13(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-static {v4, v7}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$4(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V

    .line 443
    iget-object v4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-static {v4, v7}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$9(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V

    .line 446
    iget-object v4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v4}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$14(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 447
    iget-object v4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v4}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$14(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v4

    iget-object v5, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    # getter for: Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->access$6(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-interface {v4, v5, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 487
    :cond_48
    :goto_48
    return v8

    .line 457
    :cond_49
    iget-object v4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    invoke-virtual {v4}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 458
    iget-object v4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    iget-object v4, v4, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCocos2dxActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 461
    .local v2, "r":Landroid/content/res/Resources;
    const/16 v4, 0xc8

    if-ne p2, v4, :cond_a7

    .line 462
    const-string v4, "VideoView_error_text_invalid_progressive_playback"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 467
    .local v1, "messageId":I
    :goto_67
    const-string v4, "VideoView_error_title"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 468
    .local v3, "titleId":I
    const-string v4, "VideoView_error_button"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 470
    .local v0, "buttonStringId":I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;->this$0:Lcom/ledo/fantasy/game/Cocos2dxVideoView;

    iget-object v5, v5, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCocos2dxActivity:Landroid/app/Activity;

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 471
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 472
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 473
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 474
    new-instance v6, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4$1;

    invoke-direct {v6, p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4$1;-><init>(Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;)V

    .line 473
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 484
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 485
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_48

    .line 464
    .end local v0    # "buttonStringId":I
    .end local v1    # "messageId":I
    .end local v3    # "titleId":I
    :cond_a7
    const-string v4, "VideoView_error_text_unknown"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "messageId":I
    goto :goto_67
.end method
