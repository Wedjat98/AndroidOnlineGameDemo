.class Lcom/ledo/fantasy/game/ArcVoiceManager$3$2;
.super Ljava/lang/Object;
.source "ArcVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/ArcVoiceManager$3;->onAudioPlaybackFailed(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/game/ArcVoiceManager$3;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/ArcVoiceManager$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$3$2;->this$1:Lcom/ledo/fantasy/game/ArcVoiceManager$3;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ledo/fantasy/game/GameJNILib;->onFinishPlayVoiceResult(Z)V

    .line 175
    return-void
.end method
