.class final Lmobi/androidcloud/lib/im/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic hB:Z

.field private synthetic hC:Lmobi/androidcloud/lib/im/k;


# direct methods
.method constructor <init>(Lmobi/androidcloud/lib/im/k;Z)V
    .registers 3

    .prologue
    .line 170
    iput-object p1, p0, Lmobi/androidcloud/lib/im/l;->hC:Lmobi/androidcloud/lib/im/k;

    iput-boolean p2, p0, Lmobi/androidcloud/lib/im/l;->hB:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 173
    invoke-static {}, Lmobi/androidcloud/lib/im/k;->iG()Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 174
    invoke-static {}, Lmobi/androidcloud/lib/im/k;->iG()Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;

    move-result-object v0

    iget-object v1, p0, Lmobi/androidcloud/lib/im/l;->hC:Lmobi/androidcloud/lib/im/k;

    invoke-static {v1}, Lmobi/androidcloud/lib/im/k;->a(Lmobi/androidcloud/lib/im/k;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lmobi/androidcloud/lib/im/l;->hB:Z

    invoke-interface {v0, v1, v2}, Lcom/talkray/arcvoice/ArcVoice$AudioRecorderHandler;->onAudioPlaybackFinished(Ljava/lang/String;Z)V

    .line 175
    :cond_15
    return-void
.end method
