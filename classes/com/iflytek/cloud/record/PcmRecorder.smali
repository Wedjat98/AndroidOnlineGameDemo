.class public Lcom/iflytek/cloud/record/PcmRecorder;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;
    }
.end annotation


# static fields
.field public static final RATE16K:I = 0x3e80

.field public static final READ_INTERVAL40MS:I = 0x28


# instance fields
.field private final a:S

.field private b:[B

.field private c:Landroid/media/AudioRecord;

.field private d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

.field private e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

.field private volatile f:Z

.field private g:D

.field private h:D

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 10

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x10

    iput-short v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->a:S

    iput-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    iput-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    iput-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    iput-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->f:Z

    iput-wide v4, p0, Lcom/iflytek/cloud/record/PcmRecorder;->g:D

    iput-wide v4, p0, Lcom/iflytek/cloud/record/PcmRecorder;->h:D

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->i:I

    iput v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->j:I

    iput v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->k:I

    iput p3, p0, Lcom/iflytek/cloud/record/PcmRecorder;->l:I

    iput p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->i:I

    iput p2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->j:I

    iget v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->j:I

    if-lt v0, v2, :cond_33

    iget v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->j:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_35

    :cond_33
    iput v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->j:I

    :cond_35
    const/16 v0, 0xa

    iput v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->k:I

    return-void
.end method

.method private a([BI)D
    .registers 16

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_7

    if-gtz p2, :cond_8

    :cond_7
    :goto_7
    return-wide v0

    :cond_8
    array-length v6, p1

    move v3, v2

    move-wide v4, v0

    :goto_b
    if-ge v3, v6, :cond_14

    aget-byte v7, p1, v3

    int-to-double v8, v7

    add-double/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_14
    array-length v3, p1

    int-to-double v6, v3

    div-double/2addr v4, v6

    array-length v6, p1

    move v12, v2

    move-wide v2, v0

    move v0, v12

    :goto_1b
    if-ge v0, v6, :cond_2b

    aget-byte v1, p1, v0

    int-to-double v8, v1

    sub-double/2addr v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2b
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_7
.end method

.method private a()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-nez v0, :cond_b

    :cond_9
    move v0, v1

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    iget-object v3, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-lez v0, :cond_24

    iget-object v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    iget-object v3, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    invoke-interface {v2, v3, v1, v0}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordBuffer([BII)V

    goto :goto_a

    :cond_24
    if-gez v0, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record read data error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method

.method private b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    if-eqz v0, :cond_23

    const-string v0, "release record begin"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordReleased()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    :cond_1e
    const-string v0, "release record over"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25
    .catchall {:try_start_1 .. :try_end_23} :catchall_2e

    :cond_23
    :goto_23
    :try_start_23
    monitor-exit p0

    return-void

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_23

    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_2e

    throw v0
.end method


# virtual methods
.method protected a(SII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->b()V

    :cond_9
    const/16 v7, 0x10

    mul-int v0, p2, p3

    div-int/lit16 v8, v0, 0x3e8

    mul-int/lit8 v0, v8, 0x4

    mul-int/2addr v0, v7

    mul-int/2addr v0, p1

    div-int/lit8 v5, v0, 0x8

    if-ne p1, v9, :cond_a2

    move v3, v4

    :goto_18
    invoke-static {p2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    if-ge v5, v6, :cond_1f

    move v5, v6

    :cond_1f
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->l:I

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    mul-int v0, v8, p1

    mul-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nSampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nFramePeriod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBufferSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nMinBufferSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nActualBufferSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v9, :cond_a5

    const-string v0, "create AudioRecord error"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_a2
    const/4 v3, 0x3

    goto/16 :goto_18

    :cond_a5
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public run()V
    .registers 15

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x28

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v8, 0x4e26

    move v2, v1

    :goto_9
    :try_start_9
    iget-boolean v3, p0, Lcom/iflytek/cloud/record/PcmRecorder;->f:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_b} :catch_3d

    if-nez v3, :cond_15

    const/4 v3, 0x1

    :try_start_e
    iget v4, p0, Lcom/iflytek/cloud/record/PcmRecorder;->i:I

    iget v5, p0, Lcom/iflytek/cloud/record/PcmRecorder;->j:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/iflytek/cloud/record/PcmRecorder;->a(SII)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_53

    :cond_15
    move v2, v1

    :goto_16
    :try_start_16
    iget-boolean v3, p0, Lcom/iflytek/cloud/record/PcmRecorder;->f:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_18} :catch_3d

    if-nez v3, :cond_70

    :try_start_1a
    iget-object v3, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v3, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_70

    new-instance v3, Lcom/iflytek/cloud/SpeechError;

    const/16 v4, 0x4e26

    invoke-direct {v3, v4}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_30} :catch_30

    :catch_30
    move-exception v3

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_68

    const-wide/16 v4, 0x28

    :try_start_39
    invoke-static {v4, v5}, Lcom/iflytek/cloud/record/PcmRecorder;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_16

    :catch_3d
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v8}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_4f
    invoke-direct {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->b()V

    return-void

    :catch_53
    move-exception v3

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_60

    const-wide/16 v4, 0x28

    :try_start_5c
    invoke-static {v4, v5}, Lcom/iflytek/cloud/record/PcmRecorder;->sleep(J)V

    goto :goto_9

    :cond_60
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_68
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_70
    iget-object v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordStarted(Z)V

    :cond_7a
    const-wide/16 v2, 0x0

    :goto_7c
    iget-boolean v4, p0, Lcom/iflytek/cloud/record/PcmRecorder;->f:Z

    if-nez v4, :cond_4f

    invoke-direct {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->a()I

    move-result v4

    add-long/2addr v2, v10

    if-eqz v0, :cond_bb

    iget-wide v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->g:D

    int-to-double v4, v4

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/iflytek/cloud/record/PcmRecorder;->g:D

    iget-wide v4, p0, Lcom/iflytek/cloud/record/PcmRecorder;->h:D

    iget-object v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    iget-object v7, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    array-length v7, v7

    invoke-direct {p0, v6, v7}, Lcom/iflytek/cloud/record/PcmRecorder;->a([BI)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/iflytek/cloud/record/PcmRecorder;->h:D

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-ltz v4, :cond_bb

    iget-wide v4, p0, Lcom/iflytek/cloud/record/PcmRecorder;->g:D

    cmpl-double v0, v4, v12

    if-eqz v0, :cond_ad

    iget-wide v4, p0, Lcom/iflytek/cloud/record/PcmRecorder;->h:D

    cmpl-double v0, v4, v12

    if-nez v0, :cond_ba

    :cond_ad
    const-string v0, "cannot get record permission, get invalid audio data."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_ba
    move v0, v1

    :cond_bb
    iget v4, p0, Lcom/iflytek/cloud/record/PcmRecorder;->k:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/iflytek/cloud/record/PcmRecorder;->sleep(J)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_c1} :catch_3d

    goto :goto_7c
.end method

.method public startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/record/PcmRecorder;->setPriority(I)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->start()V

    return-void
.end method

.method public stopRecord(Z)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->f:Z

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    :cond_c
    iput-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz p1, :cond_4a

    monitor-enter p0

    :try_start_11
    const-string v0, "stopRecord...release"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    if-eqz v0, :cond_49

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v2, v0, :cond_3d

    const-string v0, "stopRecord releaseRecording ing..."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const-string v0, "stopRecord releaseRecording end..."

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    :cond_3d
    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordReleased()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_49} :catch_50
    .catchall {:try_start_11 .. :try_end_49} :catchall_59

    :cond_49
    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_59

    :cond_4a
    const-string v0, "stop record"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :catch_50
    move-exception v0

    :try_start_51
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_49

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_59

    throw v0
.end method
