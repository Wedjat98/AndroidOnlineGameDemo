.class public final Lmobi/androidcloud/lib/im/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static hz:Z


# instance fields
.field private fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

.field private hD:Ljava/lang/String;

.field private hE:Ljava/io/File;

.field private hF:Ljava/io/File;

.field private hG:Z

.field private hH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lmobi/androidcloud/lib/im/m;->hz:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lmobi/androidcloud/lib/im/m;->hG:Z

    .line 26
    iput v0, p0, Lmobi/androidcloud/lib/im/m;->hH:I

    .line 31
    iput-object p1, p0, Lmobi/androidcloud/lib/im/m;->hD:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/androidcloud/lib/im/m;->hE:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/androidcloud/lib/im/m;->hF:Ljava/io/File;

    .line 34
    iput-object p3, p0, Lmobi/androidcloud/lib/im/m;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    .line 35
    return-void
.end method


# virtual methods
.method public iH()D
    .registers 3

    .prologue
    .line 64
    invoke-static {}, Lmobi/androidcloud/lib/audio/j;->in()D

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 103
    iput v6, p0, Lmobi/androidcloud/lib/im/m;->hH:I

    .line 105
    new-instance v1, Lmobi/androidcloud/lib/audio/j;

    invoke-direct {v1}, Lmobi/androidcloud/lib/audio/j;-><init>()V

    .line 106
    new-instance v0, Lmobi/androidcloud/lib/audio/h;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/h;-><init>()V

    .line 110
    :try_start_d
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lmobi/androidcloud/lib/im/m;->hE:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 111
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lmobi/androidcloud/lib/im/m;->hF:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    invoke-virtual {v1}, Lmobi/androidcloud/lib/audio/j;->if()V

    .line 114
    iget-object v4, p0, Lmobi/androidcloud/lib/im/m;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    if-eqz v4, :cond_33

    .line 117
    iget-object v4, p0, Lmobi/androidcloud/lib/im/m;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    iget-object v5, p0, Lmobi/androidcloud/lib/im/m;->hD:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioRecordingStartSuccess(Ljava/lang/String;)V

    .line 119
    :cond_33
    :goto_33
    iget-boolean v4, p0, Lmobi/androidcloud/lib/im/m;->hG:Z

    if-eqz v4, :cond_69

    sget-boolean v4, Lmobi/androidcloud/lib/im/m;->hz:Z

    if-eqz v4, :cond_69

    .line 121
    invoke-virtual {v1}, Lmobi/androidcloud/lib/audio/j;->im()Lmobi/androidcloud/lib/audio/b;

    move-result-object v4

    .line 122
    iget-object v5, v4, Lmobi/androidcloud/lib/audio/b;->gd:[B

    invoke-virtual {v2, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 125
    iget-object v4, v4, Lmobi/androidcloud/lib/audio/b;->ge:[S

    invoke-virtual {v0, v4, v3}, Lmobi/androidcloud/lib/audio/h;->a([SLjava/io/BufferedOutputStream;)V

    .line 127
    iget v4, p0, Lmobi/androidcloud/lib/im/m;->hH:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmobi/androidcloud/lib/im/m;->hH:I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4f} :catch_50
    .catchall {:try_start_d .. :try_end_4f} :catchall_7b

    goto :goto_33

    .line 138
    :catch_50
    move-exception v0

    const/4 v0, 0x0

    :try_start_52
    iput-boolean v0, p0, Lmobi/androidcloud/lib/im/m;->hG:Z

    .line 141
    iget-object v0, p0, Lmobi/androidcloud/lib/im/m;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    if-eqz v0, :cond_61

    .line 142
    iget-object v0, p0, Lmobi/androidcloud/lib/im/m;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    iget-object v2, p0, Lmobi/androidcloud/lib/im/m;->hD:Ljava/lang/String;

    sget-object v3, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, v2, v3}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioRecordingFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_7b

    .line 144
    :cond_61
    invoke-virtual {v1}, Lmobi/androidcloud/lib/audio/j;->ih()V

    .line 145
    iput-boolean v6, p0, Lmobi/androidcloud/lib/im/m;->hG:Z

    .line 150
    :goto_66
    sput-boolean v6, Lmobi/androidcloud/lib/im/m;->hz:Z

    .line 152
    return-void

    .line 130
    :cond_69
    :try_start_69
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 131
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 132
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 133
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_75} :catch_50
    .catchall {:try_start_69 .. :try_end_75} :catchall_7b

    .line 135
    invoke-virtual {v1}, Lmobi/androidcloud/lib/audio/j;->ih()V

    .line 145
    iput-boolean v6, p0, Lmobi/androidcloud/lib/im/m;->hG:Z

    goto :goto_66

    .line 144
    :catchall_7b
    move-exception v0

    invoke-virtual {v1}, Lmobi/androidcloud/lib/audio/j;->ih()V

    .line 145
    iput-boolean v6, p0, Lmobi/androidcloud/lib/im/m;->hG:Z

    .line 147
    throw v0
.end method

.method public startRecording()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 39
    iget-boolean v0, p0, Lmobi/androidcloud/lib/im/m;->hG:Z

    if-ne v0, v1, :cond_13

    .line 41
    iget-object v0, p0, Lmobi/androidcloud/lib/im/m;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    if-eqz v0, :cond_12

    .line 43
    iget-object v0, p0, Lmobi/androidcloud/lib/im/m;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    iget-object v1, p0, Lmobi/androidcloud/lib/im/m;->hD:Ljava/lang/String;

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->AUDIO_MESSAGE_ALREADY_RECORDING:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, v1, v2}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioRecordingFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    .line 54
    :cond_12
    :goto_12
    return-void

    .line 47
    :cond_13
    invoke-static {}, Lmobi/androidcloud/lib/im/k;->iF()V

    .line 49
    iput-boolean v1, p0, Lmobi/androidcloud/lib/im/m;->hG:Z

    .line 50
    sput-boolean v1, Lmobi/androidcloud/lib/im/m;->hz:Z

    .line 52
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_12
.end method

.method public stopRecording()V
    .registers 3

    .prologue
    .line 85
    const-wide/16 v0, 0xc8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/im/m;->hG:Z

    .line 87
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    .line 96
    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method
