.class public Lcom/iflytek/cloud/record/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/record/b$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/cloud/record/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field private i:I

.field private volatile j:J

.field private k:Landroid/os/MemoryFile;

.field private volatile l:J

.field private volatile m:I

.field private n:Lcom/iflytek/cloud/record/b$a;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:[B

.field private r:I

.field private s:I

.field private t:I

.field private final u:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .registers 13

    const/16 v6, 0x3e80

    const v5, 0x1d4c00

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/cloud/record/b;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/cloud/record/b;->b:I

    iput v6, p0, Lcom/iflytek/cloud/record/b;->c:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/iflytek/cloud/record/b;->d:I

    iput v5, p0, Lcom/iflytek/cloud/record/b;->e:I

    iput v5, p0, Lcom/iflytek/cloud/record/b;->f:I

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->g:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->h:Landroid/content/Context;

    iput v6, p0, Lcom/iflytek/cloud/record/b;->i:I

    iput-wide v2, p0, Lcom/iflytek/cloud/record/b;->j:J

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    iput-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    iput v4, p0, Lcom/iflytek/cloud/record/b;->m:I

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->q:[B

    iput v4, p0, Lcom/iflytek/cloud/record/b;->r:I

    iput v4, p0, Lcom/iflytek/cloud/record/b;->s:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/iflytek/cloud/record/b;->t:I

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/iflytek/cloud/record/b;->u:F

    iput-object p1, p0, Lcom/iflytek/cloud/record/b;->h:Landroid/content/Context;

    iput-wide v2, p0, Lcom/iflytek/cloud/record/b;->j:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->g:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    iput p2, p0, Lcom/iflytek/cloud/record/b;->i:I

    iput-object p4, p0, Lcom/iflytek/cloud/record/b;->p:Ljava/lang/String;

    iput p5, p0, Lcom/iflytek/cloud/record/b;->t:I

    iget v0, p0, Lcom/iflytek/cloud/record/b;->i:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p3

    add-int/2addr v0, v5

    iput v0, p0, Lcom/iflytek/cloud/record/b;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min audio seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max audio buf size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/record/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/iflytek/cloud/record/b;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Ljava/lang/String;

    new-instance v0, Landroid/os/MemoryFile;

    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->o:Ljava/lang/String;

    iget v2, p0, Lcom/iflytek/cloud/record/b;->f:I

    invoke-direct {v0, v1, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    invoke-virtual {v0, v4}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    :cond_21
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    long-to-int v1, v2

    array-length v2, p1

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->l:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/record/b;->l:J

    goto :goto_6
.end method

.method private b(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->q:[B

    if-nez v0, :cond_b

    mul-int/lit8 v0, p1, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->q:[B

    :cond_b
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->q:[B

    array-length v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    iget v1, p0, Lcom/iflytek/cloud/record/b;->m:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    long-to-int v1, v2

    if-ge v1, v0, :cond_4c

    move v0, v1

    move v2, v1

    :goto_19
    iget-object v3, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    iget-object v4, p0, Lcom/iflytek/cloud/record/b;->q:[B

    iget v5, p0, Lcom/iflytek/cloud/record/b;->m:I

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget v3, p0, Lcom/iflytek/cloud/record/b;->m:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/iflytek/cloud/record/b;->m:I

    iput v6, p0, Lcom/iflytek/cloud/record/b;->r:I

    iput v2, p0, Lcom/iflytek/cloud/record/b;->s:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAudio leave, dataSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", bufLen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    return-void

    :cond_4c
    move v2, v0

    goto :goto_19
.end method

.method private i()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/R;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tts.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/record/b;->i:I

    return v0
.end method

.method public a(Landroid/media/AudioTrack;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/iflytek/cloud/record/b;->r:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->s:I

    if-lt v0, v1, :cond_9

    invoke-direct {p0, p2}, Lcom/iflytek/cloud/record/b;->b(I)V

    :cond_9
    mul-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/iflytek/cloud/record/b;->s:I

    iget v2, p0, Lcom/iflytek/cloud/record/b;->r:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2d

    iget v0, p0, Lcom/iflytek/cloud/record/b;->s:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->r:I

    sub-int/2addr v0, v1

    :goto_17
    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->q:[B

    iget v2, p0, Lcom/iflytek/cloud/record/b;->r:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/media/AudioTrack;->write([BII)I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->r:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/cloud/record/b;->r:I

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/record/b;->b(Landroid/media/AudioTrack;I)V

    :cond_2c
    return-void

    :cond_2d
    move v0, p2

    goto :goto_17
.end method

.method public a(Ljava/util/ArrayList;III)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/record/b$a;

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    iget-wide v4, p0, Lcom/iflytek/cloud/record/b;->l:J

    move-object v1, p0

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/cloud/record/b$a;-><init>(Lcom/iflytek/cloud/record/b;JJII)V

    const/4 v1, 0x0

    move v2, v1

    :goto_38
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4b

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/iflytek/cloud/record/b;->a([B)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_38

    :cond_4b
    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    iput-wide v2, v0, Lcom/iflytek/cloud/record/b$a;->b:J

    int-to-long v2, p2

    iput-wide v2, p0, Lcom/iflytek/cloud/record/b;->j:J

    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->g:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_55
    iget-object v2, p0, Lcom/iflytek/cloud/record/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_80

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/record/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->b(Ljava/lang/String;)V

    return-void

    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0
.end method

.method public a(I)Z
    .registers 8

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->j:J

    long-to-float v1, v2

    const v2, 0x3f733333    # 0.95f

    iget v3, p0, Lcom/iflytek/cloud/record/b;->t:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    const-wide/16 v4, 0x20

    div-long/2addr v2, v4

    int-to-long v4, p1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_22

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/iflytek/cloud/record/b;->l:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_f

    :cond_22
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save to local: format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/record/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->p:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/iflytek/cloud/thirdparty/R;->a(Landroid/os/MemoryFile;JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->a()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/iflytek/cloud/thirdparty/R;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    :goto_44
    return v0

    :cond_45
    const/4 v0, 0x0

    goto :goto_44
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->length()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(Landroid/media/AudioTrack;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBuffer.writeTrack writeTrackBlankBlock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    add-int/lit16 v0, p2, 0x1000

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/media/AudioTrack;->write([BII)I

    return-void
.end method

.method public c()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/cloud/record/b;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/record/b$a;

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    :cond_18
    return-void
.end method

.method public d()I
    .registers 5

    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/iflytek/cloud/record/b;->m:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->s:I

    iget v2, p0, Lcom/iflytek/cloud/record/b;->r:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->j:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_9
.end method

.method public e()Lcom/iflytek/cloud/record/b$a;
    .registers 9

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    if-eqz v0, :cond_4f

    iget v0, p0, Lcom/iflytek/cloud/record/b;->m:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->s:I

    iget v2, p0, Lcom/iflytek/cloud/record/b;->r:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-long v2, v0

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    iget-wide v0, v0, Lcom/iflytek/cloud/record/b$a;->a:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_20

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    iget-wide v0, v0, Lcom/iflytek/cloud/record/b$a;->b:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_20

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    :goto_1f
    return-object v0

    :cond_20
    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->g:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_23
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/record/b$a;

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    iget-wide v6, v0, Lcom/iflytek/cloud/record/b$a;->a:J

    cmp-long v0, v2, v6

    if-ltz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    iget-wide v6, v0, Lcom/iflytek/cloud/record/b$a;->b:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_29

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->n:Lcom/iflytek/cloud/record/b$a;

    monitor-exit v1

    goto :goto_1f

    :catchall_4b
    move-exception v0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_23 .. :try_end_4d} :catchall_4b

    throw v0

    :cond_4e
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    :cond_4f
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public f()Z
    .registers 5

    iget v0, p0, Lcom/iflytek/cloud/record/b;->t:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/iflytek/cloud/record/b;->m:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    iget v0, p0, Lcom/iflytek/cloud/record/b;->r:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->s:I

    if-lt v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->h()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()Z
    .registers 5

    iget v0, p0, Lcom/iflytek/cloud/record/b;->m:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->l:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    iget v0, p0, Lcom/iflytek/cloud/record/b;->r:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->s:I

    if-ge v0, v1, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public h()V
    .registers 2

    const-string v0, "deleteFile"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->k:Landroid/os/MemoryFile;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    goto :goto_11
.end method
