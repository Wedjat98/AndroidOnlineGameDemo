.class final Lcom/tencent/bugly/proguard/u$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/u;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/u;ILjava/util/concurrent/LinkedBlockingQueue;)V
    .registers 4

    .prologue
    .line 749
    iput p2, p0, Lcom/tencent/bugly/proguard/u$2;->a:I

    iput-object p3, p0, Lcom/tencent/bugly/proguard/u$2;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 752
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v0, p0, Lcom/tencent/bugly/proguard/u$2;->a:I

    if-ge v1, v0, :cond_17

    .line 753
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$2;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 754
    if-eqz v0, :cond_17

    .line 755
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 752
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 760
    :cond_17
    return-void
.end method
