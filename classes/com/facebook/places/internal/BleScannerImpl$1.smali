.class Lcom/facebook/places/internal/BleScannerImpl$1;
.super Ljava/lang/Object;
.source "BleScannerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/BleScannerImpl;->waitForMainLooper(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/places/internal/BleScannerImpl;

.field private final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/BleScannerImpl;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/places/internal/BleScannerImpl$1;->this$0:Lcom/facebook/places/internal/BleScannerImpl;

    iput-object p2, p0, Lcom/facebook/places/internal/BleScannerImpl$1;->val$lock:Ljava/lang/Object;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl$1;->val$lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_d

    .line 142
    :try_start_3
    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl$1;->val$lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 141
    monitor-exit v2

    .line 147
    :goto_9
    return-void

    .line 141
    :catchall_a
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_d

    .line 144
    :catch_d
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception waiting for main looper"

    # invokes: Lcom/facebook/places/internal/BleScannerImpl;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Lcom/facebook/places/internal/BleScannerImpl;->access$3(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_9
.end method
