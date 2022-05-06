.class public Lcom/talkray/arcvoice/ArcVoice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;,
        Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;
    }
.end annotation


# static fields
.field public static final ARC_VOICE_INITIALIZATION_ERROR:Ljava/lang/String; = "ArcVoice has not been initialized. Please call register() first."

.field public static final SDK_BUILD_VERSION:Ljava/lang/String; = "1.13"

.field private static fy:Lcom/talkray/arcvoice/ArcVoice;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/talkray/arcvoice/ArcVoice;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/talkray/arcvoice/ArcVoice;->fy:Lcom/talkray/arcvoice/ArcVoice;

    if-nez v0, :cond_b

    .line 49
    new-instance v0, Lcom/talkray/arcvoice/ArcVoice;

    invoke-direct {v0}, Lcom/talkray/arcvoice/ArcVoice;-><init>()V

    sput-object v0, Lcom/talkray/arcvoice/ArcVoice;->fy:Lcom/talkray/arcvoice/ArcVoice;

    .line 51
    :cond_b
    sget-object v0, Lcom/talkray/arcvoice/ArcVoice;->fy:Lcom/talkray/arcvoice/ArcVoice;

    return-object v0
.end method


# virtual methods
.method public downloadArcAudioFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 512
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 513
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ArcVoice has not been initialized. Please call register() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_10
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    invoke-virtual {v0, p1, p2}, Lcom/talkray/arcvoice/client/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public getArcSessionState()Lcom/talkray/arcvoice/ArcSessionState;
    .registers 3

    .prologue
    .line 217
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ArcVoice has not been initialized. Please call register() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_10
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hP()Lcom/talkray/arcvoice/ArcSessionState;

    move-result-object v0

    return-object v0
.end method

.method public getAudioRecorder(Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;
    .registers 4

    .prologue
    .line 233
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ArcVoice has not been initialized. Please call register() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_10
    invoke-static {p1}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;->b(Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)Lcom/talkray/arcvoice/ArcVoice$AudioRecorder;

    move-result-object v0

    return-object v0
.end method

.method public joinSession(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 119
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ArcVoice has not been initialized. Please call register() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_10
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0, p1}, Lcom/talkray/arcvoice/client/b;->F(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public leaveSession()V
    .registers 3

    .prologue
    .line 131
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ArcVoice has not been initialized. Please call register() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_10
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->endCall()V

    .line 135
    return-void
.end method

.method public muteOthers()V
    .registers 3

    .prologue
    .line 161
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ArcVoice has not been initialized. Please call register() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_10
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->muteOthers()V

    .line 165
    return-void
.end method

.method public muteSelf()V
    .registers 3

    .prologue
    .line 141
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ArcVoice has not been initialized. Please call register() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_10
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->muteSelf()V

    .line 145
    return-void
.end method

.method public register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcRegion;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoiceEventHandler;)V
    .registers 14

    .prologue
    .line 74
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/talkray/arcvoice/client/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcRegion;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoiceEventHandler;)V

    .line 75
    return-void
.end method

.method public register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcRegion;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoiceEventHandler;Ljava/lang/String;Lcom/talkray/arcvoice/ArcMessagingEventHandler;)V
    .registers 16

    .prologue
    .line 102
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    invoke-virtual {v0, p7, p8}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Lcom/talkray/arcvoice/ArcMessagingEventHandler;)V

    .line 103
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/talkray/arcvoice/client/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcRegion;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoiceEventHandler;)V

    .line 104
    return-void
.end method

.method public unmuteOthers()V
    .registers 3

    .prologue
    .line 171
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ArcVoice has not been initialized. Please call register() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_10
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->unmuteOthers()V

    .line 175
    return-void
.end method

.method public unmuteSelf()V
    .registers 3

    .prologue
    .line 151
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ArcVoice has not been initialized. Please call register() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_10
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->unmuteSelf()V

    .line 155
    return-void
.end method

.method public uploadArcAudioFile(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 492
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 493
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ArcVoice has not been initialized. Please call register() first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_10
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    invoke-virtual {v0, p1}, Lcom/talkray/arcvoice/client/a;->E(Ljava/lang/String;)V

    .line 496
    return-void
.end method
