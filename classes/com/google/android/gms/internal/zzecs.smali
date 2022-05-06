.class public final Lcom/google/android/gms/internal/zzecs;
.super Ljava/io/Reader;


# instance fields
.field private closed:Z

.field private zzmrk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzmrl:I

.field private zzmrm:I

.field private zzmrn:I

.field private zzmro:I

.field private zzmrp:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrk:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzecs;->closed:Z

    iget v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    iput v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrn:I

    iget v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrm:I

    iput v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmro:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzecs;->zzmrp:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrk:Ljava/util/List;

    return-void
.end method

.method private final zzbu(J)J
    .registers 12

    const-wide/16 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/zzecs;->zzmrm:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzecs;->zzmrk:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    cmp-long v2, v0, p1

    if-gez v2, :cond_30

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvn()I

    move-result v2

    sub-long v4, p1, v0

    int-to-long v6, v2

    cmp-long v3, v4, v6

    if-gez v3, :cond_24

    iget v2, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    int-to-long v2, v2

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    add-long/2addr v0, v4

    goto :goto_2

    :cond_24
    int-to-long v2, v2

    add-long/2addr v0, v2

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    iget v2, p0, Lcom/google/android/gms/internal/zzecs;->zzmrm:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzecs;->zzmrm:I

    goto :goto_2

    :cond_30
    return-wide v0
.end method

.method private final zzbvm()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrm:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecs;->zzmrk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrk:Ljava/util/List;

    iget v1, p0, Lcom/google/android/gms/internal/zzecs;->zzmrm:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private final zzbvn()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method private final zzbvo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecs;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrp:Z

    if-nez v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader needs to be frozen before read operations can be called"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvo()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecs;->closed:Z

    return-void
.end method

.method public final mark(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvo()V

    iget v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    iput v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrn:I

    iget v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrm:I

    iput v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmro:I

    return-void
.end method

.method public final markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvo()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, -0x1

    :goto_a
    return v0

    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzecs;->zzbu(J)J

    goto :goto_a
.end method

.method public final read(Ljava/nio/CharBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvo()V

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvm()Ljava/lang/String;

    move-result-object v0

    :goto_c
    if-lez v2, :cond_38

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    sub-int/2addr v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrk:Ljava/util/List;

    iget v4, p0, Lcom/google/android/gms/internal/zzecs;->zzmrm:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    iget v5, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    add-int/2addr v5, v3

    invoke-virtual {p1, v0, v4, v5}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    sub-int/2addr v2, v3

    add-int/2addr v1, v3

    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/zzecs;->zzbu(J)J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvm()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_38
    if-gtz v1, :cond_3c

    if-eqz v0, :cond_3e

    :cond_3c
    move v0, v1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, -0x1

    goto :goto_3d
.end method

.method public final read([CII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvo()V

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvm()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    :goto_b
    if-eqz v1, :cond_31

    if-ge v0, p3, :cond_31

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvn()I

    move-result v2

    sub-int v3, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    iget v4, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    add-int/2addr v4, v2

    add-int v5, p2, v0

    invoke-virtual {v1, v3, v4, p1, v5}, Ljava/lang/String;->getChars(II[CI)V

    add-int v1, v0, v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzecs;->zzbu(J)J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvm()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_b

    :cond_31
    if-gtz v0, :cond_35

    if-eqz v1, :cond_36

    :cond_35
    :goto_35
    return v0

    :cond_36
    const/4 v0, -0x1

    goto :goto_35
.end method

.method public final ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvo()V

    const/4 v0, 0x1

    return v0
.end method

.method public final reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrn:I

    iput v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrl:I

    iget v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmro:I

    iput v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrm:I

    return-void
.end method

.method public final skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzecs;->zzbvo()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzecs;->zzbu(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbvl()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrp:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to freeze frozen StringListReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrp:Z

    return-void
.end method

.method public final zzpt(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrp:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add string after reading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecs;->zzmrk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method
