.class Lsdkplugin/framework/protocol/PluginUser$4;
.super Ljava/lang/Object;
.source "PluginUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdkplugin/framework/protocol/PluginUser;->switchAccount(Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lsdkplugin/framework/protocol/PluginUser$4;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lsdkplugin/framework/protocol/PluginUser$4;)Lsdkplugin/framework/protocol/PluginUser;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$4;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 172
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    invoke-virtual {v0}, Lcom/games37/riversdk/core/RiverSDKApi;->sqSDKhasLogin()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 173
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$4;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    # getter for: Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser;->access$0(Lsdkplugin/framework/protocol/PluginUser;)Landroid/app/Activity;

    move-result-object v1

    .line 174
    new-instance v2, Lsdkplugin/framework/protocol/PluginUser$4$1;

    invoke-direct {v2, p0}, Lsdkplugin/framework/protocol/PluginUser$4$1;-><init>(Lsdkplugin/framework/protocol/PluginUser$4;)V

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/RiverSDKApi;->sqSDKLogout(Landroid/content/Context;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 188
    :goto_18
    return-void

    .line 186
    :cond_19
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$4;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    # invokes: Lsdkplugin/framework/protocol/PluginUser;->startSDKLoginView()V
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser;->access$2(Lsdkplugin/framework/protocol/PluginUser;)V

    goto :goto_18
.end method
