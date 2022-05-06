.class Lsdkplugin/framework/protocol/PluginUser$5;
.super Ljava/lang/Object;
.source "PluginUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdkplugin/framework/protocol/PluginUser;->showExitScreen(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsdkplugin/framework/protocol/PluginUser;


# direct methods
.method constructor <init>(Lsdkplugin/framework/protocol/PluginUser;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lsdkplugin/framework/protocol/PluginUser$5;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 212
    const-string v1, "HandlePressGoback"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/ledo/fantasy/game/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "resultCode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 222
    :goto_b
    return-void

    .line 216
    :cond_c
    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$5;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    # getter for: Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser;->access$0(Lsdkplugin/framework/protocol/PluginUser;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lsdkplugin/framework/protocol/PluginUser$5$1;

    invoke-direct {v2, p0}, Lsdkplugin/framework/protocol/PluginUser$5$1;-><init>(Lsdkplugin/framework/protocol/PluginUser$5;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b
.end method
