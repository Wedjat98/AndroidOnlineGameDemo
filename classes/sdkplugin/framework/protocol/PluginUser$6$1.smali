.class Lsdkplugin/framework/protocol/PluginUser$6$1;
.super Lcom/games37/riversdk/core/callback/ShowViewCallback;
.source "PluginUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdkplugin/framework/protocol/PluginUser$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsdkplugin/framework/protocol/PluginUser$6;


# direct methods
.method constructor <init>(Lsdkplugin/framework/protocol/PluginUser$6;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lsdkplugin/framework/protocol/PluginUser$6$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$6;

    .line 366
    invoke-direct {p0}, Lcom/games37/riversdk/core/callback/ShowViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewDismiss()V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$6$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$6;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$6;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$6;->access$0(Lsdkplugin/framework/protocol/PluginUser$6;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v0

    # getter for: Lsdkplugin/framework/protocol/PluginUser;->_channelName:Ljava/lang/String;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser;->access$3(Lsdkplugin/framework/protocol/PluginUser;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserCenter onViewDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method public onViewShow()V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$6$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$6;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$6;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$6;->access$0(Lsdkplugin/framework/protocol/PluginUser$6;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v0

    # getter for: Lsdkplugin/framework/protocol/PluginUser;->_channelName:Ljava/lang/String;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser;->access$3(Lsdkplugin/framework/protocol/PluginUser;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserCenter onViewShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method
