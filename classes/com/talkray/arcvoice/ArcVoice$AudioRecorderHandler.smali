.class public interface abstract Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkray/arcvoice/ArcVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioRecorderHandler"
.end annotation


# virtual methods
.method public abstract onAudioPlaybackFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
.end method

.method public abstract onAudioPlaybackFinished(Ljava/lang/String;Z)V
.end method

.method public abstract onAudioRecordingFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
.end method

.method public abstract onAudioRecordingStartSuccess(Ljava/lang/String;)V
.end method
