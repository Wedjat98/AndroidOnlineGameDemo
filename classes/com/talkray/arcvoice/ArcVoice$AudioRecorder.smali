.class public Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkray/arcvoice/ArcVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioRecorder"
.end annotation


# static fields
.field private static final fz:Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;


# instance fields
.field private fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 264
    new-instance v0, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    invoke-direct {v0}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;-><init>()V

    sput-object v0, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->fz:Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;
    .registers 2

    .prologue
    .line 270
    sget-object v0, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->fz:Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    iput-object p0, v0, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    .line 271
    sget-object v0, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->fz:Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    return-object v0
.end method

.method static synthetic b(Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;
    .registers 2

    .prologue
    .line 263
    invoke-static {p0}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->a(Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentRecordingVolume()D
    .registers 3

    .prologue
    .line 357
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/a;->getCurrentRecordingVolume()D

    move-result-wide v0

    return-wide v0
.end method

.method public setAudioPlayVolume(D)V
    .registers 4

    .prologue
    .line 367
    invoke-static {p1, p2}, Lmobi/androidcloud/lib/im/a;->d(D)V

    .line 368
    return-void
.end method

.method public startPlayingAudioRecording(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    invoke-static {p1, v0}, Lmobi/androidcloud/lib/im/a;->a(Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)V

    .line 325
    return-void
.end method

.method public startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 296
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 297
    iget-object v0, p0, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    if-eqz v0, :cond_13

    .line 298
    iget-object v0, p0, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->CANNOT_RECORD_WHILE_ON_CALL:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {v0, p1, v1}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioRecordingFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    .line 302
    :cond_13
    :goto_13
    return-void

    .line 301
    :cond_14
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v1, p0, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->fA:Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    invoke-virtual {v0, p1, p2, v1}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)V

    goto :goto_13
.end method

.method public stopPlayingAudioRecording()V
    .registers 1

    .prologue
    .line 331
    invoke-static {}, Lmobi/androidcloud/lib/im/a;->iw()V

    .line 332
    return-void
.end method

.method public stopRecordingAudio()V
    .registers 2

    .prologue
    .line 310
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/a;->stopRecording()V

    .line 311
    return-void
.end method
