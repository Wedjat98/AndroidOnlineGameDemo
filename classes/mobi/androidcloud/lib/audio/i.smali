.class public final Lmobi/androidcloud/lib/audio/i;
.super Lmobi/androidcloud/lib/audio/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/androidcloud/lib/audio/i$a;,
        Lmobi/androidcloud/lib/audio/i$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private frequency:I

.field private gA:I

.field private gB:I

.field private gC:I

.field private gD:I

.field private gE:[Lmobi/androidcloud/lib/audio/i$b;

.field private gF:[Lmobi/androidcloud/lib/audio/i$a;

.field private gG:I

.field private gH:I

.field private gI:[S

.field private gJ:[B

.field private gK:[S

.field private gL:I

.field private gM:I

.field private gN:J

.field private gO:S

.field private gg:I

.field private gh:I

.field private gi:I

.field private volatile gj:Z

.field private volatile gk:I

.field private volatile gl:Z

.field private gu:[S

.field private gv:[S

.field private gw:Lmobi/androidcloud/lib/audio/IlbcCodec;

.field private gx:Lmobi/androidcloud/lib/audio/EchoCancel;

.field private gy:Landroid/media/AudioRecord;

.field private gz:Landroid/media/AudioTrack;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/String;

    const-string v1, "STFDCodec"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/16 v1, 0xa0

    const/4 v2, 0x0

    .line 8
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/c;-><init>()V

    .line 26
    new-array v0, v1, [S

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gu:[S

    .line 27
    new-array v0, v1, [S

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gv:[S

    .line 29
    new-instance v0, Lmobi/androidcloud/lib/audio/IlbcCodec;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/IlbcCodec;-><init>()V

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gw:Lmobi/androidcloud/lib/audio/IlbcCodec;

    .line 30
    new-instance v0, Lmobi/androidcloud/lib/audio/EchoCancel;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/EchoCancel;-><init>()V

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gx:Lmobi/androidcloud/lib/audio/EchoCancel;

    .line 35
    const/16 v0, 0x1f40

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->frequency:I

    .line 36
    iput v3, p0, Lmobi/androidcloud/lib/audio/i;->gg:I

    .line 37
    iput v3, p0, Lmobi/androidcloud/lib/audio/i;->gh:I

    .line 46
    const/16 v0, 0x3e8

    new-array v0, v0, [Lmobi/androidcloud/lib/audio/i$b;

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gE:[Lmobi/androidcloud/lib/audio/i$b;

    .line 47
    const/16 v0, 0x1f4

    new-array v0, v0, [Lmobi/androidcloud/lib/audio/i$a;

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gF:[Lmobi/androidcloud/lib/audio/i$a;

    .line 52
    new-array v0, v1, [S

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gI:[S

    .line 53
    const/16 v0, 0x26

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gJ:[B

    .line 55
    new-array v0, v1, [S

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gK:[S

    .line 57
    iput-boolean v2, p0, Lmobi/androidcloud/lib/audio/i;->gj:Z

    .line 58
    iput v2, p0, Lmobi/androidcloud/lib/audio/i;->gk:I

    .line 62
    iput v2, p0, Lmobi/androidcloud/lib/audio/i;->gL:I

    .line 73
    iput v2, p0, Lmobi/androidcloud/lib/audio/i;->gM:I

    .line 75
    iput-boolean v2, p0, Lmobi/androidcloud/lib/audio/i;->gl:Z

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/androidcloud/lib/audio/i;->gN:J

    .line 77
    iput-short v2, p0, Lmobi/androidcloud/lib/audio/i;->gO:S

    .line 766
    return-void
.end method

.method private b([S)V
    .registers 6

    .prologue
    const/16 v3, 0x1f4

    const/4 v2, 0x0

    .line 700
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gM:I

    if-lt v0, v3, :cond_9

    .line 701
    iput v2, p0, Lmobi/androidcloud/lib/audio/i;->gM:I

    .line 703
    :cond_9
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gF:[Lmobi/androidcloud/lib/audio/i$a;

    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gM:I

    aget-object v0, v0, v1

    iput-object p1, v0, Lmobi/androidcloud/lib/audio/i$a;->gP:[S

    .line 704
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gM:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gM:I

    .line 708
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gL:I

    if-lt v0, v3, :cond_1d

    .line 709
    iput v2, p0, Lmobi/androidcloud/lib/audio/i;->gL:I

    .line 711
    :cond_1d
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gF:[Lmobi/androidcloud/lib/audio/i$a;

    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gL:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lmobi/androidcloud/lib/audio/i$a;->gP:[S

    .line 712
    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gL:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmobi/androidcloud/lib/audio/i;->gL:I

    .line 713
    iget-object v1, p0, Lmobi/androidcloud/lib/audio/i;->gx:Lmobi/androidcloud/lib/audio/EchoCancel;

    invoke-virtual {v1, v0}, Lmobi/androidcloud/lib/audio/EchoCancel;->setIncomingAudio([S)I

    .line 717
    return-void
.end method

.method private c([S)V
    .registers 5

    .prologue
    .line 728
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gA:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gA:I

    .line 734
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioTrack;->write([SII)I

    move-result v0

    .line 736
    if-gtz v0, :cond_13

    .line 737
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 757
    :goto_12
    return-void

    .line 742
    :cond_13
    invoke-direct {p0, p1}, Lmobi/androidcloud/lib/audio/i;->b([S)V

    goto :goto_12
.end method

.method private ie()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {}, Lmobi/androidcloud/lib/phone/c;->jD()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 170
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gx:Lmobi/androidcloud/lib/audio/EchoCancel;

    invoke-virtual {v0, v2, v2, v3}, Lmobi/androidcloud/lib/audio/EchoCancel;->open(III)I

    .line 203
    :goto_15
    return-void

    .line 175
    :cond_16
    invoke-static {}, Lmobi/androidcloud/lib/phone/c;->jE()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 177
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gx:Lmobi/androidcloud/lib/audio/EchoCancel;

    invoke-virtual {v0, v3, v2, v3}, Lmobi/androidcloud/lib/audio/EchoCancel;->open(III)I

    goto :goto_15

    .line 182
    :cond_24
    sget-object v1, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 184
    if-eqz v0, :cond_44

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string v1, "armv6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "armv5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 192
    :cond_3c
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gx:Lmobi/androidcloud/lib/audio/EchoCancel;

    invoke-virtual {v0, v2, v2, v2}, Lmobi/androidcloud/lib/audio/EchoCancel;->open(III)I

    goto :goto_15

    .line 199
    :cond_44
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gx:Lmobi/androidcloud/lib/audio/EchoCancel;

    invoke-virtual {v0, v2, v2, v3}, Lmobi/androidcloud/lib/audio/EchoCancel;->open(III)I

    goto :goto_15
.end method

.method private if()V
    .registers 8

    .prologue
    .line 233
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->frequency:I

    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gg:I

    iget v2, p0, Lmobi/androidcloud/lib/audio/i;->gh:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    .line 240
    add-int/lit16 v0, v6, 0x640

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gC:I

    .line 242
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lmobi/androidcloud/lib/audio/i;->frequency:I

    iget v3, p0, Lmobi/androidcloud/lib/audio/i;->gg:I

    iget v4, p0, Lmobi/androidcloud/lib/audio/i;->gh:I

    iget v5, p0, Lmobi/androidcloud/lib/audio/i;->gC:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gy:Landroid/media/AudioRecord;

    .line 248
    iput v6, p0, Lmobi/androidcloud/lib/audio/i;->gD:I

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gi:I

    .line 253
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TiKL Recording Min Buffer in Bytes:="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Our Buffer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    return-void
.end method

.method private ig()[B
    .registers 8

    .prologue
    const/16 v6, 0xa0

    const/4 v1, 0x0

    .line 292
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gi:I

    if-nez v0, :cond_3e

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmobi/androidcloud/lib/audio/i;->gN:J

    .line 295
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gy:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 296
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gy:Landroid/media/AudioRecord;

    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gI:[S

    invoke-virtual {v0, v2, v1, v6}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmobi/androidcloud/lib/audio/i;->gN:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lmobi/androidcloud/lib/audio/i;->gN:J

    .line 299
    sget-object v2, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Record Startup Latency = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lmobi/androidcloud/lib/audio/i;->gN:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 307
    :goto_31
    iget v2, p0, Lmobi/androidcloud/lib/audio/i;->gi:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmobi/androidcloud/lib/audio/i;->gi:I

    .line 310
    if-ge v0, v6, :cond_47

    .line 311
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gJ:[B

    .line 374
    :goto_3d
    return-object v0

    .line 303
    :cond_3e
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gy:Landroid/media/AudioRecord;

    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gI:[S

    invoke-virtual {v0, v2, v1, v6}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    goto :goto_31

    .line 316
    :cond_47
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gk:I

    if-nez v0, :cond_4d

    .line 319
    iput-boolean v1, p0, Lmobi/androidcloud/lib/audio/i;->gl:Z

    .line 321
    :cond_4d
    iget-boolean v0, p0, Lmobi/androidcloud/lib/audio/i;->gj:Z

    if-eqz v0, :cond_a2

    .line 324
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gA:I

    if-nez v0, :cond_62

    move v0, v1

    .line 328
    :goto_56
    const/16 v2, 0xa

    if-ge v0, v2, :cond_62

    .line 329
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gu:[S

    invoke-direct {p0, v2}, Lmobi/androidcloud/lib/audio/i;->c([S)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 335
    :cond_62
    iget-boolean v0, p0, Lmobi/androidcloud/lib/audio/i;->gl:Z

    if-eqz v0, :cond_9f

    .line 337
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gH:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_6e

    .line 338
    iput v1, p0, Lmobi/androidcloud/lib/audio/i;->gH:I

    .line 340
    :cond_6e
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gE:[Lmobi/androidcloud/lib/audio/i$b;

    iget v2, p0, Lmobi/androidcloud/lib/audio/i;->gH:I

    aget-object v2, v0, v2

    .line 342
    iget-boolean v0, v2, Lmobi/androidcloud/lib/audio/i$b;->isNew:Z

    if-eqz v0, :cond_9d

    .line 344
    iget-object v0, v2, Lmobi/androidcloud/lib/audio/i$b;->gP:[S

    .line 345
    iget v3, p0, Lmobi/androidcloud/lib/audio/i;->gH:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmobi/androidcloud/lib/audio/i;->gH:I

    .line 346
    iput-boolean v1, v2, Lmobi/androidcloud/lib/audio/i$b;->isNew:Z

    .line 347
    iget v2, p0, Lmobi/androidcloud/lib/audio/i;->gk:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmobi/androidcloud/lib/audio/i;->gk:I

    .line 363
    :goto_88
    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/audio/i;->c([S)V

    .line 364
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/i;->il()Z

    move-result v0

    .line 366
    if-eqz v0, :cond_a2

    .line 368
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gw:Lmobi/androidcloud/lib/audio/IlbcCodec;

    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gK:[S

    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gJ:[B

    invoke-static {v0, v1, v2, v6}, Lmobi/androidcloud/lib/audio/IlbcCodec;->a([SI[BI)V

    .line 369
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gJ:[B

    goto :goto_3d

    .line 351
    :cond_9d
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 352
    :cond_9f
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gu:[S

    goto :goto_88

    .line 374
    :cond_a2
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method private ih()V
    .registers 4

    .prologue
    .line 379
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ilbc Audio recorder Stopped Frames Recorded = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    :try_start_e
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gy:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 383
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gy:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gy:Landroid/media/AudioRecord;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    .line 389
    :goto_1b
    return-void

    .line 385
    :catch_1c
    move-exception v0

    .line 386
    sget-object v1, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while closing stoping recorder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b
.end method

.method private ii()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/audio/i;->gj:Z

    .line 395
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    if-nez v0, :cond_b

    .line 397
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 415
    :goto_a
    return-void

    .line 406
    :cond_b
    :try_start_b
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_1a
    .catchall {:try_start_b .. :try_end_12} :catchall_33

    .line 413
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 414
    iput-object v3, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    goto :goto_a

    .line 409
    :catch_1a
    move-exception v0

    .line 410
    :try_start_1b
    sget-object v1, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while stopping player..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_33

    .line 413
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 414
    iput-object v3, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    goto :goto_a

    .line 413
    :catchall_33
    move-exception v0

    iget-object v1, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 414
    iput-object v3, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    throw v0
.end method

.method private ij()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gA:I

    .line 421
    iput-boolean v0, p0, Lmobi/androidcloud/lib/audio/i;->gj:Z

    .line 423
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->frequency:I

    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gg:I

    iget v2, p0, Lmobi/androidcloud/lib/audio/i;->gh:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 436
    const/16 v0, 0xc80

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gB:I

    .line 441
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    iget v2, p0, Lmobi/androidcloud/lib/audio/i;->frequency:I

    iget v3, p0, Lmobi/androidcloud/lib/audio/i;->gg:I

    iget v4, p0, Lmobi/androidcloud/lib/audio/i;->gh:I

    iget v5, p0, Lmobi/androidcloud/lib/audio/i;->gB:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    .line 446
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/i;->ik()V

    .line 448
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iLBC Player Started MinBuf in Bytes = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ours:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    return-void
.end method

.method private declared-synchronized ik()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 456
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    if-nez v0, :cond_a

    .line 458
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_97

    .line 527
    :goto_8
    monitor-exit p0

    return-void

    .line 462
    :cond_a
    :try_start_a
    iget-boolean v0, p0, Lmobi/androidcloud/lib/audio/i;->gj:Z

    if-eqz v0, :cond_22

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/audio/i;->gj:Z
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_97

    .line 467
    :try_start_11
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 468
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 469
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_85
    .catchall {:try_start_11 .. :try_end_20} :catchall_97

    .line 474
    :goto_20
    :try_start_20
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_97

    .line 480
    :cond_22
    const-wide/16 v2, 0x2ee

    :try_start_24
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 481
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_29} :catch_9a
    .catchall {:try_start_24 .. :try_end_29} :catchall_97

    .line 487
    :goto_29
    const/4 v0, 0x0

    :try_start_2a
    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gL:I

    .line 489
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gD:I

    div-int/lit16 v2, v0, 0x140

    .line 491
    const/4 v0, 0x5

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gM:I

    .line 500
    invoke-static {}, Lmobi/androidcloud/lib/phone/c;->jD()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 502
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 503
    const/16 v0, 0xb4

    .line 508
    :goto_3d
    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gM:I

    mul-int/lit8 v1, v1, 0x14

    add-int/lit16 v1, v1, 0x82

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lmobi/androidcloud/lib/audio/i;->gO:S

    .line 511
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected buffers/delay Play:10 Rec:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WriteIndx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rDelay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lmobi/androidcloud/lib/audio/i;->gO:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p0}, Lmobi/androidcloud/lib/audio/i;->id()V

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gH:I

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gG:I

    .line 517
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gk:I

    .line 518
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gA:I

    .line 520
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/androidcloud/lib/audio/i;->gj:Z

    .line 525
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    goto :goto_8

    .line 470
    :catch_85
    move-exception v0

    .line 471
    sget-object v2, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while stopping "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_96
    .catchall {:try_start_2a .. :try_end_96} :catchall_97

    goto :goto_20

    .line 456
    :catchall_97
    move-exception v0

    monitor-exit p0

    throw v0

    .line 482
    :catch_9a
    move-exception v0

    :try_start_9b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_97

    goto :goto_29

    :cond_9f
    move v0, v1

    goto :goto_3d
.end method

.method private il()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 676
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gx:Lmobi/androidcloud/lib/audio/EchoCancel;

    iget-object v3, p0, Lmobi/androidcloud/lib/audio/i;->gI:[S

    iget-object v4, p0, Lmobi/androidcloud/lib/audio/i;->gK:[S

    iget-short v5, p0, Lmobi/androidcloud/lib/audio/i;->gO:S

    invoke-virtual {v2, v3, v4, v5, v1}, Lmobi/androidcloud/lib/audio/EchoCancel;->echoCancelOutgoingAudio([S[SSI)I

    move-result v2

    .line 680
    if-ne v2, v0, :cond_11

    .line 693
    :goto_10
    return v0

    .line 684
    :cond_11
    const/4 v0, -0x1

    if-ne v2, v0, :cond_16

    .line 686
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    :cond_16
    move v0, v1

    .line 693
    goto :goto_10
.end method


# virtual methods
.method public a([BI)V
    .registers 6

    .prologue
    .line 543
    iget-boolean v0, p0, Lmobi/androidcloud/lib/audio/i;->gj:Z

    if-nez v0, :cond_5

    .line 582
    :cond_4
    :goto_4
    return-void

    .line 555
    :cond_5
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gk:I

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_e

    .line 557
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    goto :goto_4

    .line 561
    :cond_e
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gG:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_17

    .line 562
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gG:I

    .line 565
    :cond_17
    :try_start_17
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gE:[Lmobi/androidcloud/lib/audio/i$b;

    iget v1, p0, Lmobi/androidcloud/lib/audio/i;->gG:I

    aget-object v0, v0, v1

    .line 566
    iget-object v1, v0, Lmobi/androidcloud/lib/audio/i$b;->gP:[S

    .line 567
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gw:Lmobi/androidcloud/lib/audio/IlbcCodec;

    const/16 v2, 0x26

    invoke-static {p1, v1, v2}, Lmobi/androidcloud/lib/audio/IlbcCodec;->a([B[SI)V

    .line 568
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmobi/androidcloud/lib/audio/i$b;->isNew:Z

    .line 569
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gG:I

    .line 570
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/androidcloud/lib/audio/i;->gk:I

    .line 572
    iget v0, p0, Lmobi/androidcloud/lib/audio/i;->gk:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_4

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/androidcloud/lib/audio/i;->gl:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3e} :catch_3f

    goto :goto_4

    .line 578
    :catch_3f
    move-exception v0

    .line 579
    sget-object v1, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while decoding:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public g([BII)V
    .registers 5

    .prologue
    .line 586
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public h([B)I
    .registers 5

    .prologue
    const/16 v1, 0x26

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/i;->ig()[B

    move-result-object v2

    .line 261
    if-nez v2, :cond_a

    .line 270
    :goto_9
    return v0

    .line 267
    :cond_a
    invoke-static {v2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 270
    goto :goto_9
.end method

.method public hV()Z
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized hW()V
    .registers 3

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lmobi/androidcloud/lib/audio/i;->id()V

    .line 210
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/i;->ie()V

    .line 211
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gx:Lmobi/androidcloud/lib/audio/EchoCancel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/audio/EchoCancel;->setSpeakerMode(Z)V

    .line 212
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/i;->if()V

    .line 213
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/i;->ij()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 214
    monitor-exit p0

    return-void

    .line 207
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hX()V
    .registers 2

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/i;->ih()V

    .line 219
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/i;->ii()V

    .line 221
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gx:Lmobi/androidcloud/lib/audio/EchoCancel;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/EchoCancel;->close()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 223
    monitor-exit p0

    return-void

    .line 218
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i([B)I
    .registers 3

    .prologue
    .line 281
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method id()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 84
    move v1, v0

    :goto_3
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_20

    .line 86
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gE:[Lmobi/androidcloud/lib/audio/i$b;

    aget-object v2, v2, v1

    if-nez v2, :cond_19

    .line 88
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gE:[Lmobi/androidcloud/lib/audio/i$b;

    new-instance v3, Lmobi/androidcloud/lib/audio/i$b;

    invoke-direct {v3, p0, v4}, Lmobi/androidcloud/lib/audio/i$b;-><init>(Lmobi/androidcloud/lib/audio/i;Lmobi/androidcloud/lib/audio/b;)V

    aput-object v3, v2, v1

    .line 84
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 92
    :cond_19
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gE:[Lmobi/androidcloud/lib/audio/i$b;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Lmobi/androidcloud/lib/audio/i$b;->isNew:Z

    goto :goto_16

    :cond_20
    move v1, v0

    .line 96
    :goto_21
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_3f

    .line 98
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gF:[Lmobi/androidcloud/lib/audio/i$a;

    aget-object v2, v2, v1

    if-nez v2, :cond_3c

    .line 100
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gF:[Lmobi/androidcloud/lib/audio/i$a;

    new-instance v3, Lmobi/androidcloud/lib/audio/i$a;

    invoke-direct {v3, p0, v4}, Lmobi/androidcloud/lib/audio/i$a;-><init>(Lmobi/androidcloud/lib/audio/i;Lmobi/androidcloud/lib/audio/b;)V

    aput-object v3, v2, v1

    .line 101
    iget-object v2, p0, Lmobi/androidcloud/lib/audio/i;->gF:[Lmobi/androidcloud/lib/audio/i$a;

    aget-object v2, v2, v1

    iget-object v3, p0, Lmobi/androidcloud/lib/audio/i;->gu:[S

    iput-object v3, v2, Lmobi/androidcloud/lib/audio/i$a;->gP:[S

    .line 96
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 105
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lmobi/androidcloud/lib/audio/i;->gv:[S

    array-length v1, v1

    if-ge v0, v1, :cond_4d

    .line 107
    iget-object v1, p0, Lmobi/androidcloud/lib/audio/i;->gv:[S

    const/16 v2, 0x7fff

    aput-short v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 110
    :cond_4d
    return-void
.end method

.method public declared-synchronized o(Z)V
    .registers 3

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    sget-object v0, Lmobi/androidcloud/lib/audio/i;->TAG:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/i;->gx:Lmobi/androidcloud/lib/audio/EchoCancel;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/audio/EchoCancel;->setSpeakerMode(Z)V

    .line 158
    iget-boolean v0, p0, Lmobi/androidcloud/lib/audio/i;->gj:Z

    if-eqz v0, :cond_f

    .line 161
    invoke-direct {p0}, Lmobi/androidcloud/lib/audio/i;->ik()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 162
    :cond_f
    monitor-exit p0

    return-void

    .line 154
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
