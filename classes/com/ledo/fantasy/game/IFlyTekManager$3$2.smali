.class Lcom/ledo/fantasy/game/IFlyTekManager$3$2;
.super Ljava/lang/Object;
.source "IFlyTekManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/IFlyTekManager$3;->onError(Lcom/iflytek/cloud/SpeechError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/game/IFlyTekManager$3;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/IFlyTekManager$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/IFlyTekManager$3$2;->this$1:Lcom/ledo/fantasy/game/IFlyTekManager$3;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 142
    const-string v0, "IFlyTek"

    const-string v1, "recognize error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    # getter for: Lcom/ledo/fantasy/game/IFlyTekManager;->mFileName:Ljava/lang/String;
    invoke-static {}, Lcom/ledo/fantasy/game/IFlyTekManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ledo/fantasy/game/GameJNILib;->onIFlyTekRecognizedResult(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    return-void
.end method
