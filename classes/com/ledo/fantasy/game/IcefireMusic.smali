.class public Lcom/ledo/fantasy/game/IcefireMusic;
.super Ljava/lang/Object;
.source "IcefireMusic.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mLeftVolume:F

.field private mPaused:Z

.field private mRightVolume:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/ledo/fantasy/game/IcefireMusic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/game/IcefireMusic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireMusic;->initData()V

    .line 59
    return-void
.end method

.method private createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .registers 11
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 231
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_5
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 232
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 233
    .local v8, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 234
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 240
    .end local v8    # "fis":Ljava/io/FileInputStream;
    :goto_1c
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 242
    iget v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mLeftVolume:F

    iget v2, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mRightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 248
    :goto_26
    return-object v0

    .line 236
    :cond_27
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 237
    .local v6, "assetFileDescritor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_41

    goto :goto_1c

    .line 243
    .end local v6    # "assetFileDescritor":Landroid/content/res/AssetFileDescriptor;
    :catch_41
    move-exception v7

    .line 244
    .local v7, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 245
    sget-object v1, Lcom/ledo/fantasy/game/IcefireMusic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method private initData()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 213
    iput v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mLeftVolume:F

    .line 214
    iput v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mRightVolume:F

    .line 215
    iput-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mPaused:Z

    .line 217
    iput-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mCurrentPath:Ljava/lang/String;

    .line 218
    return-void
.end method


# virtual methods
.method public end()V
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 186
    :cond_9
    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireMusic;->initData()V

    .line 187
    return-void
.end method

.method public getBackgroundVolume()F
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_d

    .line 191
    iget v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mLeftVolume:F

    iget v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 193
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isBackgroundMusicPlaying()Z
    .registers 3

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_7

    .line 173
    const/4 v0, 0x0

    .line 178
    :goto_6
    return v0

    .line 175
    :cond_7
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_6
.end method

.method public pauseBackgroundMusic()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 141
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mPaused:Z

    .line 144
    :cond_14
    return-void
.end method

.method public playBackgroundMusic(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "isLoop"    # Z

    .prologue
    .line 90
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mCurrentPath:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 92
    invoke-direct {p0, p1}, Lcom/ledo/fantasy/game/IcefireMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 93
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mCurrentPath:Ljava/lang/String;

    .line 109
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_32

    .line 110
    sget-object v1, Lcom/ledo/fantasy/game/IcefireMusic;->TAG:Ljava/lang/String;

    const-string v2, "playBackgroundMusic: background media player is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_17
    return-void

    .line 95
    :cond_18
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 99
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_29

    .line 100
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 102
    :cond_29
    invoke-direct {p0, p1}, Lcom/ledo/fantasy/game/IcefireMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 105
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mCurrentPath:Ljava/lang/String;

    goto :goto_c

    .line 113
    :cond_32
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 115
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 118
    :try_start_3c
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 119
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 120
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mPaused:Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4f} :catch_50

    goto :goto_17

    .line 123
    :catch_50
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/ledo/fantasy/game/IcefireMusic;->TAG:Ljava/lang/String;

    const-string v2, "playBackgroundMusic: error state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public preloadBackgroundMusic(Ljava/lang/String;)V
    .registers 3
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 78
    :cond_c
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_15

    .line 79
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 82
    :cond_15
    invoke-direct {p0, p1}, Lcom/ledo/fantasy/game/IcefireMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 85
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mCurrentPath:Ljava/lang/String;

    .line 87
    :cond_1d
    return-void
.end method

.method public resumeBackgroundMusic()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mPaused:Z

    if-eqz v0, :cond_10

    .line 148
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mPaused:Z

    .line 151
    :cond_10
    return-void
.end method

.method public rewindBackgroundMusic()V
    .registers 4

    .prologue
    .line 154
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1c

    .line 155
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 158
    :try_start_9
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 159
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 160
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mPaused:Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1d

    .line 167
    :cond_1c
    :goto_1c
    return-void

    .line 163
    :catch_1d
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/ledo/fantasy/game/IcefireMusic;->TAG:Ljava/lang/String;

    const-string v2, "rewindBackgroundMusic: error state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public setBackgroundVolume(F)V
    .registers 5
    .param p1, "pVolume"    # F

    .prologue
    .line 198
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 199
    const/4 p1, 0x0

    .line 202
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_e

    .line 203
    const/high16 p1, 0x3f800000    # 1.0f

    .line 206
    :cond_e
    iput p1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mRightVolume:F

    iput p1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mLeftVolume:F

    .line 207
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1f

    .line 208
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mLeftVolume:F

    iget v2, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mRightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 210
    :cond_1f
    return-void
.end method

.method public stopBackgroundMusic()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 131
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ledo/fantasy/game/IcefireMusic;->mPaused:Z

    .line 137
    :cond_c
    return-void
.end method
