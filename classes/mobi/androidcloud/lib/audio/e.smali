.class public final Lmobi/androidcloud/lib/audio/e;
.super Lmobi/androidcloud/lib/audio/c;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private frequency:I

.field private gg:I

.field private gh:I

.field private gi:I

.field private volatile gj:Z

.field private volatile gk:I

.field private volatile gl:Z

.field private gm:Lmobi/androidcloud/lib/audio/NativeAudio;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/String;

    const-string v1, "STFDCodec"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/c;-><init>()V

    .line 33
    new-instance v0, Lmobi/androidcloud/lib/audio/IlbcCodec;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/IlbcCodec;-><init>()V

    .line 37
    new-instance v0, Lmobi/androidcloud/lib/audio/EchoCancel;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/EchoCancel;-><init>()V

    .line 42
    const/16 v0, 0x1f40

    iput v0, p0, Lmobi/androidcloud/lib/audio/e;->frequency:I

    .line 43
    iput v2, p0, Lmobi/androidcloud/lib/audio/e;->gg:I

    .line 44
    iput v2, p0, Lmobi/androidcloud/lib/audio/e;->gh:I

    .line 53
    iput-boolean v1, p0, Lmobi/androidcloud/lib/audio/e;->gj:Z

    .line 65
    iput v1, p0, Lmobi/androidcloud/lib/audio/e;->gk:I

    .line 69
    iput-boolean v1, p0, Lmobi/androidcloud/lib/audio/e;->gl:Z

    .line 83
    return-void
.end method

.method private hY()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    sget-object v1, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 194
    if-eqz v0, :cond_2a

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v1, "armv6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "armv5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 199
    :cond_20
    sget-object v0, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v2, v2, v2, v1}, Lmobi/androidcloud/lib/audio/NativeAudio;->open(IIII)I

    .line 212
    :goto_29
    return-void

    .line 206
    :cond_2a
    invoke-static {}, Lcom/google/protobuf/d;->D()I

    move-result v0

    .line 208
    sget-object v1, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    invoke-virtual {v1, v3, v3, v3, v0}, Lmobi/androidcloud/lib/audio/NativeAudio;->open(IIII)I

    goto :goto_29
.end method


# virtual methods
.method public a([BI)V
    .registers 5

    .prologue
    .line 523
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    const/16 v1, 0x26

    invoke-virtual {v0, p1, v1, p2}, Lmobi/androidcloud/lib/audio/NativeAudio;->writeIlbcFrameWithSeq([BSI)I

    move-result v0

    .line 525
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 527
    sget-object v0, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 533
    :cond_d
    return-void
.end method

.method public g([BII)V
    .registers 6

    .prologue
    .line 538
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    int-to-short v1, p2

    invoke-virtual {v0, p1, v1, p3}, Lmobi/androidcloud/lib/audio/NativeAudio;->writeOpusFrameWithSeq([BSI)I

    move-result v0

    .line 540
    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 542
    sget-object v0, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error playing opus frame seq:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 545
    :cond_20
    return-void
.end method

.method public h([B)I
    .registers 4

    .prologue
    .line 350
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/audio/NativeAudio;->readIlbcFrame([B)I

    move-result v0

    .line 352
    iget v1, p0, Lmobi/androidcloud/lib/audio/e;->gi:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmobi/androidcloud/lib/audio/e;->gi:I

    .line 354
    return v0
.end method

.method public hV()Z
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized hW()V
    .registers 5

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmobi/androidcloud/lib/audio/e;->frequency:I

    iget v1, p0, Lmobi/androidcloud/lib/audio/e;->gg:I

    iget v2, p0, Lmobi/androidcloud/lib/audio/e;->gh:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 270
    iget v1, p0, Lmobi/androidcloud/lib/audio/e;->frequency:I

    iget v2, p0, Lmobi/androidcloud/lib/audio/e;->gg:I

    iget v3, p0, Lmobi/androidcloud/lib/audio/e;->gh:I

    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 271
    sget-object v2, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Min Record Buffer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Min Play Buffer:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    new-instance v0, Lmobi/androidcloud/lib/audio/NativeAudio;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/NativeAudio;-><init>()V

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 281
    invoke-virtual {p0}, Lmobi/androidcloud/lib/audio/e;->hZ()S

    move-result v2

    .line 284
    sget-object v3, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 287
    iget-object v3, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    invoke-virtual {v3, v2}, Lmobi/androidcloud/lib/audio/NativeAudio;->setLatencyOffset(S)I

    .line 289
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/e;->hY()V

    .line 291
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    const/16 v3, 0x2ee0

    invoke-virtual {v2, v3}, Lmobi/androidcloud/lib/audio/NativeAudio;->setOpusBitrate(I)I

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 295
    sget-object v0, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 297
    invoke-static {}, Lcom/google/protobuf/d;->C()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 299
    sget-object v0, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/audio/NativeAudio;->setSpeakerMode(Z)V
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_6c

    .line 306
    :goto_61
    monitor-exit p0

    return-void

    .line 303
    :cond_63
    :try_start_63
    sget-object v0, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/audio/NativeAudio;->setSpeakerMode(Z)V
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_6c

    goto :goto_61

    .line 269
    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hX()V
    .registers 3

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/audio/NativeAudio;->close(I)I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 311
    monitor-exit p0

    return-void

    .line 310
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hZ()S
    .registers 8

    .prologue
    const v6, 0xbb80

    const v5, 0xac44

    const/16 v1, 0x32

    .line 216
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 218
    const/16 v0, 0xe6

    .line 220
    invoke-static {}, Lcom/google/protobuf/d;->D()I

    move-result v3

    .line 223
    :try_start_14
    const-string v4, "NEXUS 10"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_65

    move-result v4

    if-eqz v4, :cond_3b

    .line 225
    if-eq v3, v5, :cond_20

    if-ne v3, v6, :cond_38

    :cond_20
    move v0, v1

    .line 261
    :cond_21
    :goto_21
    sget-object v1, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "model: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Latency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    return v0

    .line 231
    :cond_38
    const/16 v0, 0x15e

    goto :goto_21

    .line 234
    :cond_3b
    :try_start_3b
    const-string v4, "NEXUS 7"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "NEXUS 5"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 236
    :cond_4b
    if-eq v3, v5, :cond_4f

    if-ne v3, v6, :cond_51

    :cond_4f
    move v0, v1

    .line 238
    goto :goto_21

    .line 242
    :cond_51
    const/16 v0, 0x154

    goto :goto_21

    .line 245
    :cond_54
    const-string v4, "GALAXY NEXUS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_59} :catch_65

    move-result v4

    if-eqz v4, :cond_21

    .line 247
    if-eq v3, v5, :cond_60

    if-ne v3, v6, :cond_62

    :cond_60
    move v0, v1

    .line 249
    goto :goto_21

    .line 253
    :cond_62
    const/16 v0, 0xfa

    goto :goto_21

    .line 257
    :catch_65
    move-exception v1

    .line 258
    sget-object v3, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while getting model..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_21
.end method

.method public i([B)I
    .registers 4

    .prologue
    .line 362
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/audio/NativeAudio;->readOpusFrame([B)I

    move-result v0

    .line 364
    iget v1, p0, Lmobi/androidcloud/lib/audio/e;->gi:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmobi/androidcloud/lib/audio/e;->gi:I

    .line 366
    return v0
.end method

.method public declared-synchronized o(Z)V
    .registers 4

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    sget-object v0, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/google/protobuf/d;->C()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 173
    sget-object v0, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/audio/NativeAudio;->setSpeakerMode(Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 182
    :goto_11
    monitor-exit p0

    return-void

    .line 178
    :cond_13
    :try_start_13
    sget-object v0, Lmobi/androidcloud/lib/audio/e;->TAG:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/e;->gm:Lmobi/androidcloud/lib/audio/NativeAudio;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/audio/NativeAudio;->setSpeakerMode(Z)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_11

    .line 168
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
