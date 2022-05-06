.class Lsdkplugin/framework/protocol/PluginUser$2;
.super Ljava/lang/Object;
.source "PluginUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdkplugin/framework/protocol/PluginUser;->logout(Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lsdkplugin/framework/protocol/PluginUser$2;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 114
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$2;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    # getter for: Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser;->access$0(Lsdkplugin/framework/protocol/PluginUser;)Landroid/app/Activity;

    move-result-object v1

    .line 115
    new-instance v2, Lsdkplugin/framework/protocol/PluginUser$2$1;

    invoke-direct {v2, p0}, Lsdkplugin/framework/protocol/PluginUser$2$1;-><init>(Lsdkplugin/framework/protocol/PluginUser$2;)V

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/RiverSDKApi;->sqSDKLogout(Landroid/content/Context;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 127
    return-void
.end method
