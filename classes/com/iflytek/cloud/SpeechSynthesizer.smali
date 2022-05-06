.class public Lcom/iflytek/cloud/SpeechSynthesizer;
.super Lcom/iflytek/cloud/thirdparty/D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/SpeechSynthesizer$a;
    }
.end annotation


# static fields
.field private static c:Lcom/iflytek/cloud/SpeechSynthesizer;


# instance fields
.field a:Lcom/iflytek/cloud/InitListener;

.field private d:Lcom/iflytek/cloud/thirdparty/ao;

.field private e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

.field private f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/D;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/SpeechSynthesizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/SpeechSynthesizer$1;-><init>(Lcom/iflytek/cloud/SpeechSynthesizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->g:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ao;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/thirdparty/ao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

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

    new-instance v0, Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    :goto_46
    return-void

    :cond_47
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->g:Landroid/os/Handler;

    invoke-static {v0, v3, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_46
.end method

.method public static createSynthesizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechSynthesizer;
    .registers 3

    sget-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_b

    new-instance v0, Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeechSynthesizer;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

    :cond_b
    sget-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

    return-object v0
.end method

.method public static getSynthesizer()Lcom/iflytek/cloud/SpeechSynthesizer;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

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

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    :cond_28
    new-instance v0, Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    goto :goto_35
.end method

.method public destroy()Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    :cond_a
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ao;->destroy()Z

    move-result v0

    :cond_14
    if-eqz v0, :cond_19

    const/4 v1, 0x0

    sput-object v1, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

    :cond_19
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string v2, "Destory tts engine."

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const-string v2, "engine_destroy"

    const-string v3, "engine_destroy=tts"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechUtility;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2b
    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "local_speakers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "tts_play_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "tts"

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/SpeechSynthesizer;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/D$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_32
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ao;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_50
    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/D;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public isSpeaking()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    invoke-virtual {v1}, Lcom/iflytek/cloud/thirdparty/ao;->g()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public pauseSpeaking()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ao;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ao;->e()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->pauseSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    goto :goto_11
.end method

.method public resumeSpeaking()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ao;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ao;->f()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->resumeSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    goto :goto_11
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/D;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .registers 6

    const/16 v0, 0x5209

    const-string v1, "tts"

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/D$a;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    if-ne v1, v2, :cond_43

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "params"

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/af;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "next_text"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    new-instance v0, Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/cloud/SpeechSynthesizer$a;-><init>(Lcom/iflytek/cloud/SpeechSynthesizer;Lcom/iflytek/cloud/SynthesizerListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->startSpeaking(Ljava/lang/String;Lcom/iflytek/speech/SynthesizerListener;)I

    move-result v0

    goto :goto_12

    :cond_43
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ao;->setParameter(Lcom/iflytek/cloud/thirdparty/af;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/thirdparty/af;

    const-string v1, "next_text"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/thirdparty/ao;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    move-result v0

    goto :goto_12
.end method

.method public stopSpeaking()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ao;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ao;->a(Z)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->stopSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    goto :goto_12
.end method

.method public synthesizeToUri(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .registers 7

    const/16 v0, 0x5209

    const-string v1, "tts"

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/thirdparty/D$a;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    if-ne v1, v2, :cond_43

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "params"

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/af;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "tts_audio_uri"

    invoke-virtual {v0, v1, p2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-direct {v0, p0, p3}, Lcom/iflytek/cloud/SpeechSynthesizer$a;-><init>(Lcom/iflytek/cloud/SpeechSynthesizer;Lcom/iflytek/cloud/SynthesizerListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->synthesizeToUrl(Ljava/lang/String;Lcom/iflytek/speech/SynthesizerListener;)I

    move-result v0

    goto :goto_12

    :cond_43
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/thirdparty/af;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/ao;->setParameter(Lcom/iflytek/cloud/thirdparty/af;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/thirdparty/ao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/ao;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    move-result v0

    goto :goto_12
.end method
