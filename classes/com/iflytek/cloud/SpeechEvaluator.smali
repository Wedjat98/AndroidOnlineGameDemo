.class public Lcom/iflytek/cloud/SpeechEvaluator;
.super Lcom/iflytek/cloud/thirdparty/D;


# static fields
.field private static a:Lcom/iflytek/cloud/SpeechEvaluator;


# instance fields
.field private c:Lcom/iflytek/cloud/thirdparty/am;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 4

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/D;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/iflytek/cloud/thirdparty/am;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    :cond_13
    if-eqz p2, :cond_15

    :cond_15
    return-void
.end method

.method public static createEvaluator(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechEvaluator;
    .registers 4

    sget-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    if-nez v0, :cond_c

    new-instance v0, Lcom/iflytek/cloud/SpeechEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/SpeechEvaluator;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    :cond_c
    sget-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    return-object v0
.end method

.method public static getEvaluator()Lcom/iflytek/cloud/SpeechEvaluator;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/am;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/am;->cancel(Z)V

    :cond_12
    return-void
.end method

.method public destroy()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/am;->destroy()Z

    move-result v0

    :cond_b
    if-eqz v0, :cond_10

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/cloud/SpeechEvaluator;->a:Lcom/iflytek/cloud/SpeechEvaluator;

    :cond_10
    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/D;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEvaluating()Z
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/am;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/D;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startEvaluating(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    if-nez v0, :cond_7

    const/16 v0, 0x5209

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/am;->setParameter(Lcom/iflytek/cloud/thirdparty/af;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/am;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I

    move-result v0

    goto :goto_6
.end method

.method public startEvaluating([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    if-nez v0, :cond_7

    const/16 v0, 0x5209

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechEvaluator;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/am;->setParameter(Lcom/iflytek/cloud/thirdparty/af;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/am;->a([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I

    move-result v0

    goto :goto_6
.end method

.method public stopEvaluating()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/am;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/am;->e()V

    :goto_11
    return-void

    :cond_12
    const-string v0, "SpeechEvaluator stopEvaluating failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public writeAudio([BII)Z
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/am;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechEvaluator;->c:Lcom/iflytek/cloud/thirdparty/am;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/am;->a([BII)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const-string v0, "SpeechEvaluator writeAudio failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_12
.end method
