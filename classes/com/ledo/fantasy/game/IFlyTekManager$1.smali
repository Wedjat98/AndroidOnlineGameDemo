.class Lcom/ledo/fantasy/game/IFlyTekManager$1;
.super Ljava/lang/Object;
.source "IFlyTekManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/IFlyTekManager;->StartVoiceRecognize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 76
    # getter for: Lcom/ledo/fantasy/game/IFlyTekManager;->mFileName:Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/IFlyTekManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ledo/fantasy/game/GameJNILib;->onIFlyTekRecognizedResult(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    return-void
.end method
