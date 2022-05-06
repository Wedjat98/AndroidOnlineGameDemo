.class Lcom/ledo/fantasy/update/ProRunnable;
.super Ljava/lang/Object;
.source "ProRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field epro:I

.field sec:I

.field spro:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEpro()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/ledo/fantasy/update/ProRunnable;->epro:I

    return v0
.end method

.method public getSec()I
    .registers 2

    .prologue
    .line 6
    iget v0, p0, Lcom/ledo/fantasy/update/ProRunnable;->sec:I

    return v0
.end method

.method public getSpro()I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcom/ledo/fantasy/update/ProRunnable;->spro:I

    return v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 35
    :goto_0
    iget v1, p0, Lcom/ledo/fantasy/update/ProRunnable;->spro:I

    iget v2, p0, Lcom/ledo/fantasy/update/ProRunnable;->epro:I

    if-lt v1, v2, :cond_7

    .line 45
    return-void

    .line 36
    :cond_7
    iget v1, p0, Lcom/ledo/fantasy/update/ProRunnable;->spro:I

    invoke-static {v1}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->NotifyStep(I)V

    .line 37
    iget v1, p0, Lcom/ledo/fantasy/update/ProRunnable;->spro:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ledo/fantasy/update/ProRunnable;->spro:I

    .line 39
    :try_start_12
    iget v1, p0, Lcom/ledo/fantasy/update/ProRunnable;->sec:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1a} :catch_1b

    goto :goto_0

    .line 40
    :catch_1b
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEpro(I)V
    .registers 2
    .param p1, "epro"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/ledo/fantasy/update/ProRunnable;->epro:I

    .line 27
    return-void
.end method

.method public setSec(I)V
    .registers 2
    .param p1, "sec"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/ledo/fantasy/update/ProRunnable;->sec:I

    .line 11
    return-void
.end method

.method public setSpro(I)V
    .registers 2
    .param p1, "spro"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/ledo/fantasy/update/ProRunnable;->spro:I

    .line 19
    return-void
.end method
