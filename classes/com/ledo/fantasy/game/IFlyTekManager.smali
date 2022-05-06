.class public Lcom/ledo/fantasy/game/IFlyTekManager;
.super Ljava/lang/Object;
.source "IFlyTekManager.java"


# static fields
.field private static mAppId:Ljava/lang/String;

.field private static mAudioFileDirectory:Ljava/lang/String;

.field private static mFileName:Ljava/lang/String;

.field private static mInitListener:Lcom/iflytek/cloud/InitListener;

.field private static mRecognizerListener:Lcom/iflytek/cloud/RecognizerListener;

.field private static mResult:Ljava/lang/String;

.field private static mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

.field private static mTimeOut:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mResult:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mFileName:Ljava/lang/String;

    .line 25
    const-string v0, "56efd2d0"

    sput-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mAppId:Ljava/lang/String;

    .line 26
    const-string v0, "20000"

    sput-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mTimeOut:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mAudioFileDirectory:Ljava/lang/String;

    .line 28
    sput-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mInitListener:Lcom/iflytek/cloud/InitListener;

    .line 29
    sput-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    .line 30
    sput-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mRecognizerListener:Lcom/iflytek/cloud/RecognizerListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitSdk()V
    .registers 4

    .prologue
    .line 36
    invoke-static {}, Lcom/ledo/fantasy/game/IFlyTekManager;->initListener()V

    .line 37
    invoke-static {}, Lcom/ledo/fantasy/game/IFlyTekManager;->initRecognizerListener()V

    .line 38
    sget-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez v1, :cond_78

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ledo/fantasy/game/IFlyTekManager;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ledo/fantasy/game/IFlyTekManager;->mTimeOut:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "initParaStr":Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/iflytek/cloud/SpeechUtility;->createUtility(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechUtility;

    .line 41
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    sget-object v2, Lcom/ledo/fantasy/game/IFlyTekManager;->mInitListener:Lcom/iflytek/cloud/InitListener;

    invoke-static {v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    .line 42
    sget-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "params"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    sget-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "domain"

    const-string v3, "iat"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    sget-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "language"

    const-string v3, "zh_cn"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    sget-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "accent"

    const-string v3, "mandarin"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    sget-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "result_type"

    const-string v3, "plain"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    sget-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "audio_source"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    sget-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "sample_rate"

    const-string v3, "16000"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    :cond_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/AudioFiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/game/IFlyTekManager;->mAudioFileDirectory:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static StartVoiceRecognize(Ljava/lang/String;)V
    .registers 7
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 58
    sput-object p0, Lcom/ledo/fantasy/game/IFlyTekManager;->mFileName:Ljava/lang/String;

    .line 59
    sget-object v3, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez v3, :cond_f

    .line 60
    sget-object v3, Lcom/ledo/fantasy/game/IFlyTekManager;->mFileName:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v5}, Lcom/ledo/fantasy/game/GameJNILib;->onIFlyTekRecognizedResult(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    :goto_e
    return-void

    .line 63
    :cond_f
    sget-object v3, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v3}, Lcom/iflytek/cloud/SpeechRecognizer;->isListening()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 64
    sget-object v3, Lcom/ledo/fantasy/game/IFlyTekManager;->mFileName:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v5}, Lcom/ledo/fantasy/game/GameJNILib;->onIFlyTekRecognizedResult(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    :cond_1e
    const-string v3, ""

    sput-object v3, Lcom/ledo/fantasy/game/IFlyTekManager;->mResult:Ljava/lang/String;

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ledo/fantasy/game/IFlyTekManager;->mAudioFileDirectory:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pcm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {v2}, Lcom/ledo/fantasy/game/IFlyTekManager;->readFileFromPath(Ljava/lang/String;)[B

    move-result-object v1

    .line 71
    .local v1, "data":[B
    array-length v3, v1

    if-gtz v3, :cond_68

    .line 72
    const-string v3, "IFlyTek"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file data invalid length ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v3, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v4, Lcom/ledo/fantasy/game/IFlyTekManager$1;

    invoke-direct {v4}, Lcom/ledo/fantasy/game/IFlyTekManager$1;-><init>()V

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_e

    .line 83
    :cond_68
    array-length v3, v1

    array-length v4, v1

    div-int/lit8 v4, v4, 0xa

    invoke-static {v1, v3, v4}, Lcom/ledo/fantasy/game/IFlyTekManager;->splitBuffer([BII)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    .local v0, "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {v0}, Lcom/ledo/fantasy/game/IFlyTekManager;->writeAudio(Ljava/util/ArrayList;)V

    goto :goto_e
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 23
    sput-object p0, Lcom/ledo/fantasy/game/IFlyTekManager;->mResult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3()Lcom/iflytek/cloud/SpeechRecognizer;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mSpeechRecognizer:Lcom/iflytek/cloud/SpeechRecognizer;

    return-object v0
.end method

.method static synthetic access$4()Lcom/iflytek/cloud/RecognizerListener;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mRecognizerListener:Lcom/iflytek/cloud/RecognizerListener;

    return-object v0
.end method

.method private static initListener()V
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mInitListener:Lcom/iflytek/cloud/InitListener;

    if-eqz v0, :cond_5

    .line 99
    :goto_4
    return-void

    .line 91
    :cond_5
    new-instance v0, Lcom/ledo/fantasy/game/IFlyTekManager$2;

    invoke-direct {v0}, Lcom/ledo/fantasy/game/IFlyTekManager$2;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mInitListener:Lcom/iflytek/cloud/InitListener;

    goto :goto_4
.end method

.method private static initRecognizerListener()V
    .registers 1

    .prologue
    .line 105
    sget-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mRecognizerListener:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_5

    .line 161
    :goto_4
    return-void

    .line 106
    :cond_5
    new-instance v0, Lcom/ledo/fantasy/game/IFlyTekManager$3;

    invoke-direct {v0}, Lcom/ledo/fantasy/game/IFlyTekManager$3;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/IFlyTekManager;->mRecognizerListener:Lcom/iflytek/cloud/RecognizerListener;

    goto :goto_4
.end method

.method private static readFileFromPath(Ljava/lang/String;)[B
    .registers 7
    .param p0, "strFilePath"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 172
    .local v3, "in":Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, "f":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_1c
    .catchall {:try_start_2 .. :try_end_c} :catchall_2c

    .line 174
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 175
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_42
    .catchall {:try_start_c .. :try_end_15} :catchall_3f

    .line 180
    if-eqz v4, :cond_3d

    .line 181
    :try_start_17
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_39

    .line 182
    const/4 v3, 0x0

    .line 188
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_1b
    :goto_1b
    return-object v0

    .line 176
    :catch_1c
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2c

    .line 180
    if-eqz v3, :cond_1b

    .line 181
    :try_start_22
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_27

    .line 182
    const/4 v3, 0x0

    goto :goto_1b

    .line 184
    :catch_27
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 178
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2c
    move-exception v5

    .line 180
    :goto_2d
    if-eqz v3, :cond_33

    .line 181
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_34

    .line 182
    const/4 v3, 0x0

    .line 187
    :cond_33
    :goto_33
    throw v5

    .line 184
    :catch_34
    move-exception v1

    .line 185
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 184
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_39
    move-exception v1

    .line 185
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_3d
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1b

    .line 178
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_3f
    move-exception v5

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2d

    .line 176
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_42
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1d
.end method

.method private static splitBuffer([BII)Ljava/util/ArrayList;
    .registers 9
    .param p0, "buffer"    # [B
    .param p1, "length"    # I
    .param p2, "spsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-lez p2, :cond_f

    if-lez p1, :cond_f

    if-eqz p0, :cond_f

    array-length v4, p0

    if-ge v4, p1, :cond_10

    .line 218
    :cond_f
    return-object v0

    .line 203
    :cond_10
    const/4 v3, 0x0

    .line 204
    .local v3, "size":I
    :goto_11
    if-ge v3, p1, :cond_f

    .line 205
    sub-int v1, p1, v3

    .line 206
    .local v1, "left":I
    if-ge p2, v1, :cond_21

    .line 207
    new-array v2, p2, [B

    .line 208
    .local v2, "sdata":[B
    invoke-static {p0, v3, v2, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/2addr v3, p2

    .line 211
    goto :goto_11

    .line 212
    .end local v2    # "sdata":[B
    :cond_21
    new-array v2, v1, [B

    .line 213
    .restart local v2    # "sdata":[B
    invoke-static {p0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/2addr v3, v1

    goto :goto_11
.end method

.method private static writeAudio(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "buffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ledo/fantasy/game/IFlyTekManager$4;

    invoke-direct {v1, p0}, Lcom/ledo/fantasy/game/IFlyTekManager$4;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 246
    return-void
.end method
