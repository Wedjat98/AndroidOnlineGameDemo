.class public final Lmobi/androidcloud/lib/audio/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static gS:D

.field private static gT:D

.field private static gU:D

.field private static gV:D

.field private static gW:[D

.field private static gX:I


# instance fields
.field private frequency:I

.field private gA:I

.field private gB:I

.field private gC:I

.field private gI:[S

.field private gJ:[B

.field private gQ:[S

.field private gR:Lmobi/androidcloud/lib/audio/b;

.field private gh:I

.field private gi:I

.field private gy:Landroid/media/AudioRecord;

.field private gz:Landroid/media/AudioTrack;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 9
    new-instance v0, Ljava/lang/String;

    const-string v1, "TiKLCodec"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    .line 15
    new-array v0, v2, [I

    aput v4, v0, v3

    aput v5, v0, v4

    aput v6, v0, v5

    const/4 v1, 0x4

    aput v1, v0, v6

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 41
    const-wide/16 v0, 0x0

    sput-wide v0, Lmobi/androidcloud/lib/audio/j;->gS:D

    .line 42
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lmobi/androidcloud/lib/audio/j;->gT:D

    .line 44
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    sput-wide v0, Lmobi/androidcloud/lib/audio/j;->gU:D

    .line 45
    const-wide v0, 0x4051800000000000L    # 70.0

    sput-wide v0, Lmobi/androidcloud/lib/audio/j;->gV:D

    .line 48
    new-array v0, v2, [D

    sput-object v0, Lmobi/androidcloud/lib/audio/j;->gW:[D

    .line 49
    sput v3, Lmobi/androidcloud/lib/audio/j;->gX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xa0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x1f40

    iput v0, p0, Lmobi/androidcloud/lib/audio/j;->frequency:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lmobi/androidcloud/lib/audio/j;->gh:I

    .line 35
    new-array v0, v1, [S

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gI:[S

    .line 36
    new-array v0, v1, [S

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gQ:[S

    .line 37
    const/16 v0, 0x26

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gJ:[B

    .line 39
    new-instance v0, Lmobi/androidcloud/lib/audio/b;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/b;-><init>()V

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gR:Lmobi/androidcloud/lib/audio/b;

    .line 51
    return-void
.end method

.method private a(DDDDD)D
    .registers 16

    .prologue
    .line 55
    sub-double v0, p1, p3

    sub-double v2, p5, p3

    div-double/2addr v0, v2

    sub-double v2, p9, p7

    mul-double/2addr v0, v2

    add-double/2addr v0, p7

    return-wide v0
.end method

.method private d([S)D
    .registers 16

    .prologue
    .line 60
    const-wide/16 v2, 0x0

    .line 62
    const/4 v0, 0x0

    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 63
    aget-short v1, p1, v0

    aget-short v4, p1, v0

    mul-int/2addr v1, v4

    int-to-double v4, v1

    add-double/2addr v2, v4

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 66
    :cond_10
    array-length v0, p1

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 70
    :cond_24
    sget-object v4, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Signal rms:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sqr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-wide/16 v0, 0x0

    .line 126
    :cond_47
    :goto_47
    return-wide v0

    .line 74
    :cond_48
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double v12, v4, v0

    .line 76
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 78
    :cond_5c
    sget-object v0, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Signal rmdB:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sqr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-wide/16 v0, 0x0

    goto :goto_47

    .line 82
    :cond_80
    sget v0, Lmobi/androidcloud/lib/audio/j;->gX:I

    add-int/lit8 v0, v0, 0x1

    .line 84
    sput v0, Lmobi/androidcloud/lib/audio/j;->gX:I

    rem-int/lit8 v0, v0, 0x5

    .line 86
    sget-object v1, Lmobi/androidcloud/lib/audio/j;->gW:[D

    aput-wide v12, v1, v0

    .line 88
    const-wide/16 v2, 0x0

    .line 91
    const/4 v0, 0x0

    :goto_8f
    const/4 v1, 0x5

    if-ge v0, v1, :cond_9a

    .line 92
    sget-object v1, Lmobi/androidcloud/lib/audio/j;->gW:[D

    aget-wide v4, v1, v0

    add-double/2addr v2, v4

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 96
    :cond_9a
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    div-double/2addr v2, v0

    .line 98
    iget v0, p0, Lmobi/androidcloud/lib/audio/j;->gi:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_c9

    .line 102
    sget-wide v0, Lmobi/androidcloud/lib/audio/j;->gU:D

    cmpg-double v0, v2, v0

    if-gez v0, :cond_ab

    .line 103
    sput-wide v2, Lmobi/androidcloud/lib/audio/j;->gU:D

    .line 104
    :cond_ab
    sget-wide v0, Lmobi/androidcloud/lib/audio/j;->gV:D

    cmpl-double v0, v2, v0

    if-lez v0, :cond_b3

    .line 105
    sput-wide v2, Lmobi/androidcloud/lib/audio/j;->gV:D

    .line 107
    :cond_b3
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    sget-wide v6, Lmobi/androidcloud/lib/audio/j;->gU:D

    const-wide v8, 0x3fc3333333333333L    # 0.15

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sput-wide v0, Lmobi/androidcloud/lib/audio/j;->gU:D

    .line 112
    :cond_c9
    sget-wide v4, Lmobi/androidcloud/lib/audio/j;->gU:D

    sget-wide v6, Lmobi/androidcloud/lib/audio/j;->gV:D

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lmobi/androidcloud/lib/audio/j;->a(DDDDD)D

    move-result-wide v0

    .line 115
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_de

    .line 116
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 118
    :cond_de
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_e6

    .line 119
    const-wide/16 v0, 0x0

    .line 121
    :cond_e6
    iget v4, p0, Lmobi/androidcloud/lib/audio/j;->gi:I

    rem-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_47

    .line 122
    sget-object v4, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\tRMS:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\trmsAvg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tMin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lmobi/androidcloud/lib/audio/j;->gU:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tMax:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lmobi/androidcloud/lib/audio/j;->gV:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tScaled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_47
.end method

.method public static d(D)V
    .registers 2

    .prologue
    .line 204
    sput-wide p0, Lmobi/androidcloud/lib/audio/j;->gT:D

    .line 205
    return-void
.end method

.method public static in()D
    .registers 2

    .prologue
    .line 198
    sget-wide v0, Lmobi/androidcloud/lib/audio/j;->gS:D

    return-wide v0
.end method


# virtual methods
.method a([SF)V
    .registers 5

    .prologue
    .line 134
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa0

    if-ge v0, v1, :cond_10

    .line 136
    aget-short v1, p1, v0

    int-to-float v1, v1

    .line 137
    mul-float/2addr v1, p2

    .line 138
    float-to-int v1, v1

    int-to-short v1, v1

    aput-short v1, p1, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_10
    return-void
.end method

.method public if()V
    .registers 8

    .prologue
    const/16 v3, 0x10

    .line 144
    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 147
    iget v0, p0, Lmobi/androidcloud/lib/audio/j;->frequency:I

    iget v1, p0, Lmobi/androidcloud/lib/audio/j;->gh:I

    invoke-static {v0, v3, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    .line 151
    mul-int/lit8 v0, v6, 0x14

    iput v0, p0, Lmobi/androidcloud/lib/audio/j;->gC:I

    .line 154
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lmobi/androidcloud/lib/audio/j;->frequency:I

    iget v4, p0, Lmobi/androidcloud/lib/audio/j;->gh:I

    iget v5, p0, Lmobi/androidcloud/lib/audio/j;->gC:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gy:Landroid/media/AudioRecord;

    .line 157
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gy:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/audio/j;->gi:I

    .line 160
    sget-object v0, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TiKL Recording Min Buffer in Bytes:="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Our Buffer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmobi/androidcloud/lib/audio/j;->gC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    return-void
.end method

.method public ih()V
    .registers 4

    .prologue
    .line 208
    sget-object v0, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSM Audio recorder Stopped Frames Recorded = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmobi/androidcloud/lib/audio/j;->gi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    :try_start_e
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gy:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 213
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gy:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gy:Landroid/media/AudioRecord;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    .line 219
    :goto_1b
    return-void

    .line 215
    :catch_1c
    move-exception v0

    .line 216
    sget-object v1, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while closing stoping recorder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b
.end method

.method public ii()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    if-nez v0, :cond_8

    .line 225
    sget-object v0, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    .line 243
    :goto_7
    return-void

    .line 234
    :cond_8
    :try_start_8
    sget-object v0, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_17
    .catchall {:try_start_8 .. :try_end_f} :catchall_30

    .line 241
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 242
    iput-object v3, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    goto :goto_7

    .line 237
    :catch_17
    move-exception v0

    .line 238
    :try_start_18
    sget-object v1, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while stopping player..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_30

    .line 241
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 242
    iput-object v3, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    goto :goto_7

    .line 241
    :catchall_30
    move-exception v0

    iget-object v1, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 242
    iput-object v3, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    throw v0
.end method

.method public ij()V
    .registers 9

    .prologue
    const/4 v3, 0x4

    .line 247
    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 249
    iget v0, p0, Lmobi/androidcloud/lib/audio/j;->frequency:I

    iget v1, p0, Lmobi/androidcloud/lib/audio/j;->gh:I

    invoke-static {v0, v3, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 262
    const/16 v0, 0x1f40

    iput v0, p0, Lmobi/androidcloud/lib/audio/j;->gB:I

    .line 264
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    iget v2, p0, Lmobi/androidcloud/lib/audio/j;->frequency:I

    iget v4, p0, Lmobi/androidcloud/lib/audio/j;->gh:I

    iget v5, p0, Lmobi/androidcloud/lib/audio/j;->gB:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    .line 269
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 271
    sget-object v0, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Speex Player Started MinBuf in Bytes = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ours:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmobi/androidcloud/lib/audio/j;->gB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    return-void
.end method

.method public declared-synchronized im()Lmobi/androidcloud/lib/audio/b;
    .registers 6

    .prologue
    const/16 v4, 0xa0

    .line 169
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gy:Landroid/media/AudioRecord;

    iget-object v1, p0, Lmobi/androidcloud/lib/audio/j;->gI:[S

    const/4 v2, 0x0

    const/16 v3, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 172
    iget v1, p0, Lmobi/androidcloud/lib/audio/j;->gi:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmobi/androidcloud/lib/audio/j;->gi:I

    .line 175
    if-ge v0, v4, :cond_1c

    .line 176
    sget-object v0, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gR:Lmobi/androidcloud/lib/audio/b;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_41

    .line 192
    :goto_1a
    monitor-exit p0

    return-object v0

    .line 183
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gR:Lmobi/androidcloud/lib/audio/b;

    iget-object v1, p0, Lmobi/androidcloud/lib/audio/j;->gI:[S

    iput-object v1, v0, Lmobi/androidcloud/lib/audio/b;->ge:[S

    .line 185
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gI:[S

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/audio/j;->d([S)D

    move-result-wide v0

    sput-wide v0, Lmobi/androidcloud/lib/audio/j;->gS:D

    .line 186
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gR:Lmobi/androidcloud/lib/audio/b;

    sget-wide v0, Lmobi/androidcloud/lib/audio/j;->gS:D

    .line 188
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gI:[S

    const/4 v1, 0x0

    iget-object v2, p0, Lmobi/androidcloud/lib/audio/j;->gJ:[B

    const/16 v3, 0xa0

    invoke-static {v0, v1, v2, v3}, Lmobi/androidcloud/lib/audio/IlbcCodec;->a([SI[BI)V

    .line 189
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gR:Lmobi/androidcloud/lib/audio/b;

    iget-object v1, p0, Lmobi/androidcloud/lib/audio/j;->gJ:[B

    iput-object v1, v0, Lmobi/androidcloud/lib/audio/b;->gd:[B

    .line 192
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gR:Lmobi/androidcloud/lib/audio/b;
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_41

    goto :goto_1a

    .line 169
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j([B)V
    .registers 6

    .prologue
    const/16 v2, 0x26

    .line 298
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/j;->gQ:[S

    .line 300
    array-length v1, p1

    if-eq v1, v2, :cond_17

    .line 301
    sget-object v0, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input Speex Frame Incorrect Len:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_46

    .line 336
    :goto_15
    monitor-exit p0

    return-void

    .line 316
    :cond_17
    :try_start_17
    iget-object v1, p0, Lmobi/androidcloud/lib/audio/j;->gQ:[S

    const/16 v2, 0x26

    invoke-static {p1, v1, v2}, Lmobi/androidcloud/lib/audio/IlbcCodec;->a([B[SI)V

    .line 319
    iget-object v1, p0, Lmobi/androidcloud/lib/audio/j;->gQ:[S

    sget-wide v2, Lmobi/androidcloud/lib/audio/j;->gT:D

    double-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lmobi/androidcloud/lib/audio/j;->a([SF)V

    .line 326
    iget v1, p0, Lmobi/androidcloud/lib/audio/j;->gA:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmobi/androidcloud/lib/audio/j;->gA:I

    .line 330
    iget-object v1, p0, Lmobi/androidcloud/lib/audio/j;->gz:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioTrack;->write([SII)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_33} :catch_34
    .catchall {:try_start_17 .. :try_end_33} :catchall_46

    goto :goto_15

    .line 332
    :catch_34
    move-exception v0

    .line 333
    :try_start_35
    sget-object v1, Lmobi/androidcloud/lib/audio/j;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while decoding:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_46

    goto :goto_15

    .line 298
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method
