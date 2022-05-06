.class public final Lmobi/androidcloud/lib/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/androidcloud/lib/util/a$a;
    }
.end annotation


# instance fields
.field private final kg:Ljava/util/concurrent/LinkedBlockingQueue;

.field private kh:I

.field private ki:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lmobi/androidcloud/lib/util/a;->kg:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    return-void
.end method


# virtual methods
.method public a(JJLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 56
    :goto_1
    :try_start_1
    iget-object v0, p0, Lmobi/androidcloud/lib/util/a;->kg:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p3, p4, p5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/androidcloud/lib/util/a$a;

    .line 57
    if-nez v0, :cond_13

    .line 58
    iget v0, p0, Lmobi/androidcloud/lib/util/a;->kh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/androidcloud/lib/util/a;->kh:I

    move-object v0, v1

    .line 70
    :goto_12
    return-object v0

    .line 61
    :cond_13
    invoke-static {v0, p1, p2}, Lmobi/androidcloud/lib/util/a$a;->a(Lmobi/androidcloud/lib/util/a$a;J)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 62
    iget v0, p0, Lmobi/androidcloud/lib/util/a;->ki:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/androidcloud/lib/util/a;->ki:I

    goto :goto_1

    .line 70
    :catch_20
    move-exception v0

    move-object v0, v1

    goto :goto_12

    .line 67
    :cond_23
    invoke-static {v0}, Lmobi/androidcloud/lib/util/a$a;->a(Lmobi/androidcloud/lib/util/a$a;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_26} :catch_20

    move-result-object v0

    goto :goto_12
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 31
    iget-object v0, p0, Lmobi/androidcloud/lib/util/a;->kg:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lmobi/androidcloud/lib/util/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lmobi/androidcloud/lib/util/a$a;-><init>(Lmobi/androidcloud/lib/util/a;Ljava/lang/Object;Lmobi/androidcloud/lib/util/a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lmobi/androidcloud/lib/util/a;->kg:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    return v0
.end method
