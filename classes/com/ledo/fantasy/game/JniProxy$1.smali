.class Lcom/ledo/fantasy/game/JniProxy$1;
.super Ljava/lang/Object;
.source "JniProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/JniProxy;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 45
    const-string v0, "EVENT_JNIPROXY_SHOWLOGIN"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Z)V

    .line 46
    # getter for: Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->access$0()Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->login()V

    .line 47
    invoke-static {}, Lcom/ledo/fantasy/game/GameJNILib;->enableEnterButton()V

    .line 48
    return-void
.end method
