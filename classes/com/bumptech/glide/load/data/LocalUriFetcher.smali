.class public abstract Lcom/bumptech/glide/load/data/LocalUriFetcher;
.super Ljava/lang/Object;
.source "LocalUriFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalUriFetcher"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 35
    .local p0, "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->contentResolver:Landroid/content/ContentResolver;

    .line 37
    iput-object p2, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->uri:Landroid/net/Uri;

    .line 38
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .prologue
    .line 69
    .local p0, "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    return-void
.end method

.method public cleanup()V
    .registers 2

    .prologue
    .line 57
    .local p0, "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->data:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 59
    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->data:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/data/LocalUriFetcher;->close(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 64
    :cond_9
    :goto_9
    return-void

    .line 60
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method protected abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 6
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    .local p2, "callback":Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;, "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<-TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v1, v2}, Lcom/bumptech/glide/load/data/LocalUriFetcher;->loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->data:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_10

    .line 52
    iget-object v1, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->data:Ljava/lang/Object;

    invoke-interface {p2, v1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 53
    :goto_f
    return-void

    .line 45
    :catch_10
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "LocalUriFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 47
    const-string v1, "LocalUriFetcher"

    const-string v2, "Failed to open Uri"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_21
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method protected abstract loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
