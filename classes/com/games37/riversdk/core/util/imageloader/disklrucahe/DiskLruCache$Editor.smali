.class public final Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)V
    .registers 4
    .param p1, "this$0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .param p2, "entry"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    iput-object p2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    .line 758
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$600(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->written:[Z

    .line 759
    return-void

    .line 758
    :cond_11
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$1800(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
    .param p2, "x1"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;

    .prologue
    .line 750
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;-><init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2302(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 750
    iput-boolean p1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->completeEdit(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$2200(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)V

    .line 861
    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 2

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_7

    .line 866
    :try_start_4
    invoke-virtual {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->abort()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    .line 870
    :cond_7
    :goto_7
    return-void

    .line 867
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 846
    iget-boolean v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_19

    .line 847
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->completeEdit(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$2200(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)V

    .line 848
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$1100(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 852
    :goto_16
    iput-boolean v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->committed:Z

    .line 853
    return-void

    .line 850
    :cond_19
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->completeEdit(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$2200(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)V

    goto :goto_16
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 787
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_b

    # invokes: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 766
    iget-object v3, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    monitor-enter v3

    .line 767
    :try_start_4
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$700(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_15

    .line 768
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 778
    :catchall_12
    move-exception v1

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1

    .line 770
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$600(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 771
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_12

    .line 776
    :goto_1e
    return-object v1

    .line 774
    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2a} :catch_2d
    .catchall {:try_start_1f .. :try_end_2a} :catchall_12

    :try_start_2a
    monitor-exit v3

    move-object v1, v2

    goto :goto_1e

    .line 775
    :catch_2d
    move-exception v0

    .line 776
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_12

    goto :goto_1e
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    if-ltz p1, :cond_a

    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I
    invoke-static {v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$1800(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)I

    move-result v4

    if-lt p1, v4, :cond_33

    .line 799
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .line 801
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->valueCount:I
    invoke-static {v6}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$1800(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 803
    :cond_33
    iget-object v5, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    monitor-enter v5

    .line 804
    :try_start_36
    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->currentEditor:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$700(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_47

    .line 805
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 825
    :catchall_44
    move-exception v4

    monitor-exit v5
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_44

    throw v4

    .line 807
    :cond_47
    :try_start_47
    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->readable:Z
    invoke-static {v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->access$600(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 808
    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 810
    :cond_54
    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->entry:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_44

    move-result-object v0

    .line 813
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_5a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5f} :catch_67
    .catchall {:try_start_5a .. :try_end_5f} :catchall_44

    .line 824
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_5f
    :try_start_5f
    new-instance v4, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;)V

    monitor-exit v5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_66
    return-object v4

    .line 814
    :catch_67
    move-exception v1

    .line 816
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v4}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$1900(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_71
    .catchall {:try_start_5f .. :try_end_71} :catchall_44

    .line 818
    :try_start_71
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_76} :catch_77
    .catchall {:try_start_71 .. :try_end_76} :catchall_44

    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_5f

    .line 819
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_77
    move-exception v2

    .line 821
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_78
    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;
    invoke-static {}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$2000()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_44

    goto :goto_66
.end method

.method public set(ILjava/lang/String;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    const/4 v0, 0x0

    .line 834
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    .line 835
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18

    .line 837
    invoke-static {v1}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 839
    return-void

    .line 837
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_13
    move-exception v2

    :goto_14
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_14
.end method
