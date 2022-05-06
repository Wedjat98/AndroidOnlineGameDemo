.class public final Lmobi/androidcloud/lib/im/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

.field private static hh:Lmobi/androidcloud/lib/im/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lmobi/androidcloud/lib/im/b;->hh:Lmobi/androidcloud/lib/im/m;

    return-void
.end method

.method public static a(Ljava/io/File;)I
    .registers 2

    .prologue
    .line 90
    invoke-static {p0}, Lmobi/androidcloud/lib/im/b;->b(Ljava/io/File;)I

    move-result v0

    .line 93
    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)V
    .registers 6

    .prologue
    .line 28
    sput-object p2, Lmobi/androidcloud/lib/im/b;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    .line 32
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    iget-object v0, v0, Lcom/talkray/arcvoice/client/b;->fI:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 39
    sget-object v0, Lmobi/androidcloud/lib/im/n;->hI:Lmobi/androidcloud/lib/im/n;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/im/n;->ak(I)V

    .line 48
    if-eqz p0, :cond_1c

    if-nez p1, :cond_28

    .line 49
    :cond_1c
    :try_start_1c
    sget-object v0, Lmobi/androidcloud/lib/im/b;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    if-eqz v0, :cond_27

    .line 51
    sget-object v0, Lmobi/androidcloud/lib/im/b;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, p0, v1}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioRecordingFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_49

    .line 77
    :cond_27
    :goto_27
    return-void

    .line 55
    :cond_28
    :try_start_28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3c} :catch_60

    .line 65
    :try_start_3c
    new-instance v0, Lmobi/androidcloud/lib/im/m;

    sget-object v1, Lmobi/androidcloud/lib/im/b;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    invoke-direct {v0, p0, p1, v1}, Lmobi/androidcloud/lib/im/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)V

    .line 66
    sput-object v0, Lmobi/androidcloud/lib/im/b;->hh:Lmobi/androidcloud/lib/im/m;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/im/m;->startRecording()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_48} :catch_49

    goto :goto_27

    .line 71
    :catch_49
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while recording.. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    sget-object v0, Lmobi/androidcloud/lib/im/b;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    if-eqz v0, :cond_27

    .line 74
    sget-object v0, Lmobi/androidcloud/lib/im/b;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, p0, v1}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioRecordingFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    goto :goto_27

    .line 60
    :catch_60
    move-exception v0

    :try_start_61
    sget-object v0, Lmobi/androidcloud/lib/im/b;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    if-eqz v0, :cond_27

    .line 61
    sget-object v0, Lmobi/androidcloud/lib/im/b;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, p0, v1}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioRecordingFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6c} :catch_49

    goto :goto_27
.end method

.method private static b(Ljava/io/File;)I
    .registers 5

    .prologue
    .line 98
    if-nez p0, :cond_4

    .line 99
    const/4 v0, -0x1

    .line 110
    :goto_3
    return v0

    .line 103
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x26

    div-long/2addr v0, v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    .line 104
    const-wide/16 v2, 0x14

    mul-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_3

    .line 110
    :catch_10
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static getCurrentRecordingVolume()D
    .registers 2

    .prologue
    .line 116
    sget-object v0, Lmobi/androidcloud/lib/im/b;->hh:Lmobi/androidcloud/lib/im/m;

    if-eqz v0, :cond_b

    .line 117
    sget-object v0, Lmobi/androidcloud/lib/im/b;->hh:Lmobi/androidcloud/lib/im/m;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/im/m;->iH()D

    move-result-wide v0

    .line 118
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public static stopRecording()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 80
    sget-object v0, Lmobi/androidcloud/lib/im/b;->hh:Lmobi/androidcloud/lib/im/m;

    if-eqz v0, :cond_a

    .line 83
    sget-object v0, Lmobi/androidcloud/lib/im/b;->hh:Lmobi/androidcloud/lib/im/m;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/im/m;->stopRecording()V

    .line 84
    :cond_a
    sput-object v1, Lmobi/androidcloud/lib/im/b;->hh:Lmobi/androidcloud/lib/im/m;

    .line 86
    sput-object v1, Lmobi/androidcloud/lib/im/b;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    .line 87
    return-void
.end method
