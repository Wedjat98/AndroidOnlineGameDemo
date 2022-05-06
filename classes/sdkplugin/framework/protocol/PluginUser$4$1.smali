.class Lsdkplugin/framework/protocol/PluginUser$4$1;
.super Lcom/games37/riversdk/core/callback/SDKCallback;
.source "PluginUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdkplugin/framework/protocol/PluginUser$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsdkplugin/framework/protocol/PluginUser$4;


# direct methods
.method constructor <init>(Lsdkplugin/framework/protocol/PluginUser$4;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lsdkplugin/framework/protocol/PluginUser$4$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$4;

    .line 174
    invoke-direct {p0}, Lcom/games37/riversdk/core/callback/SDKCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/Map;)V
    .registers 4
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 180
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$4$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$4;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$4;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$4;->access$0(Lsdkplugin/framework/protocol/PluginUser$4;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v0

    # invokes: Lsdkplugin/framework/protocol/PluginUser;->startSDKLoginView()V
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser;->access$2(Lsdkplugin/framework/protocol/PluginUser;)V

    .line 182
    :cond_c
    return-void
.end method
