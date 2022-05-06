.class public final Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;,
        Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;,
        Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final STRING_KEY_PATTERN:Ljava/lang/String; = "[a-z0-9_-]{1,120}"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 740
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$2;

    invoke-direct {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 14
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-wide v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size:J

    .line 152
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 161
    iput-wide v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->nextSequenceNumber:J

    .line 166
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 168
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;-><init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 185
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->directory:Ljava/io/File;

    .line 186
    iput p2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->appVersion:I

    .line 187
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFile:Ljava/io/File;

    .line 188
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 189
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 190
    iput p3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    .line 191
    iput-wide p4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->maxSize:J

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)Ljava/io/Writer;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Ljava/lang/String;J)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    .registers 6
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .prologue
    .line 89
    iget v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)Z
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/io/OutputStream;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .param p1, "x1"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->completeEdit(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;I)I
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_c

    .line 628
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_c
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)V
    .registers 15
    .param p1, "editor"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    monitor-enter p0

    :try_start_1
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->access$1400(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    move-result-object v2

    .line 522
    .local v2, "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$700(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_14

    .line 523
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 521
    .end local v2    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    :catchall_11
    move-exception v8

    monitor-exit p0

    throw v8

    .line 527
    .restart local v2    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    :cond_14
    if-eqz p2, :cond_57

    :try_start_16
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$600(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_57

    .line 528
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    iget v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_57

    .line 529
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->access$1500(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_45

    .line 530
    invoke-virtual {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->abort()V

    .line 531
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Newly created entry didn\'t create value for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 533
    :cond_45
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_54

    .line 534
    invoke-virtual {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->abort()V
    :try_end_52
    .catchall {:try_start_16 .. :try_end_52} :catchall_11

    .line 573
    :cond_52
    :goto_52
    monitor-exit p0

    return-void

    .line 528
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 540
    .end local v3    # "i":I
    :cond_57
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_58
    :try_start_58
    iget v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_8c

    .line 541
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 542
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_88

    .line 543
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_85

    .line 544
    invoke-virtual {v2, v3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 545
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 546
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1000(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 547
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 548
    .local v4, "newLength":J
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1000(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 549
    iget-wide v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size:J

    .line 540
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_85
    :goto_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 552
    :cond_88
    invoke-static {v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_85

    .line 556
    .end local v1    # "dirty":Ljava/io/File;
    :cond_8c
    iget v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I

    .line 557
    const/4 v8, 0x0

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v2, v8}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$702(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    .line 558
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$600(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_f3

    .line 559
    const/4 v8, 0x1

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$602(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;Z)Z

    .line 560
    iget-object v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1100(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 561
    if-eqz p2, :cond_d7

    .line 562
    iget-wide v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->nextSequenceNumber:J

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2, v8, v9}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1202(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;J)J

    .line 568
    :cond_d7
    :goto_d7
    iget-object v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 570
    iget-wide v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_ea

    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 571
    :cond_ea
    iget-object v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_52

    .line 565
    :cond_f3
    iget-object v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1100(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget-object v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1100(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_11e
    .catchall {:try_start_58 .. :try_end_11e} :catchall_11

    goto :goto_d7
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_12

    .line 396
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 398
    :cond_12
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 464
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->checkNotClosed()V

    .line 465
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    .line 467
    .local v1, "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_22

    if-eqz v1, :cond_20

    .line 468
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1200(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)J
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_5c

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_22

    .line 484
    :cond_20
    :goto_20
    monitor-exit p0

    return-object v0

    .line 471
    :cond_22
    if-nez v1, :cond_5f

    .line 472
    :try_start_24
    new-instance v1, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;-><init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Ljava/lang/String;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;)V

    .line 473
    .restart local v1    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_2f
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;-><init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;)V

    .line 479
    .local v0, "editor":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$702(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    .line 482
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_5b
    .catchall {:try_start_24 .. :try_end_5b} :catchall_5c

    goto :goto_20

    .line 464
    .end local v0    # "editor":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    :catchall_5c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 474
    .restart local v1    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    :cond_5f
    :try_start_5f
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$700(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_5c

    move-result-object v2

    if-eqz v2, :cond_2f

    goto :goto_20
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .registers 4

    .prologue
    .line 580
    const/16 v0, 0x7d0

    .line 581
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_14

    iget v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 582
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_14

    const/4 v1, 0x1

    .line 581
    :goto_13
    return v1

    .line 582
    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .registers 16
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_e

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_e
    if-gtz p2, :cond_18

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_18
    new-instance v6, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v6, "backupFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 215
    new-instance v8, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v8, "journalFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 218
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 225
    .end local v8    # "journalFile":Ljava/io/File;
    :cond_35
    :goto_35
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 226
    .local v0, "cache":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    iget-object v1, v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 228
    :try_start_46
    invoke-direct {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->readJournal()V

    .line 229
    invoke-direct {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->processJournal()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4c} :catch_53

    move-object v7, v0

    .line 246
    .end local v0    # "cache":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .local v7, "cache":Ljava/lang/Object;
    :goto_4d
    return-object v7

    .line 220
    .end local v7    # "cache":Ljava/lang/Object;
    .restart local v8    # "journalFile":Ljava/io/File;
    :cond_4e
    const/4 v1, 0x0

    invoke-static {v6, v8, v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_35

    .line 231
    .end local v8    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    :catch_53
    move-exception v9

    .line 232
    .local v9, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->delete()V

    .line 243
    .end local v9    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_83
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 244
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .end local v0    # "cache":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 245
    .restart local v0    # "cache":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    invoke-direct {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->rebuildJournal()V

    move-object v7, v0

    .line 246
    .restart local v7    # "cache":Ljava/lang/Object;
    goto :goto_4d
.end method

.method private processJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 334
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;>;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    .line 336
    .local v0, "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$700(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_34

    .line 337
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_22
    iget v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_f

    .line 338
    iget-wide v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size:J

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1000(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size:J

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 341
    .end local v2    # "t":I
    :cond_34
    const/4 v3, 0x0

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v0, v3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$702(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    .line 342
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_39
    iget v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_4e

    .line 343
    invoke-virtual {v0, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 344
    invoke-virtual {v0, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 346
    :cond_4e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 349
    .end local v0    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    .end local v2    # "t":I
    :cond_52
    return-void
.end method

.method private readJournal()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v5, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v9}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 252
    .local v5, "reader":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;
    :try_start_e
    invoke-virtual {v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "magic":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "version":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "blank":Ljava/lang/String;
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    const-string v8, "1"

    .line 258
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    iget v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->appVersion:I

    .line 259
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    iget v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    .line 260
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    const-string v8, ""

    .line 261
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_94

    .line 262
    :cond_52
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected journal header: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_8f
    .catchall {:try_start_e .. :try_end_8f} :catchall_8f

    .line 285
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_8f
    move-exception v8

    invoke-static {v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 266
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_94
    const/4 v3, 0x0

    .line 269
    .local v3, "lineCount":I
    :goto_95
    :try_start_95
    invoke-virtual {v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/io/EOFException; {:try_start_95 .. :try_end_9c} :catch_9f
    .catchall {:try_start_95 .. :try_end_9c} :catchall_8f

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 271
    :catch_9f
    move-exception v2

    .line 275
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_a0
    iget-object v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I

    .line 278
    invoke-virtual {v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/StrictLineReader;->hasUnterminatedLine()Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 279
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->rebuildJournal()V
    :try_end_b3
    .catchall {:try_start_a0 .. :try_end_b3} :catchall_8f

    .line 285
    :goto_b3
    invoke-static {v5}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 287
    return-void

    .line 281
    :cond_b7
    :try_start_b7
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v11, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v8, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_cd
    .catchall {:try_start_b7 .. :try_end_cd} :catchall_8f

    goto :goto_b3
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 11
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 290
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 291
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_23

    .line 292
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 295
    :cond_23
    add-int/lit8 v3, v1, 0x1

    .line 296
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 298
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_45

    .line 299
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_49

    const-string v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 301
    iget-object v6, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_44
    :goto_44
    return-void

    .line 305
    .end local v2    # "key":Ljava/lang/String;
    :cond_45
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 308
    .restart local v2    # "key":Ljava/lang/String;
    :cond_49
    iget-object v6, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    .line 309
    .local v0, "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    if-nez v0, :cond_5d

    .line 310
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    invoke-direct {v0, p0, v2, v8}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;-><init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Ljava/lang/String;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;)V

    .line 311
    .restart local v0    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    iget-object v6, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_5d
    if-eq v5, v7, :cond_86

    const-string v6, "CLEAN"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_86

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 315
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v6}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$602(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;Z)Z

    .line 317
    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v0, v8}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$702(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    .line 318
    # invokes: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$800(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_44

    .line 319
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_86
    if-ne v5, v7, :cond_a1

    const-string v6, "DIRTY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_a1

    const-string v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 320
    new-instance v6, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    invoke-direct {v6, p0, v0, v8}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;-><init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;)V

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v0, v6}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$702(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    goto :goto_44

    .line 321
    :cond_a1
    if-ne v5, v7, :cond_b3

    const-string v6, "READ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_b3

    const-string v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 324
    :cond_b3
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private declared-synchronized rebuildJournal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v2, :cond_a

    .line 357
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 360
    :cond_a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_94

    .line 363
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1d
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    iget v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    iget v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    .line 374
    .local v0, "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$700(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_97

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1100(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_1d .. :try_end_8e} :catchall_8f

    goto :goto_5c

    .line 381
    .end local v0    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    :catchall_8f
    move-exception v2

    :try_start_90
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v2
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_94

    .line 356
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_94
    move-exception v2

    monitor-exit p0

    throw v2

    .line 377
    .restart local v0    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_97
    :try_start_97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1100(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_97 .. :try_end_bf} :catchall_8f

    goto :goto_5c

    .line 381
    .end local v0    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    :cond_c0
    :try_start_c0
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 384
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 385
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 387
    :cond_d3
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 388
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 390
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v5, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_f6
    .catchall {:try_start_c0 .. :try_end_f6} :catchall_94

    .line 392
    monitor-exit p0

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    if-eqz p2, :cond_5

    .line 402
    invoke-static {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 404
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 405
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 407
    :cond_11
    return-void
.end method

.method private trimToSize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    :goto_0
    iget-wide v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_22

    .line 660
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 661
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 663
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;>;"
    :cond_22
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 676
    sget-object v1, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 677
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 678
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    :cond_2b
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-nez v1, :cond_7

    .line 656
    :goto_5
    monitor-exit p0

    return-void

    .line 648
    :cond_7
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    .line 649
    .local v0, "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$700(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 650
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$700(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->abort()V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    goto :goto_16

    .line 645
    .end local v0    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1

    .line 653
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->trimToSize()V

    .line 654
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 655
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    goto :goto_5
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->close()V

    .line 672
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->deleteContents(Ljava/io/File;)V

    .line 673
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->checkNotClosed()V

    .line 637
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->trimToSize()V

    .line 638
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 639
    monitor-exit p0

    return-void

    .line 636
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;
    .registers 13
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 415
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->checkNotClosed()V

    .line 416
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 417
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_85

    .line 418
    .local v9, "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    if-nez v9, :cond_14

    .line 452
    :cond_12
    :goto_12
    monitor-exit p0

    return-object v1

    .line 422
    :cond_14
    :try_start_14
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->readable:Z
    invoke-static {v9}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$600(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 429
    iget v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    new-array v6, v2, [Ljava/io/InputStream;
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_85

    .line 431
    .local v6, "ins":[Ljava/io/InputStream;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1f
    :try_start_1f
    iget v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    if-ge v10, v2, :cond_43

    .line 432
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v9, v10}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v6, v10
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2e} :catch_31
    .catchall {:try_start_1f .. :try_end_2e} :catchall_85

    .line 431
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 434
    :catch_31
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v10, 0x0

    :goto_33
    :try_start_33
    iget v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    if-ge v10, v2, :cond_12

    .line 437
    aget-object v2, v6, v10

    if-eqz v2, :cond_12

    .line 438
    aget-object v2, v6, v10

    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 436
    add-int/lit8 v10, v10, 0x1

    goto :goto_33

    .line 446
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_43
    iget v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I

    .line 447
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 448
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 449
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 452
    :cond_74
    new-instance v1, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v9}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1200(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)J

    move-result-wide v4

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->lengths:[J
    invoke-static {v9}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1000(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Snapshot;-><init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;)V
    :try_end_84
    .catchall {:try_start_33 .. :try_end_84} :catchall_85

    goto :goto_12

    .line 415
    .end local v6    # "ins":[Ljava/io/InputStream;
    .end local v9    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    .end local v10    # "i":I
    :catchall_85
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    .prologue
    .line 499
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    .prologue
    .line 623
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->checkNotClosed()V

    .line 593
    invoke-direct {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 594
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    .line 595
    .local v0, "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    if-eqz v0, :cond_17

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$700(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_48

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 596
    :cond_17
    const/4 v3, 0x0

    .line 616
    :goto_18
    monitor-exit p0

    return v3

    .line 599
    :cond_1a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    :try_start_1b
    iget v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_61

    .line 600
    invoke-virtual {v0, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 601
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 602
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_48

    .line 592
    .end local v0    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3

    .line 604
    .restart local v0    # "entry":Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_4b
    :try_start_4b
    iget-wide v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size:J

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1000(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size:J

    .line 605
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1000(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 608
    .end local v1    # "file":Ljava/io/File;
    :cond_61
    iget v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I

    .line 609
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 610
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-direct {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 613
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_97
    .catchall {:try_start_4b .. :try_end_97} :catchall_48

    .line 616
    :cond_97
    const/4 v3, 0x1

    goto :goto_18
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 6
    .param p1, "maxSize"    # J

    .prologue
    .line 507
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->maxSize:J

    .line 508
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 509
    monitor-exit p0

    return-void

    .line 507
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .registers 3

    .prologue
    .line 517
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
