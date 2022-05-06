.class Lcom/ledo/fantasy/game/ArcVoiceManager$3$1;
.super Ljava/lang/Object;
.source "ArcVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/ArcVoiceManager$3;->onAudioPlaybackFinished(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/game/ArcVoiceManager$3;

.field private final synthetic val$didFinishPlaying:Z


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/ArcVoiceManager$3;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$3$1;->this$1:Lcom/ledo/fantasy/game/ArcVoiceManager$3;

    iput-boolean p2, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$3$1;->val$didFinishPlaying:Z

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$3$1;->val$didFinishPlaying:Z

    invoke-static {v0}, Lcom/ledo/fantasy/game/GameJNILib;->onFinishPlayVoiceResult(Z)V

    .line 164
    return-void
.end method
