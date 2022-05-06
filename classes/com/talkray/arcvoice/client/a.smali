.class public final enum Lcom/talkray/arcvoice/client/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum fD:Lcom/talkray/arcvoice/client/a;

.field private static fE:Ljava/lang/String;

.field private static fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;


# instance fields
.field private volatile fG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/talkray/arcvoice/client/a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/client/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkray/arcvoice/client/a;

    sget-object v1, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/talkray/arcvoice/client/a;->fG:Z

    .line 31
    return-void
.end method

.method public static hE()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public E(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 78
    new-instance v0, Lmobi/androidcloud/lib/im/e;

    invoke-direct {v0, p1}, Lmobi/androidcloud/lib/im/e;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/androidcloud/lib/system/a;->a(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public a(Lcom/talkray/arcvoice/ArcError;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 172
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    if-nez v0, :cond_4

    .line 176
    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
    .registers 4

    .prologue
    .line 179
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    if-nez v0, :cond_5

    .line 183
    :goto_4
    return-void

    .line 182
    :cond_5
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/talkray/arcvoice/ArcMessagingEventHandler;->onAudioFileUploadFailure(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Lcom/talkray/arcvoice/ArcMessagingEventHandler;)V
    .registers 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/talkray/arcvoice/client/a;->stopRecording()V

    .line 35
    sput-object p1, Lcom/talkray/arcvoice/client/a;->fE:Ljava/lang/String;

    .line 36
    sput-object p2, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;Ljava/lang/Exception;)V
    .registers 6

    .prologue
    .line 193
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    if-nez v0, :cond_5

    .line 197
    :goto_4
    return-void

    .line 196
    :cond_5
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/talkray/arcvoice/ArcMessagingEventHandler;->onAudioFileDownloadFailure(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)V
    .registers 5

    .prologue
    .line 208
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    iget-object v0, v0, Lcom/talkray/arcvoice/client/b;->fI:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/protobuf/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 209
    if-eqz p3, :cond_11

    .line 210
    sget-object v0, Lcom/talkray/arcvoice/ArcError;->INVALID_PERMISSIONS:Lcom/talkray/arcvoice/ArcError;

    invoke-interface {p3, p1, v0}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioRecordingFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    .line 215
    :cond_11
    :goto_11
    return-void

    .line 213
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/talkray/arcvoice/client/a;->fG:Z

    .line 214
    invoke-static {p1, p2, p3}, Lmobi/androidcloud/lib/im/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;)V

    goto :goto_11
.end method

.method public a(Lmobi/androidcloud/lib/im/f;)V
    .registers 3

    .prologue
    .line 151
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    if-nez v0, :cond_4

    .line 155
    :cond_4
    return-void
.end method

.method public a(Lmobi/androidcloud/lib/im/f;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 134
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    if-nez v0, :cond_5

    .line 148
    :goto_4
    return-void

    .line 137
    :cond_5
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    iget-object v1, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->jq()Lmobi/androidcloud/lib/phone/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkray/arcvoice/client/b;->b(Lmobi/androidcloud/lib/phone/a;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/net/k;->getLength()I

    move-result v1

    .line 140
    invoke-virtual {p1}, Lmobi/androidcloud/lib/im/f;->ix()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 141
    iget-object v2, p1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v2}, Lmobi/androidcloud/lib/net/k;->jp()Lmobi/androidcloud/lib/wire/control/d;

    move-result-object v2

    iget-object v2, v2, Lmobi/androidcloud/lib/wire/control/d;->fZ:Ljava/lang/String;

    .line 142
    new-instance v3, Lcom/talkray/arcvoice/ArcAudioMessage;

    invoke-direct {v3, p2, v0, v2, v1}, Lcom/talkray/arcvoice/ArcAudioMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 145
    :cond_2b
    new-instance v2, Lcom/talkray/arcvoice/ArcAudioMessage;

    invoke-direct {v2, p2, v0, v1}, Lcom/talkray/arcvoice/ArcAudioMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 87
    new-instance v0, Lmobi/androidcloud/lib/im/d;

    invoke-direct {v0, p1, p2}, Lmobi/androidcloud/lib/im/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/androidcloud/lib/system/a;->a(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 186
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    if-nez v0, :cond_5

    .line 190
    :goto_4
    return-void

    .line 189
    :cond_5
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/talkray/arcvoice/ArcMessagingEventHandler;->onAudioFileUploadSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 200
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    if-nez v0, :cond_5

    .line 204
    :goto_4
    return-void

    .line 203
    :cond_5
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fF:Lcom/talkray/arcvoice/ArcMessagingEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/talkray/arcvoice/ArcMessagingEventHandler;->onAudioFileDownloadSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getCurrentRecordingVolume()D
    .registers 3

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/talkray/arcvoice/client/a;->fG:Z

    if-nez v0, :cond_7

    .line 224
    const-wide/16 v0, 0x0

    .line 225
    :goto_6
    return-wide v0

    :cond_7
    invoke-static {}, Lmobi/androidcloud/lib/im/b;->getCurrentRecordingVolume()D

    move-result-wide v0

    goto :goto_6
.end method

.method public isRecording()Z
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/talkray/arcvoice/client/a;->fG:Z

    return v0
.end method

.method public stopRecording()V
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/talkray/arcvoice/client/a;->fG:Z

    .line 219
    invoke-static {}, Lmobi/androidcloud/lib/im/b;->stopRecording()V

    .line 220
    return-void
.end method
