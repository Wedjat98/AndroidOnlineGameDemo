.class public Lcom/ledo/fantasy/game/IcefireSound;
.super Ljava/lang/Object;
.source "IcefireSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;,
        Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;
    }
.end annotation


# static fields
.field private static final INVALID_SOUND_ID:I = -0x1

.field private static final INVALID_STREAM_ID:I = -0x1

.field private static final MAX_SIMULTANEOUS_STREAMS_DEFAULT:I = 0x5

.field private static final SOUND_PRIORITY:I = 0x1

.field private static final SOUND_QUALITY:I = 0x5

.field private static final SOUND_RATE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "Cocos2dxSound"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftVolume:F

.field private final mPathSoundIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPathStreamIDsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRightVolume:F

.field private mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamIdSyn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathSoundIDMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mContext:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireSound;->initData()V

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/ledo/fantasy/game/IcefireSound;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ledo/fantasy/game/IcefireSound;Ljava/lang/String;IZ)I
    .registers 5

    .prologue
    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/ledo/fantasy/game/IcefireSound;->doPlayEffect(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/ledo/fantasy/game/IcefireSound;I)V
    .registers 2

    .prologue
    .line 63
    iput p1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mStreamIdSyn:I

    return-void
.end method

.method static synthetic access$3(Lcom/ledo/fantasy/game/IcefireSound;)Ljava/util/concurrent/Semaphore;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private doPlayEffect(Ljava/lang/String;IZ)I
    .registers 13
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "soundId"    # I
    .param p3, "pLoop"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/ledo/fantasy/game/IcefireSound;->mLeftVolume:F

    iget v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mRightVolume:F

    const/4 v4, 0x1

    if-eqz p3, :cond_2d

    const/4 v5, -0x1

    :goto_a
    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 293
    .local v7, "streamID":I
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 294
    .local v8, "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v8, :cond_25

    .line 295
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .restart local v8    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_25
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    return v7

    .line 290
    .end local v7    # "streamID":I
    .end local v8    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2d
    const/4 v5, 0x0

    goto :goto_a
.end method

.method private initData()V
    .registers 5

    .prologue
    const/4 v3, 0x5

    const/high16 v2, 0x3f000000    # 0.5f

    .line 85
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    .line 86
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/IcefireSound$OnLoadCompletedListener;-><init>(Lcom/ledo/fantasy/game/IcefireSound;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 88
    iput v2, p0, Lcom/ledo/fantasy/game/IcefireSound;->mLeftVolume:F

    .line 89
    iput v2, p0, Lcom/ledo/fantasy/game/IcefireSound;->mRightVolume:F

    .line 91
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 92
    return-void
.end method


# virtual methods
.method public createSoundIDFromAsset(Ljava/lang/String;)I
    .registers 7
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v1, -0x1

    .line 270
    .local v1, "soundID":I
    :try_start_1
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 271
    iget-object v2, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 281
    :goto_10
    if-nez v1, :cond_13

    .line 282
    const/4 v1, -0x1

    .line 285
    :cond_13
    return v1

    .line 273
    :cond_14
    iget-object v2, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_26

    move-result v1

    goto :goto_10

    .line 275
    :catch_26
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 277
    const-string v2, "Cocos2dxSound"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public end()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 255
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 256
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 257
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 258
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 260
    iput v1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mLeftVolume:F

    .line 261
    iput v1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mRightVolume:F

    .line 263
    invoke-direct {p0}, Lcom/ledo/fantasy/game/IcefireSound;->initData()V

    .line 264
    return-void
.end method

.method public getEffectsVolume()F
    .registers 3

    .prologue
    .line 228
    iget v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mLeftVolume:F

    iget v1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public pauseAllEffects()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 194
    return-void
.end method

.method public pauseEffect(I)V
    .registers 3
    .param p1, "pStreamID"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    .line 186
    return-void
.end method

.method public playEffect(Ljava/lang/String;Z)I
    .registers 11
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "pLoop"    # Z

    .prologue
    const/4 v3, -0x1

    .line 139
    iget-object v4, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 140
    .local v1, "soundID":Ljava/lang/Integer;
    const/4 v2, -0x1

    .line 142
    .local v2, "streamID":I
    if-eqz v1, :cond_16

    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3, p2}, Lcom/ledo/fantasy/game/IcefireSound;->doPlayEffect(Ljava/lang/String;IZ)I

    move-result v2

    :goto_14
    move v3, v2

    .line 169
    :cond_15
    :goto_15
    return v3

    .line 147
    :cond_16
    invoke-virtual {p0, p1}, Lcom/ledo/fantasy/game/IcefireSound;->preloadEffect(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_15

    .line 154
    iget-object v4, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    monitor-enter v4

    .line 156
    :try_start_27
    iget-object v5, p0, Lcom/ledo/fantasy/game/IcefireSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    new-instance v6, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, p0, p1, v7, p2}, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;-><init>(Lcom/ledo/fantasy/game/IcefireSound;Ljava/lang/String;IZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_3e

    .line 160
    :try_start_35
    iget-object v5, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 162
    iget v2, p0, Lcom/ledo/fantasy/game/IcefireSound;->mStreamIdSyn:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_41
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3e

    .line 154
    :try_start_3c
    monitor-exit v4

    goto :goto_14

    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_3e

    throw v3

    .line 163
    :catch_41
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    :try_start_42
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3e

    goto :goto_15
.end method

.method public preloadEffect(Ljava/lang/String;)I
    .registers 5
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 109
    .local v0, "soundID":Ljava/lang/Integer;
    if-nez v0, :cond_1e

    .line 110
    invoke-virtual {p0, p1}, Lcom/ledo/fantasy/game/IcefireSound;->createSoundIDFromAsset(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 113
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public resumeAllEffects()V
    .registers 6

    .prologue
    .line 199
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 200
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    .line 208
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_18
    return-void

    .line 202
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 204
    .local v2, "pStreamID":I
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_29
.end method

.method public resumeEffect(I)V
    .registers 3
    .param p1, "pStreamID"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    .line 190
    return-void
.end method

.method public setEffectsVolume(F)V
    .registers 9
    .param p1, "pVolume"    # F

    .prologue
    .line 233
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    .line 234
    const/4 p1, 0x0

    .line 236
    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_e

    .line 237
    const/high16 p1, 0x3f800000    # 1.0f

    .line 240
    :cond_e
    iput p1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mRightVolume:F

    iput p1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mLeftVolume:F

    .line 243
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 244
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 252
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_2a
    return-void

    .line 246
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 247
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 248
    .local v2, "pStreamID":I
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    iget v5, p0, Lcom/ledo/fantasy/game/IcefireSound;->mLeftVolume:F

    iget v6, p0, Lcom/ledo/fantasy/game/IcefireSound;->mRightVolume:F

    invoke-virtual {v3, v2, v5, v6}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_3b
.end method

.method public stopAllEffects()V
    .registers 6

    .prologue
    .line 213
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 214
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 224
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_18
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 225
    return-void

    .line 216
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 218
    .local v2, "pStreamID":I
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_2e
.end method

.method public stopEffect(I)V
    .registers 6
    .param p1, "pStreamID"    # I

    .prologue
    .line 173
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 176
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    .line 182
    :goto_15
    return-void

    .line 176
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    .local v0, "pPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 178
    iget-object v1, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_15
.end method

.method public unloadEffect(Ljava/lang/String;)V
    .registers 8
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 123
    .local v2, "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_14

    .line 124
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_32

    .line 128
    :cond_14
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 132
    .local v1, "soundID":Ljava/lang/Integer;
    if-eqz v1, :cond_31

    .line 133
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->unload(I)Z

    .line 134
    iget-object v3, p0, Lcom/ledo/fantasy/game/IcefireSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_31
    return-void

    .line 124
    .end local v1    # "soundID":Ljava/lang/Integer;
    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 125
    .local v0, "pStreamID":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/ledo/fantasy/game/IcefireSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_e
.end method
