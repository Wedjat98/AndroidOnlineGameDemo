.class public Lorg/apache/james/mime4j/storage/MultiReferenceStorage;
.super Ljava/lang/Object;
.source "MultiReferenceStorage.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# instance fields
.field private referenceCounter:I

.field private final storage:Lorg/apache/james/mime4j/storage/Storage;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/Storage;)V
    .registers 3
    .param p1, "storage"    # Lorg/apache/james/mime4j/storage/Storage;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_b

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :cond_b
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->storage:Lorg/apache/james/mime4j/storage/Storage;

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    .line 66
    return-void
.end method

.method private declared-synchronized decrementCounter()Z
    .registers 3

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    if-nez v0, :cond_10

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 126
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_10
    :try_start_10
    iget v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_19
    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private declared-synchronized incrementCounter()V
    .registers 3

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    if-nez v0, :cond_10

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 112
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 115
    :cond_10
    :try_start_10
    iget v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    .line 116
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addReference()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->incrementCounter()V

    .line 77
    return-void
.end method

.method public delete()V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->decrementCounter()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 92
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->storage:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->delete()V

    .line 94
    :cond_b
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->storage:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
