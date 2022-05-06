.class Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .registers 3
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    .line 874
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 875
    return-void
.end method

.method synthetic constructor <init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$1;

    .prologue
    .line 872
    invoke-direct {p0, p1, p2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 902
    :goto_5
    return-void

    .line 899
    :catch_6
    move-exception v0

    .line 900
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->access$2302(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 907
    :try_start_0
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 911
    :goto_5
    return-void

    .line 908
    :catch_6
    move-exception v0

    .line 909
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->access$2302(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method

.method public write(I)V
    .registers 5
    .param p1, "oneByte"    # I

    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 884
    :goto_5
    return-void

    .line 881
    :catch_6
    move-exception v0

    .line 882
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->access$2302(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method

.method public write([BII)V
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 893
    :goto_5
    return-void

    .line 890
    :catch_6
    move-exception v0

    .line 891
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;

    const/4 v2, 0x1

    # setter for: Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;->access$2302(Lcom/games37/riversdk/core/util/imageloader/disklrucahe/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method
