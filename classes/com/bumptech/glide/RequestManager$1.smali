.class Lcom/bumptech/glide/RequestManager$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bumptech/glide/RequestManager;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$1;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$1;->this$0:Lcom/bumptech/glide/RequestManager;

    iget-object v0, v0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$1;->this$0:Lcom/bumptech/glide/RequestManager;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 68
    return-void
.end method