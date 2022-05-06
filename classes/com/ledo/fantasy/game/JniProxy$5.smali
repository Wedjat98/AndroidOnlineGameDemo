.class Lcom/ledo/fantasy/game/JniProxy$5;
.super Ljava/lang/Object;
.source "JniProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/JniProxy;->enterPlatformForum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 123
    # getter for: Lcom/ledo/fantasy/game/JniProxy;->channelPlatformInterface:Lcom/ledo/fantasy/game/ChannelPlatformInterface;
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->access$0()Lcom/ledo/fantasy/game/ChannelPlatformInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/ledo/fantasy/game/ChannelPlatformInterface;->enterPlatformForum()V

    .line 124
    return-void
.end method
