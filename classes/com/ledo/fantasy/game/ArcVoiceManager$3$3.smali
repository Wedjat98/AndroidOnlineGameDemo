.class Lcom/ledo/fantasy/game/ArcVoiceManager$3$3;
.super Ljava/lang/Object;
.source "ArcVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/ArcVoiceManager$3;->onAudioRecordingStartSuccess(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/ledo/fantasy/game/ArcVoiceManager$3$3;->this$1:Lcom/ledo/fantasy/game/ArcVoiceManager$3;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ledo/fantasy/game/GameJNILib;->onStartRecordResult(Z)V

    .line 187
    return-void
.end method
