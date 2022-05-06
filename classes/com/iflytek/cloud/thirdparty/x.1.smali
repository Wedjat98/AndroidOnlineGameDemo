.class public Lcom/iflytek/cloud/thirdparty/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/x$a;,
        Lcom/iflytek/cloud/thirdparty/x$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/iflytek/cloud/thirdparty/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/iflytek/cloud/thirdparty/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z

.field private k:J

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JIJZZ)V
    .registers 12

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    const/16 v0, 0x200

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    const-wide/16 v0, 0x1400

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->d:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Z

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->k:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    iput-wide p4, p0, Lcom/iflytek/cloud/thirdparty/x;->d:J

    iput p3, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    iput-boolean p6, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    iput-boolean p7, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Z

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->k:J

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-nez v0, :cond_4f

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/x;->l()V

    :cond_4f
    return-void
.end method

.method private i()Lcom/iflytek/cloud/thirdparty/x$a;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    :goto_11
    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/x;->j()Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_1d
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-nez v2, :cond_62

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    new-array v0, v0, [B

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    :goto_30
    new-instance v2, Lcom/iflytek/cloud/thirdparty/x$a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/iflytek/cloud/thirdparty/x$a;-><init>([BLjava/lang/Integer;)V

    move-object v0, v2

    :cond_3a
    return-object v0

    :cond_3b
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current buffer len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", has match max len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_30

    :cond_66
    move-object v0, v1

    goto :goto_11
.end method

.method private j()Z
    .registers 5

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->k:J

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private k()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    if-eqz v0, :cond_39

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/x;->a()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    sub-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_39

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->a()V

    :cond_32
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    :cond_39
    return-void
.end method

.method private l()V
    .registers 7

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_34

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->d:J

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_34

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    new-array v2, v2, [B

    new-instance v3, Lcom/iflytek/cloud/thirdparty/x$a;

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/iflytek/cloud/thirdparty/x$a;-><init>([BLjava/lang/Integer;)V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    iget v4, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_34
    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    monitor-exit v1

    return-wide v2

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(J)V
    .registers 10

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    mul-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->k:J

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/x$a;)V
    .registers 8

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_11

    :try_start_5
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/x$a;->a()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_11
    monitor-exit v1

    return-void

    :cond_13
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_11

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    goto :goto_11

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public a([BII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v3, 0x0

    add-int v4, p2, p3

    if-eqz p1, :cond_10

    array-length v0, p1

    if-lt v0, v4, :cond_10

    if-ltz p3, :cond_10

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-eqz v0, :cond_16

    if-lez p2, :cond_16

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_16
    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v5

    const-wide/16 v0, 0x0

    :try_start_1b
    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_f6

    if-lez p3, :cond_f6

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->j:Z

    if-nez v0, :cond_74

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    sub-long/2addr v0, v6

    int-to-long v6, p3

    add-long/2addr v0, v6

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_74

    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", has over max len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_71
    move-exception v0

    monitor-exit v5
    :try_end_73
    .catchall {:try_start_1b .. :try_end_73} :catchall_71

    throw v0

    :cond_74
    const/4 v1, 0x0

    :try_start_75
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    move-object v1, v0

    :cond_82
    if-eqz v1, :cond_97

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_d4

    :cond_97
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/x;->i()Lcom/iflytek/cloud/thirdparty/x$a;

    move-result-object v0

    move-object v1, v0

    move v2, v3

    :cond_9d
    :goto_9d
    if-ge p2, v4, :cond_f6

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-eqz v0, :cond_e0

    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/thirdparty/x$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p3

    :goto_a7
    add-int/2addr p2, v0

    add-int v6, v2, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/iflytek/cloud/thirdparty/x$a;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_c8
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/x;->k()V

    if-ge p2, v4, :cond_9d

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/x;->i()Lcom/iflytek/cloud/thirdparty/x$a;

    move-result-object v0

    move-object v1, v0

    move v2, v3

    goto :goto_9d

    :cond_d4
    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    goto :goto_9d

    :cond_e0
    sub-int v6, v4, p2

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, p2, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a7

    :cond_f6
    monitor-exit v5
    :try_end_f7
    .catchall {:try_start_75 .. :try_end_f7} :catchall_71

    return-void
.end method

.method public b()J
    .registers 7

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    sub-long/2addr v2, v4

    monitor-exit v1

    return-wide v2

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public c()I
    .registers 3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public d()V
    .registers 5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->h:J

    :goto_b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->a()V

    :cond_22
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    return-void
.end method

.method public e()Z
    .registers 3

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public f()Lcom/iflytek/cloud/thirdparty/x$a;
    .registers 9

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/x$a;

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->g:J

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/x;->i:Z

    if-nez v1, :cond_3b

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/x$a;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    :cond_3b
    monitor-exit v2

    return-object v0

    :catchall_3d
    move-exception v0

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public g()J
    .registers 5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    mul-int/2addr v0, v2

    int-to-long v2, v0

    monitor-exit v1

    return-wide v2

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public h()V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/x;->l:Ljava/lang/Object;

    monitor-enter v1

    :goto_4
    :try_start_4
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->d:J

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_23

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/x;->c:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/x;->f:J

    const/4 v0, 0x1

    goto :goto_4

    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2a

    if-eqz v0, :cond_29

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_29
    return-void

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method
