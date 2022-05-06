.class Lcom/ledo/fantasy/game/ArcVoiceManager$1;
.super Ljava/lang/Object;
.source "ArcVoiceManager.java"

# interfaces
.implements Lcom/talkray/arcvoice/ArcVoiceEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/ArcVoiceManager;->InitSdkAndUserInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCallConnected()V
    .registers 3

    .prologue
    .line 95
    const-string v0, "ArcVoiceManager"

    const-string v1, "onCallConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public onCallDisconnected()V
    .registers 3

    .prologue
    .line 89
    const-string v0, "ArcVoiceManager"

    const-string v1, "onCallDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onCallStatusUpdate(Ljava/util/Map;)V
    .registers 4
    .param p1, "memberStatusMap"    # Ljava/util/Map;

    .prologue
    .line 83
    const-string v0, "ArcVoiceManager"

    const-string v1, "onCallStatusUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public onError(Lcom/talkray/arcvoice/ArcError;)V
    .registers 4
    .param p1, "arcError"    # Lcom/talkray/arcvoice/ArcError;

    .prologue
    .line 76
    invoke-static {}, Lcom/ledo/fantasy/game/GameJNILib;->onArcVoiceInitFailed()V

    .line 77
    const-string v0, "ArcVoiceManager"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public onRegister()V
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/ledo/fantasy/game/GameJNILib;->onArcVoiceInitFinish()V

    .line 70
    const-string v0, "ArcVoiceManager"

    const-string v1, "onRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
