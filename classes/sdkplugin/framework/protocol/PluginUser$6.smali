.class Lsdkplugin/framework/protocol/PluginUser$6;
.super Ljava/lang/Object;
.source "PluginUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdkplugin/framework/protocol/PluginUser;->enterPlatformCenter(Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lsdkplugin/framework/protocol/PluginUser$6;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lsdkplugin/framework/protocol/PluginUser$6;)Lsdkplugin/framework/protocol/PluginUser;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$6;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 365
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$6;->this$0:Lsdkplugin/framework/protocol/PluginUser;

    # getter for: Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser;->access$0(Lsdkplugin/framework/protocol/PluginUser;)Landroid/app/Activity;

    move-result-object v1

    .line 366
    new-instance v2, Lsdkplugin/framework/protocol/PluginUser$6$1;

    invoke-direct {v2, p0}, Lsdkplugin/framework/protocol/PluginUser$6$1;-><init>(Lsdkplugin/framework/protocol/PluginUser$6;)V

    .line 365
    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/RiverSDKApi;->sqSDKPresentUserCenterView(Landroid/app/Activity;Lcom/games37/riversdk/core/callback/ShowViewCallback;)V

    .line 378
    return-void
.end method
