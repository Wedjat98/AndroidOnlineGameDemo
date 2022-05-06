.class Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    monitor-enter v1

    .line 171
    :try_start_4
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    # getter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$000(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_e

    .line 172
    monitor-exit v1

    .line 180
    :goto_d
    return-object v3

    .line 174
    :cond_e
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$100(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)V

    .line 175
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$200(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 176
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    # invokes: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$300(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;)V

    .line 177
    iget-object v0, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;->this$0:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;

    const/4 v2, 0x0

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;->access$402(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache;I)I

    .line 179
    :cond_26
    monitor-exit v1

    goto :goto_d

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v0
.end method
