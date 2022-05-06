.class public Lcom/iflytek/cloud/thirdparty/s;
.super Lcom/iflytek/cloud/thirdparty/A;

# interfaces
.implements Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/thirdparty/s$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field protected volatile b:Lcom/iflytek/cloud/WakeuperListener;

.field protected c:Z

.field protected d:I

.field protected e:Lcom/iflytek/cloud/thirdparty/r;

.field protected f:Lcom/iflytek/cloud/record/PcmRecorder;

.field protected g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/af;Landroid/os/HandlerThread;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/thirdparty/A;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->c:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/s;->d:I

    new-instance v0, Lcom/iflytek/cloud/thirdparty/r;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/r;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    iput-object v2, p0, Lcom/iflytek/cloud/thirdparty/s;->g:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->h:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->i:Z

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->j:I

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/s;->c:Z

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/thirdparty/s;->a(Lcom/iflytek/cloud/thirdparty/af;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Z[BILandroid/os/Bundle;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v7, 0x2786

    const/4 v2, 0x0

    if-ne p3, v1, :cond_90

    if-eqz p2, :cond_5d

    array-length v0, p2

    if-lez v0, :cond_5d

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->s()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_15
    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v4, :cond_3d

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->u()Z

    move-result v4

    if-eqz v4, :cond_3d

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "rec_result"

    new-instance v6, Lcom/iflytek/cloud/RecognizerResult;

    invoke-direct {v6, v0}, Lcom/iflytek/cloud/RecognizerResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    const/16 v6, 0x55f1

    if-eqz p1, :cond_8e

    move v0, v1

    :goto_3a
    invoke-interface {v5, v6, v0, v2, v4}, Lcom/iflytek/cloud/WakeuperListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msc result time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_57
    :goto_57
    if-eqz p1, :cond_5c

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/s;->b(Lcom/iflytek/cloud/SpeechError;)V

    :cond_5c
    return-void

    :cond_5d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_8b

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "local_grammar"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/af;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "sms.irf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e25

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_85
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v7}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_8b
    const-string v0, ""

    goto :goto_15

    :cond_8e
    move v0, v2

    goto :goto_3a

    :cond_90
    if-nez p3, :cond_c6

    if-eqz p2, :cond_c0

    array-length v0, p2

    if-lez v0, :cond_c0

    new-instance v1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {v1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->u()Z

    move-result v0

    if-eqz v0, :cond_57

    if-eqz p4, :cond_12e

    const-string v0, "ivw_audio"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    :goto_b0
    new-instance v2, Lcom/iflytek/cloud/WakeuperResult;

    invoke-direct {v2, v1, v0}, Lcom/iflytek/cloud/WakeuperResult;-><init>(Ljava/lang/String;[B)V

    const-string v0, "GetNotifyResult"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0, v2}, Lcom/iflytek/cloud/WakeuperListener;->onResult(Lcom/iflytek/cloud/WakeuperResult;)V

    goto :goto_57

    :cond_c0
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v7}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_c6
    const/4 v0, 0x2

    if-ne p3, v0, :cond_57

    if-eqz p2, :cond_11f

    array-length v0, p2

    if-lez v0, :cond_11f

    new-instance v0, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v0, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v5, "enroll"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_104

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v4, :cond_ed

    new-instance v4, Lcom/iflytek/cloud/WakeuperResult;

    invoke-direct {v4, v0}, Lcom/iflytek/cloud/WakeuperResult;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v5, v4}, Lcom/iflytek/cloud/WakeuperListener;->onResult(Lcom/iflytek/cloud/WakeuperResult;)V

    :cond_ed
    :try_start_ed
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "suc_times"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "total_times"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v5, v4, :cond_125

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/s;->b(I)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_104} :catch_127

    :cond_104
    :goto_104
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v1, :cond_57

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->u()Z

    move-result v1

    if-eqz v1, :cond_57

    new-instance v1, Lcom/iflytek/cloud/WakeuperResult;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/WakeuperResult;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/WakeuperListener;->onResult(Lcom/iflytek/cloud/WakeuperResult;)V

    if-eqz v2, :cond_57

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/thirdparty/s;->b(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_57

    :cond_11f
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v7}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_125
    move v2, v1

    goto :goto_104

    :catch_127
    move-exception v0

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v7}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_12e
    move-object v0, v3

    goto :goto_b0
.end method

.method private k()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "recording stop"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v1, "enroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/s;->l()V

    :cond_12
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/r;->a()V

    return-void
.end method

.method private l()V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "record_force_stop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    :cond_17
    return-void
.end method


# virtual methods
.method MsgProcCallBack([CIII[B)I
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    if-eqz p5, :cond_55

    const-string v0, "MscWakeuper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "param1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "param2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    const/4 v1, 0x0

    :try_start_41
    invoke-static {}, Lcom/iflytek/cloud/thirdparty/s$a;->values()[Lcom/iflytek/cloud/thirdparty/s$a;

    move-result-object v0

    aget-object v0, v0, p2
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_47} :catch_88

    :goto_47
    if-eqz v0, :cond_54

    sget-object v1, Lcom/iflytek/cloud/thirdparty/s$1;->a:[I

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/s$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_102

    :cond_54
    :goto_54
    return v3

    :cond_55
    const-string v0, "MscWakeuper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "param1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "param2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result:null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :catch_88
    move-exception v0

    const-string v2, "unmatched ivw message!"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_47

    :pswitch_93
    iput-boolean v5, p0, Lcom/iflytek/cloud/thirdparty/s;->h:Z

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->i:Z

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v1, "oneshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    :cond_a3
    invoke-virtual {p0, v4, v3, v3, p5}, Lcom/iflytek/cloud/thirdparty/s;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :goto_a7
    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/thirdparty/s;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_b9

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto :goto_54

    :cond_b3
    const/4 v0, 0x5

    invoke-virtual {p0, v4, v0, v3, p5}, Lcom/iflytek/cloud/thirdparty/s;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_a7

    :cond_b9
    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto :goto_54

    :pswitch_bf
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p3}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_54

    :pswitch_c8
    invoke-virtual {p0, v4, p3, v5, p5}, Lcom/iflytek/cloud/thirdparty/s;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/iflytek/cloud/thirdparty/s;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_d9

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto/16 :goto_54

    :cond_d9
    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto/16 :goto_54

    :pswitch_e0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_54

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->i()V

    goto/16 :goto_54

    :pswitch_e8
    :try_start_e8
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0, p3}, Lcom/iflytek/cloud/WakeuperListener;->onVolumeChanged(I)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f1} :catch_f3

    goto/16 :goto_54

    :catch_f3
    move-exception v0

    goto/16 :goto_54

    :pswitch_f6
    const/4 v0, 0x2

    invoke-virtual {p0, v4, v3, v0, p5}, Lcom/iflytek/cloud/thirdparty/s;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(Landroid/os/Message;Lcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto/16 :goto_54

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_93
        :pswitch_bf
        :pswitch_c8
        :pswitch_e0
        :pswitch_e8
        :pswitch_f6
    .end packed-switch
.end method

.method public a([BII)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/s;->onRecordBuffer([BII)V

    const/4 v0, 0x0

    return v0
.end method

.method protected a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/r;->a:[C

    if-nez v0, :cond_33

    const-string v0, "SDKSessionBegin"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/iflytek/cloud/thirdparty/r;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/A;)I

    move-result v0

    if-nez v0, :cond_34

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iget-object v1, v1, Lcom/iflytek/cloud/thirdparty/r;->a:[C

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->u()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/r;->a:[C

    const-string v1, "MsgProcCallBack"

    invoke-static {v0, v1, p0}, Lcom/iflytek/msc/MSC;->QIVWRegisterNotify([CLjava/lang/String;Ljava/lang/Object;)I

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->a(Lcom/iflytek/cloud/thirdparty/A$b;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    if-eqz v0, :cond_5a

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/cloud/thirdparty/s;->j:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->j:I

    const/16 v2, 0x28

    if-le v1, v2, :cond_48

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_48
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->u()Z

    move-result v0

    if-eqz v0, :cond_33

    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    goto :goto_33

    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current csid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    iget-object v1, v1, Lcom/iflytek/cloud/thirdparty/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x5207

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method

.method protected a(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->a(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->b()V

    goto :goto_8

    :pswitch_d
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->a()V

    goto :goto_8

    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/s;->b(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_15
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/s;->k()V

    goto :goto_8

    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/s;->c(Landroid/os/Message;)V

    goto :goto_8

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, "onSessionEnd"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/s;->l()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v1, "oneshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->h:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_35

    if-nez p1, :cond_35

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "asr_nomatch_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x2786

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    :cond_35
    const-string v0, "SessionEndBegin"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->u:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    const-string v1, "user abort"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/r;->a(Ljava/lang/String;)V

    :goto_45
    const-string v0, "SessionEndEnd"

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->u:Z

    if-eqz v0, :cond_84

    const-string v0, "WakeuperListener#onCancel"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    iput-object v3, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    return-void

    :cond_5d
    if-eqz p1, :cond_7c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/r;->a(Ljava/lang/String;)V

    goto :goto_45

    :cond_7c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/r;->a(Ljava/lang/String;)V

    goto :goto_45

    :cond_84
    const-string v0, "WakeuperListener#onEnd"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_5a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/WakeuperListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_5a
.end method

.method public declared-synchronized a(Lcom/iflytek/cloud/WakeuperListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    const-string v0, "startListening called"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->a_()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a([BZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/thirdparty/r;->a([BI)V

    return-void
.end method

.method public declared-synchronized a(Z)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopListening, current status is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " usercancel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v1, "enroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/s;->c:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->b(I)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_50

    :goto_35
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    const-string v1, "oneshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->h:Z

    if-eqz v0, :cond_53

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/s;->l()V

    iput-boolean p1, p0, Lcom/iflytek/cloud/thirdparty/s;->c:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->b(I)V
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_50

    goto :goto_35

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_53
    const/4 v0, 0x0

    :try_start_54
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->b(Z)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_50

    goto :goto_35
.end method

.method protected b()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "start connecting"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/s;->h:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "record_read_rate"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/s;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->u()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "start  record"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    if-nez v1, :cond_3a

    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->t()I

    move-result v2

    iget v3, p0, Lcom/iflytek/cloud/thirdparty/s;->d:I

    invoke-direct {v1, v2, v0, v3}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    :cond_3a
    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->e:Lcom/iflytek/cloud/thirdparty/A$b;

    if-eq v0, v1, :cond_4b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/WakeuperListener;->onBeginOfSpeech()V

    :cond_4b
    const/4 v0, 0x1

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/iflytek/cloud/thirdparty/s;->a(ILcom/iflytek/cloud/thirdparty/A$a;ZI)V

    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_b

    array-length v1, v0

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/s;->a([BZ)V

    goto :goto_b
.end method

.method public b(Z)V
    .registers 5

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->u()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/WakeuperListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_18
    const-string v0, "cancel"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/s;->l()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->c:Z

    :cond_2b
    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/A;->b(Z)V

    return-void
.end method

.method protected c()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "sst"

    const-string v2, "wakeup"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "keep_alive"

    invoke-virtual {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/s;->i:Z

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v0

    const-string v1, "audio_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/s;->d:I

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/M;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/M;

    move-result-object v0

    const-string v1, "ivw_netval"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/M;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->w()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v1

    const-string v2, "ivw_netval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v4}, Lcom/iflytek/cloud/thirdparty/af;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0}, Lcom/iflytek/cloud/thirdparty/A;->c()V

    return-void
.end method

.method c(Landroid/os/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    packed-switch v1, :pswitch_data_2a

    :goto_b
    :pswitch_b
    return-void

    :pswitch_c
    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(Z[BILandroid/os/Bundle;)V

    goto :goto_b

    :pswitch_17
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e2a

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :pswitch_1f
    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/s;->a(Z[BILandroid/os/Bundle;)V

    goto :goto_b

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_17
        :pswitch_b
        :pswitch_b
        :pswitch_1f
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->e:Lcom/iflytek/cloud/thirdparty/r;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/r;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    const-string v0, "ivw"

    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/s;->d:I

    return v0
.end method

.method public i()V
    .registers 3

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$b;->c:Lcom/iflytek/cloud/thirdparty/A$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->v()Lcom/iflytek/cloud/thirdparty/A$b;

    move-result-object v1

    if-ne v0, v1, :cond_11

    const-string v0, "ivw msc vadEndCall"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->a(Z)Z

    :cond_11
    return-void
.end method

.method public j()Lcom/iflytek/cloud/WakeuperListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/s;->b:Lcom/iflytek/cloud/WakeuperListener;

    return-object v0
.end method

.method public m()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/s;->b(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public onRecordBuffer([BII)V
    .registers 6

    array-length v0, p1

    if-lt v0, p3, :cond_7

    if-eqz p1, :cond_7

    if-gtz p3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-lez p3, :cond_7

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/s;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/thirdparty/s;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/s;->d(Landroid/os/Message;)V

    goto :goto_7
.end method

.method public onRecordReleased()V
    .registers 1

    return-void
.end method

.method public onRecordStarted(Z)V
    .registers 2

    return-void
.end method
