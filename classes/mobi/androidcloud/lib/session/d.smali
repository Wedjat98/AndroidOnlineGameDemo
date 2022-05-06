.class public final enum Lmobi/androidcloud/lib/session/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum jg:Lmobi/androidcloud/lib/session/d;


# instance fields
.field private volatile gb:Landroid/media/AudioManager;

.field private jh:Z

.field private ji:Ljava/util/concurrent/ExecutorService;

.field private jj:Lmobi/androidcloud/lib/session/f;

.field private volatile jk:Z

.field private jl:I

.field private volatile jm:I

.field private jn:I

.field private jo:I

.field private jp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Lmobi/androidcloud/lib/session/d;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/session/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lmobi/androidcloud/lib/session/d;

    sget-object v1, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    .line 28
    iput-boolean v1, p0, Lmobi/androidcloud/lib/session/d;->jh:Z

    .line 30
    iput-boolean v1, p0, Lmobi/androidcloud/lib/session/d;->jk:Z

    return-void
.end method

.method public static getStreamType()I
    .registers 2

    .prologue
    .line 56
    const/16 v0, 0xb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_8

    .line 57
    const/4 v0, 0x3

    .line 59
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x2

    goto :goto_7
.end method

.method private jS()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 91
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lmobi/androidcloud/lib/session/d;->jn:I

    .line 92
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lmobi/androidcloud/lib/session/d;->jo:I

    .line 93
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/session/d;->jp:Z

    .line 95
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lmobi/androidcloud/lib/session/d;->jm:I

    .line 97
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 104
    return-void
.end method

.method private jT()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/d;->jp:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 109
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    iget v1, p0, Lmobi/androidcloud/lib/session/d;->jn:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 110
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    iget v1, p0, Lmobi/androidcloud/lib/session/d;->jo:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 116
    return-void
.end method

.method private kb()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    .line 317
    :goto_4
    return-void

    .line 315
    :cond_5
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 316
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-static {}, Lmobi/androidcloud/lib/session/d;->getStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_4
.end method

.method private kc()V
    .registers 3

    .prologue
    .line 326
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    .line 338
    :cond_4
    :goto_4
    return-void

    .line 330
    :cond_5
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 332
    invoke-virtual {p0}, Lmobi/androidcloud/lib/session/d;->ka()V

    .line 334
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    .line 335
    iget-object v1, p0, Lmobi/androidcloud/lib/session/d;->jj:Lmobi/androidcloud/lib/session/f;

    if-eqz v1, :cond_4

    .line 336
    iget-object v1, p0, Lmobi/androidcloud/lib/session/d;->jj:Lmobi/androidcloud/lib/session/f;

    invoke-virtual {v1, v0}, Lmobi/androidcloud/lib/session/f;->setSpeakerMode(Z)V

    goto :goto_4
.end method


# virtual methods
.method public a(ILjava/lang/String;IZZ)V
    .registers 12

    .prologue
    .line 124
    invoke-virtual {p0}, Lmobi/androidcloud/lib/session/d;->jW()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "in session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmobi/androidcloud/lib/session/d;->jl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rejecting session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    :goto_1c
    return-void

    .line 131
    :cond_1d
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/d;->jS()V

    .line 133
    iput-boolean p4, p0, Lmobi/androidcloud/lib/session/d;->jk:Z

    .line 136
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/d;->jk:Z

    if-nez v0, :cond_2d

    .line 137
    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/k;->ir()V

    .line 140
    :cond_2d
    iput p1, p0, Lmobi/androidcloud/lib/session/d;->jl:I

    .line 142
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/d;->kb()V

    .line 143
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/d;->kc()V

    .line 145
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-static {}, Lmobi/androidcloud/lib/session/d;->getStreamType()I

    move-result v1

    invoke-static {v0, v1}, Lmobi/androidcloud/lib/audio/a;->b(Landroid/media/AudioManager;I)V

    .line 147
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 149
    new-instance v0, Lmobi/androidcloud/lib/session/f;

    iget-boolean v4, p0, Lmobi/androidcloud/lib/session/d;->jk:Z

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lmobi/androidcloud/lib/session/f;-><init>(ILjava/lang/String;IZZ)V

    iput-object v0, p0, Lmobi/androidcloud/lib/session/d;->jj:Lmobi/androidcloud/lib/session/f;

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/session/d;->ji:Ljava/util/concurrent/ExecutorService;

    .line 152
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->ji:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lmobi/androidcloud/lib/session/d;->jj:Lmobi/androidcloud/lib/session/f;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 154
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hH()V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "started session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmobi/androidcloud/lib/session/d;->jl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-static {v0}, Lmobi/androidcloud/lib/audio/d;->a(Landroid/media/AudioManager;)V

    goto :goto_1c
.end method

.method public as(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 174
    iget v0, p0, Lmobi/androidcloud/lib/session/d;->jl:I

    if-ne v0, v1, :cond_c

    .line 177
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hI()V

    .line 234
    :goto_b
    return-void

    .line 182
    :cond_c
    iget v0, p0, Lmobi/androidcloud/lib/session/d;->jl:I

    if-eq v0, p1, :cond_2c

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignored EndSession for sessionId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while in session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmobi/androidcloud/lib/session/d;->jl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hI()V

    goto :goto_b

    .line 189
    :cond_2c
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-static {v0}, Lmobi/androidcloud/lib/audio/d;->b(Landroid/media/AudioManager;)V

    .line 191
    invoke-static {}, Lmobi/androidcloud/lib/audio/a;->hU()V

    .line 193
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-static {v0}, Lmobi/androidcloud/lib/audio/HeadsetControlReceiver;->d(Landroid/media/AudioManager;)V

    .line 195
    iput v1, p0, Lmobi/androidcloud/lib/session/d;->jl:I

    .line 197
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->jj:Lmobi/androidcloud/lib/session/f;

    if-eqz v0, :cond_52

    .line 198
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->jj:Lmobi/androidcloud/lib/session/f;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/f;->stop()V

    .line 199
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->ji:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 202
    :try_start_49
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->ji:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_52} :catch_6b

    .line 204
    :cond_52
    :goto_52
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/androidcloud/lib/session/d;->jj:Lmobi/androidcloud/lib/session/f;

    .line 213
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hI()V

    .line 217
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/d;->kc()V

    .line 218
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 222
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 226
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/d;->jT()V

    goto :goto_b

    :catch_6b
    move-exception v0

    goto :goto_52
.end method

.method public declared-synchronized c(Ljava/util/List;Lmobi/tikl/wire/control/a$H;)V
    .registers 4

    .prologue
    .line 415
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0, p1, p2}, Lcom/talkray/arcvoice/client/b;->a(Ljava/util/List;Lmobi/tikl/wire/control/a$H;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 419
    monitor-exit p0

    return-void

    .line 415
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Landroid/media/AudioManager;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    .line 70
    return-void
.end method

.method public jU()V
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lmobi/androidcloud/lib/session/d;->jW()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 166
    iget v0, p0, Lmobi/androidcloud/lib/session/d;->jl:I

    invoke-virtual {p0, v0}, Lmobi/androidcloud/lib/session/d;->as(I)V

    .line 170
    :goto_b
    return-void

    .line 168
    :cond_c
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hI()V

    goto :goto_b
.end method

.method public jV()Z
    .registers 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/d;->jh:Z

    return v0
.end method

.method public jW()Z
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->jj:Lmobi/androidcloud/lib/session/f;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->jj:Lmobi/androidcloud/lib/session/f;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/f;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public jX()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/d;->jk:Z

    return v0
.end method

.method public jY()V
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    .line 293
    :goto_4
    return-void

    .line 292
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lmobi/androidcloud/lib/session/f;->ju:Z

    goto :goto_4
.end method

.method public jZ()V
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    .line 300
    :goto_4
    return-void

    .line 299
    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lmobi/androidcloud/lib/session/f;->ju:Z

    goto :goto_4
.end method

.method public ka()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 303
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    if-nez v0, :cond_6

    .line 309
    :goto_5
    return-void

    .line 306
    :cond_6
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 307
    iget-object v1, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_5
.end method

.method public kd()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 364
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    if-nez v0, :cond_6

    .line 369
    :goto_5
    return-void

    .line 367
    :cond_6
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 368
    sput-boolean v1, Lmobi/androidcloud/lib/session/f;->jt:Z

    goto :goto_5
.end method

.method public ke()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    if-nez v0, :cond_6

    .line 377
    :goto_5
    return-void

    .line 375
    :cond_6
    iget-object v0, p0, Lmobi/androidcloud/lib/session/d;->gb:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 376
    sput-boolean v1, Lmobi/androidcloud/lib/session/f;->jt:Z

    goto :goto_5
.end method

.method public declared-synchronized kf()V
    .registers 3

    .prologue
    .line 435
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/talkray/arcvoice/utils/a;->fU:Lcom/talkray/arcvoice/utils/a;

    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/d;->jk:Z

    invoke-virtual {v0, v1}, Lcom/talkray/arcvoice/utils/a;->n(Z)V

    .line 436
    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/k;->ip()V

    .line 438
    invoke-virtual {p0}, Lmobi/androidcloud/lib/session/d;->jU()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 439
    monitor-exit p0

    return-void

    .line 435
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s(Z)V
    .registers 2

    .prologue
    .line 241
    iput-boolean p1, p0, Lmobi/androidcloud/lib/session/d;->jh:Z

    .line 242
    return-void
.end method
