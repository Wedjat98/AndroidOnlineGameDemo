.class public Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;
.super Lorg/apache/james/mime4j/storage/AbstractStorageProvider;
.source "ThresholdStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;,
        Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;
    }
.end annotation


# instance fields
.field private final backend:Lorg/apache/james/mime4j/storage/StorageProvider;

.field private final thresholdSize:I


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .registers 3
    .param p1, "backend"    # Lorg/apache/james/mime4j/storage/StorageProvider;

    .prologue
    .line 52
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;-><init>(Lorg/apache/james/mime4j/storage/StorageProvider;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;I)V
    .registers 4
    .param p1, "backend"    # Lorg/apache/james/mime4j/storage/StorageProvider;
    .param p2, "thresholdSize"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;-><init>()V

    .line 68
    if-nez p1, :cond_b

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_b
    const/4 v0, 0x1

    if-ge p2, v0, :cond_14

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 73
    :cond_14
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->backend:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 74
    iput p2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->thresholdSize:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)I
    .registers 2
    .param p0, "x0"    # Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    .prologue
    .line 42
    iget v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->thresholdSize:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)Lorg/apache/james/mime4j/storage/StorageProvider;
    .registers 2
    .param p0, "x0"    # Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->backend:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-object v0
.end method


# virtual methods
.method public createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .registers 2

    .prologue
    .line 78
    new-instance v0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;-><init>(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)V

    return-object v0
.end method
