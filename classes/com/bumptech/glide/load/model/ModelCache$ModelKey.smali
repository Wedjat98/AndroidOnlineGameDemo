.class final Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModelKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 97
    .local p0, "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "model":Ljava/lang/Object;, "TA;"
    sget-object v2, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    monitor-enter v2

    .line 87
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    .line 88
    .local v0, "modelKey":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 89
    if-nez v0, :cond_13

    .line 90
    new-instance v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    .end local v0    # "modelKey":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    invoke-direct {v0}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;-><init>()V

    .line 93
    .restart local v0    # "modelKey":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    :cond_13
    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->init(Ljava/lang/Object;II)V

    .line 94
    return-object v0

    .line 88
    .end local v0    # "modelKey":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private init(Ljava/lang/Object;II)V
    .registers 4
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    .line 102
    iput p2, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    .line 103
    iput p3, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    const/4 v1, 0x0

    .line 114
    instance-of v2, p1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    if-eqz v2, :cond_1f

    move-object v0, p1

    .line 115
    check-cast v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    .line 116
    .local v0, "other":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    iget v2, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    iget v3, v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    if-ne v2, v3, :cond_1f

    iget v2, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    iget v3, v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    if-ne v2, v3, :cond_1f

    iget-object v2, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    iget-object v3, v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    .line 118
    .end local v0    # "other":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    :cond_1f
    return v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 123
    .local p0, "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    iget v0, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->height:I

    .line 124
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->width:I

    add-int v0, v1, v2

    .line 125
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->model:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 126
    return v0
.end method

.method public release()V
    .registers 3

    .prologue
    .line 107
    .local p0, "this":Lcom/bumptech/glide/load/model/ModelCache$ModelKey;, "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;"
    sget-object v1, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    monitor-enter v1

    .line 108
    :try_start_3
    sget-object v0, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->KEY_QUEUE:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
