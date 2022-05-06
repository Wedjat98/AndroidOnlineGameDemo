.class Lsdkplugin/framework/protocol/PluginUser$3$1;
.super Lcom/games37/riversdk/core/callback/SDKCallback;
.source "PluginUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdkplugin/framework/protocol/PluginUser$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsdkplugin/framework/protocol/PluginUser$3;


# direct methods
.method constructor <init>(Lsdkplugin/framework/protocol/PluginUser$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lsdkplugin/framework/protocol/PluginUser$3$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$3;

    .line 139
    invoke-direct {p0}, Lcom/games37/riversdk/core/callback/SDKCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/Map;)V
    .registers 7
    .param p1, "statusCode"    # I
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
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 142
    if-ne v3, p1, :cond_93

    .line 143
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$3$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$3;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$3;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$3;->access$0(Lsdkplugin/framework/protocol/PluginUser$3;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v0

    # invokes: Lsdkplugin/framework/protocol/PluginUser;->loginSuccess(Ljava/util/Map;)V
    invoke-static {v0, p2}, Lsdkplugin/framework/protocol/PluginUser;->access$1(Lsdkplugin/framework/protocol/PluginUser;Ljava/util/Map;)V

    .line 144
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$3$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$3;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$3;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$3;->access$0(Lsdkplugin/framework/protocol/PluginUser$3;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v1

    const-string v0, "userId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lsdkplugin/framework/protocol/PluginUser;->_strCurUserID:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$3$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$3;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$3;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$3;->access$0(Lsdkplugin/framework/protocol/PluginUser$3;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v1

    const-string v0, "sign"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lsdkplugin/framework/protocol/PluginUser;->_strSessionID:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$3$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$3;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$3;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$3;->access$0(Lsdkplugin/framework/protocol/PluginUser$3;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v0

    iget-object v1, v0, Lsdkplugin/framework/protocol/PluginUser;->_strSessionID:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lsdkplugin/framework/protocol/PluginUser;->_strSessionID:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$3$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$3;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$3;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$3;->access$0(Lsdkplugin/framework/protocol/PluginUser$3;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v1

    iget-object v0, v1, Lsdkplugin/framework/protocol/PluginUser;->_strSessionID:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "timeStamp"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lsdkplugin/framework/protocol/PluginUser;->_strSessionID:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$3$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$3;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$3;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$3;->access$0(Lsdkplugin/framework/protocol/PluginUser$3;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsdkplugin/framework/protocol/PluginUser;->SetLoginState(Z)V

    .line 150
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$3$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$3;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$3;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$3;->access$0(Lsdkplugin/framework/protocol/PluginUser$3;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v0

    invoke-virtual {v0}, Lsdkplugin/framework/protocol/PluginUser;->getActionListener()Lonlysdk/framework/listener/UserActionListener;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 151
    iget-object v0, p0, Lsdkplugin/framework/protocol/PluginUser$3$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$3;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$3;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v0}, Lsdkplugin/framework/protocol/PluginUser$3;->access$0(Lsdkplugin/framework/protocol/PluginUser$3;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v0

    invoke-virtual {v0}, Lsdkplugin/framework/protocol/PluginUser;->getActionListener()Lonlysdk/framework/listener/UserActionListener;

    move-result-object v0

    sget-object v1, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lonlysdk/framework/listener/UserActionListener;->onUserActionResult(Lonlysdk/framework/enumtype/UserActionResultCode;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 157
    :cond_93
    return-void
.end method
