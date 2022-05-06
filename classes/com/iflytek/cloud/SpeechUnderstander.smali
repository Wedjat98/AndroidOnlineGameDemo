.class public Lcom/iflytek/cloud/SpeechUnderstander;
.super Lcom/iflytek/cloud/thirdparty/D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/SpeechUnderstander$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/iflytek/cloud/SpeechUnderstander;


# instance fields
.field private c:Lcom/iflytek/cloud/thirdparty/ap;

.field private d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

.field private e:Lcom/iflytek/cloud/SpeechUnderstander$a;

.field private f:Lcom/iflytek/cloud/InitListener;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/D;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/SpeechUnderstander$a;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/SpeechUnderstander$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/SpeechUnderstander$1;-><init>(Lcom/iflytek/cloud/SpeechUnderstander;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->g:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Lcom/iflytek/cloud/InitListener;

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ap;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/ap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    :cond_27
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->a()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/thirdparty/D$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    if-eq v0, v1, :cond_47

    new-instance v0, Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_46
    :goto_46
    return-void

    :cond_47
    if-eqz p2, :cond_46

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->g:Landroid/os/Handler;

    invoke-static {v0, v3, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_46
.end method

.method static synthetic a(Lcom/iflytek/cloud/SpeechUnderstander;)Lcom/iflytek/cloud/InitListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Lcom/iflytek/cloud/InitListener;

    return-object v0
.end method

.method public static declared-synchronized createUnderstander(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechUnderstander;
    .registers 4

    const-class v1, Lcom/iflytek/cloud/SpeechUnderstander;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    if-nez v0, :cond_e

    new-instance v0, Lcom/iflytek/cloud/SpeechUnderstander;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeechUnderstander;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    :cond_e
    sget-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUnderstander()Lcom/iflytek/cloud/SpeechUnderstander;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->a()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/thirdparty/D$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_28
    new-instance v0, Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Lcom/iflytek/cloud/InitListener;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Lcom/iflytek/cloud/InitListener;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    goto :goto_35
.end method

.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ap;->a(Z)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->a(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/speech/SpeechUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->cancel(Lcom/iflytek/speech/SpeechUnderstanderListener;)I

    goto :goto_12

    :cond_2b
    const-string v0, "SpeechUnderstander cancel failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public destroy()Z
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_d
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ap;->c()Z

    move-result v0

    :cond_17
    if-eqz v0, :cond_1b

    sput-object v2, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    :cond_1b
    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/D;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUnderstanding()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ap;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/D;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startUnderstanding(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I
    .registers 6

    const/16 v0, 0x5209

    const-string v1, "nlu"

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/cloud/SpeechUnderstander;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/D$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start engine mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/D$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    if-ne v1, v2, :cond_56

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-nez v1, :cond_2d

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    const-string v1, "params"

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/af;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeechUnderstander$a;-><init>(Lcom/iflytek/cloud/SpeechUnderstander;Lcom/iflytek/cloud/SpeechUnderstanderListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/SpeechUnderstander$a;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->a(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/speech/SpeechUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->startUnderstanding(Lcom/iflytek/speech/SpeechUnderstanderListener;)I

    move-result v0

    goto :goto_2c

    :cond_56
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v1, :cond_2c

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/thirdparty/af;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/ap;->a(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I

    move-result v0

    goto :goto_2c
.end method

.method public stopUnderstanding()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ap;->b()V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->a(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/speech/SpeechUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->stopUnderstanding(Lcom/iflytek/speech/SpeechUnderstanderListener;)I

    goto :goto_11

    :cond_2a
    const-string v0, "SpeechUnderstander stopUnderstanding, is not understanding"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public writeAudio([BII)I
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/cloud/thirdparty/ap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/ap;->a([BII)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->writeAudio([BII)I

    move-result v0

    goto :goto_12

    :cond_26
    const-string v0, "SpeechUnderstander writeAudio, is not understanding"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/16 v0, 0x520c

    goto :goto_12
.end method
