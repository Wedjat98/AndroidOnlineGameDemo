.class public final Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .registers 8
    .param p1, "this$0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;
    .param p6, "lengths"    # [J

    .prologue
    .line 696
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 698
    iput-wide p3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 699
    iput-object p5, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 700
    iput-object p6, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->lengths:[J

    .line 701
    return-void
.end method

.method synthetic constructor <init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;)V
    .registers 9
    .param p1, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;

    .prologue
    .line 690
    invoke-direct/range {p0 .. p6}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;-><init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 734
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_e

    aget-object v0, v2, v1

    .line 735
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 737
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_e
    return-void
.end method

.method public edit()Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->sequenceNumber:J

    # invokes: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$1600(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Ljava/lang/String;J)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 716
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 730
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    # invokes: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
