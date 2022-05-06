.class public Lcom/ledo/fantasy/game/Cocos2dxVideoView;
.super Landroid/view/SurfaceView;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;
    }
.end annotation


# static fields
.field private static final EVENT_COMPLETED:I = 0x3

.field private static final EVENT_PAUSED:I = 0x1

.field private static final EVENT_PLAYING:I = 0x0

.field private static final EVENT_STOPPED:I = 0x2

.field private static final EVENT_TOUCH:I = 0x4

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private canSeekPlay:Z

.field private fileName:Ljava/lang/String;

.field private isAssetRouse:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field protected mCocos2dxActivity:Landroid/app/Activity;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field protected mFullScreenEnabled:Z

.field protected mFullScreenHeight:I

.field protected mFullScreenWidth:I

.field private mKeepRatio:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNeedResume:Z

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field protected mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field protected mViewHeight:I

.field protected mViewLeft:I

.field private mViewTag:I

.field protected mViewTop:I

.field protected mViewWidth:I

.field protected mVisibleHeight:I

.field protected mVisibleLeft:I

.field protected mVisibleTop:I

.field protected mVisibleWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tag"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    .line 61
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    .line 64
    iput-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 65
    iput-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    .line 67
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    .line 77
    iput-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCocos2dxActivity:Landroid/app/Activity;

    .line 79
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewLeft:I

    .line 80
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTop:I

    .line 81
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewWidth:I

    .line 82
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewHeight:I

    .line 84
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleLeft:I

    .line 85
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleTop:I

    .line 86
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleWidth:I

    .line 87
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleHeight:I

    .line 89
    iput-boolean v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mFullScreenEnabled:Z

    .line 90
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mFullScreenWidth:I

    .line 91
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mFullScreenHeight:I

    .line 93
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTag:I

    .line 94
    iput-boolean v3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCanPause:Z

    .line 95
    iput-boolean v3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->canSeekPlay:Z

    .line 170
    iput-boolean v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mNeedResume:Z

    .line 217
    iput-boolean v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isAssetRouse:Z

    .line 218
    iput-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    .line 325
    iput-boolean v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mKeepRatio:Z

    .line 377
    new-instance v0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$1;-><init>(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 388
    new-instance v0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$2;-><init>(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 414
    new-instance v0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$3;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$3;-><init>(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 439
    new-instance v0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$4;-><init>(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 492
    new-instance v0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$5;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$5;-><init>(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 533
    new-instance v0, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$6;-><init>(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 100
    iput p2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTag:I

    .line 101
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCocos2dxActivity:Landroid/app/Activity;

    .line 102
    invoke-direct {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->initVideoView()V

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    return-void
.end method

.method static synthetic access$1(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V
    .registers 2

    .prologue
    .line 67
    iput p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    return-void
.end method

.method static synthetic access$10(Lcom/ledo/fantasy/game/Cocos2dxVideoView;Z)V
    .registers 2

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTag:I

    return v0
.end method

.method static synthetic access$13(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$15(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V
    .registers 2

    .prologue
    .line 71
    iput p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static synthetic access$16(Lcom/ledo/fantasy/game/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static synthetic access$17(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)V
    .registers 1

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$3(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$4(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V
    .registers 2

    .prologue
    .line 60
    iput p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    return-void
.end method

.method static synthetic access$5(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$8(Lcom/ledo/fantasy/game/Cocos2dxVideoView;)I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$9(Lcom/ledo/fantasy/game/Cocos2dxVideoView;I)V
    .registers 2

    .prologue
    .line 61
    iput p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    return-void
.end method

.method private initVideoView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    iput v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    .line 189
    iput v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    .line 190
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 191
    invoke-virtual {p0, v3}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setFocusable(Z)V

    .line 192
    invoke-virtual {p0, v3}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setFocusableInTouchMode(Z)V

    .line 193
    iput v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    .line 194
    iput v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    .line 195
    return-void
.end method

.method private openVideo()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 261
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_8

    .line 323
    :cond_7
    :goto_7
    return-void

    .line 265
    :cond_8
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isAssetRouse:Z

    if-eqz v0, :cond_b8

    .line 266
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 275
    :cond_10
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.music.musicservicecommand"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v8, "i":Landroid/content/Intent;
    const-string v0, "command"

    const-string v1, "pause"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCocos2dxActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    invoke-direct {p0, v10}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->release(Z)V

    .line 285
    :try_start_26
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 286
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 287
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 288
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 289
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 290
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 292
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 293
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 294
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mDuration:I

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentBufferPercentage:I

    .line 299
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isAssetRouse:Z

    if-eqz v0, :cond_be

    .line 300
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCocos2dxActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 301
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 306
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_8a
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 309
    const/4 v0, 0x1

    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_92} :catch_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_92} :catch_c8

    goto/16 :goto_7

    .line 310
    :catch_94
    move-exception v7

    .line 311
    .local v7, "ex":Ljava/io/IOException;
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to open content: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    iput v9, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    .line 313
    iput v9, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    .line 314
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v11, v10}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_7

    .line 269
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v8    # "i":Landroid/content/Intent;
    :cond_b8
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_10

    goto/16 :goto_7

    .line 303
    .restart local v8    # "i":Landroid/content/Intent;
    :cond_be
    :try_start_be
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCocos2dxActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c7} :catch_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_c7} :catch_c8

    goto :goto_8a

    .line 316
    :catch_c8
    move-exception v7

    .line 317
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to open content: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    iput v9, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    .line 319
    iput v9, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    .line 320
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v11, v10}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_7
.end method

.method private release(Z)V
    .registers 4
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 569
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 570
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 572
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    .line 573
    if-eqz p1, :cond_18

    .line 574
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    .line 577
    :cond_18
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 241
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    .line 242
    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSeekWhenPrepared:I

    .line 243
    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    .line 244
    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    .line 245
    invoke-direct {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->openVideo()V

    .line 246
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->requestLayout()V

    .line 247
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->invalidate()V

    .line 248
    return-void
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->canSeekPlay:Z

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->canSeekPlay:Z

    return v0
.end method

.method public fixSize()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mFullScreenEnabled:Z

    if-eqz v0, :cond_d

    .line 334
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mFullScreenWidth:I

    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mFullScreenHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->fixSize(IIII)V

    .line 338
    :goto_c
    return-void

    .line 336
    :cond_d
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewLeft:I

    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTop:I

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewWidth:I

    iget v3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->fixSize(IIII)V

    goto :goto_c
.end method

.method public fixSize(IIII)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v4, -0x2

    .line 341
    if-eqz p3, :cond_65

    if-eqz p4, :cond_65

    .line 342
    iget-boolean v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mKeepRatio:Z

    if-eqz v1, :cond_5c

    .line 343
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    mul-int/2addr v1, p4

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    mul-int/2addr v2, p3

    if-le v1, v2, :cond_49

    .line 344
    iput p3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleWidth:I

    .line 345
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    mul-int/2addr v1, p3

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleHeight:I

    .line 350
    :cond_1b
    :goto_1b
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleWidth:I

    sub-int v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleLeft:I

    .line 351
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleHeight:I

    sub-int v1, p4, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleTop:I

    .line 366
    :goto_2d
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleWidth:I

    iget v3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 368
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 370
    .local v0, "lParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleLeft:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 371
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 372
    invoke-virtual {p0, v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    return-void

    .line 346
    .end local v0    # "lParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_49
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    mul-int/2addr v1, p4

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    mul-int/2addr v2, p3

    if-ge v1, v2, :cond_1b

    .line 347
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    mul-int/2addr v1, p4

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleWidth:I

    .line 348
    iput p4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_1b

    .line 353
    :cond_5c
    iput p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleLeft:I

    .line 354
    iput p2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleTop:I

    .line 355
    iput p3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleWidth:I

    .line 356
    iput p4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_2d

    .line 360
    :cond_65
    iput p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleLeft:I

    .line 361
    iput p2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleTop:I

    .line 362
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleWidth:I

    .line 363
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_2d
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 673
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentBufferPercentage:I

    .line 675
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 653
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 655
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 641
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mDuration:I

    if-lez v0, :cond_d

    .line 642
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mDuration:I

    .line 648
    :goto_c
    return v0

    .line 644
    :cond_d
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mDuration:I

    .line 645
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mDuration:I

    goto :goto_c

    .line 647
    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mDuration:I

    .line 648
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mDuration:I

    goto :goto_c
.end method

.method public isInPlaybackState()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 679
    iget-object v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_13

    .line 680
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 681
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    if-eqz v1, :cond_13

    .line 682
    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_13

    .line 679
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 107
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    if-nez v0, :cond_30

    .line 108
    :cond_8
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewWidth:I

    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setMeasuredDimension(II)V

    .line 109
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_2f
    return-void

    .line 112
    :cond_30
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleWidth:I

    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setMeasuredDimension(II)V

    .line 113
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 200
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 201
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->canPause()Z

    move-result v0

    if-nez v0, :cond_f

    .line 214
    :cond_e
    :goto_e
    return v2

    .line 205
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_e

    .line 207
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 208
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->pause()V

    goto :goto_e

    .line 209
    :cond_21
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    if-ne v0, v3, :cond_e

    .line 210
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->resume()V

    goto :goto_e
.end method

.method public pause()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 591
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 592
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 593
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 594
    iput v3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    .line 595
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_22

    .line 596
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 600
    :cond_22
    iput v3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    .line 601
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .registers 6
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 142
    move v0, p1

    .line 143
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 144
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 146
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_16

    .line 167
    :goto_c
    return v0

    .line 151
    :sswitch_d
    move v0, p1

    .line 152
    goto :goto_c

    .line 159
    :sswitch_f
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 160
    goto :goto_c

    .line 164
    :sswitch_14
    move v0, v2

    goto :goto_c

    .line 146
    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_14
    .end sparse-switch
.end method

.method public restart()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 631
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 632
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 633
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 634
    iput v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    .line 635
    iput v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    .line 637
    :cond_16
    return-void
.end method

.method public resume()V
    .registers 4

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 620
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 621
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 622
    const/4 v0, 0x3

    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    .line 623
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_1f

    .line 624
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 628
    :cond_1f
    return-void
.end method

.method public seekTo(I)V
    .registers 3
    .param p1, "msec"    # I

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 660
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSeekWhenPrepared:I

    .line 665
    :goto_e
    return-void

    .line 663
    :cond_f
    iput p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSeekWhenPrepared:I

    goto :goto_e
.end method

.method public setCanPause(Z)V
    .registers 2
    .param p1, "mCanPause"    # Z

    .prologue
    .line 705
    iput-boolean p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCanPause:Z

    .line 706
    return-void
.end method

.method public setCanSeekPlay(Z)V
    .registers 2
    .param p1, "canSeekPlay"    # Z

    .prologue
    .line 710
    iput-boolean p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->canSeekPlay:Z

    .line 711
    return-void
.end method

.method public setFullScreenEnabled(ZII)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mFullScreenEnabled:Z

    if-eq v0, p1, :cond_11

    .line 131
    iput-boolean p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mFullScreenEnabled:Z

    .line 132
    if-eqz p2, :cond_e

    if-eqz p3, :cond_e

    .line 133
    iput p2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mFullScreenWidth:I

    .line 134
    iput p3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mFullScreenHeight:I

    .line 137
    :cond_e
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->fixSize()V

    .line 139
    :cond_11
    return-void
.end method

.method public setKeepRatio(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mKeepRatio:Z

    .line 329
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->fixSize()V

    .line 330
    return-void
.end method

.method public setOnCompletionListener(Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;)V
    .registers 2
    .param p1, "l"    # Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    .line 518
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 531
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 507
    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 221
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isAssetRouse:Z

    .line 223
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 230
    :goto_13
    return-void

    .line 226
    :cond_14
    iput-object p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isAssetRouse:Z

    .line 228
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_13
.end method

.method public setVideoRect(IIII)V
    .registers 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewLeft:I

    .line 120
    iput p2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTop:I

    .line 121
    iput p3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewWidth:I

    .line 122
    iput p4, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewHeight:I

    .line 124
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoWidth:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    if-eqz v0, :cond_1b

    .line 125
    iget v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewLeft:I

    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTop:I

    iget v2, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewWidth:I

    iget v3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mVideoHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->fixSize(IIII)V

    .line 127
    :cond_1b
    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isAssetRouse:Z

    .line 234
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 235
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 174
    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    .line 175
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mNeedResume:Z

    .line 176
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mNeedResume:Z

    if-eqz v0, :cond_13

    .line 177
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mSeekWhenPrepared:I

    .line 184
    :cond_13
    :goto_13
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 185
    return-void

    .line 180
    :cond_17
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mNeedResume:Z

    if-eqz v0, :cond_13

    .line 181
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->start()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mNeedResume:Z

    goto :goto_13
.end method

.method public start()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 580
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 581
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 582
    iput v3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    .line 583
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_1a

    .line 584
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 587
    :cond_1a
    iput v3, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    .line 588
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 605
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 606
    invoke-virtual {p0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->stopPlayback()V

    .line 607
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_1d

    .line 608
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mOnVideoEventListener:Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/ledo/fantasy/game/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 612
    :cond_1d
    return-void
.end method

.method public stopPlayback()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    .line 252
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 253
    iget-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 255
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mCurrentState:I

    .line 256
    iput v1, p0, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->mTargetState:I

    .line 258
    :cond_16
    return-void
.end method

.method public suspend()V
    .registers 2

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ledo/fantasy/game/Cocos2dxVideoView;->release(Z)V

    .line 616
    return-void
.end method
