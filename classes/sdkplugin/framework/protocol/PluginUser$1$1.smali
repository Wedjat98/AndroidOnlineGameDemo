.class Lsdkplugin/framework/protocol/PluginUser$1$1;
.super Lcom/games37/riversdk/core/callback/SDKCallback;
.source "PluginUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdkplugin/framework/protocol/PluginUser$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsdkplugin/framework/protocol/PluginUser$1;


# direct methods
.method constructor <init>(Lsdkplugin/framework/protocol/PluginUser$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lsdkplugin/framework/protocol/PluginUser$1$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$1;

    .line 58
    invoke-direct {p0}, Lcom/games37/riversdk/core/callback/SDKCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/Map;)V
    .registers 8
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
    const/4 v4, 0x1

    .line 61
    if-ne v4, p1, :cond_94

    .line 62
    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$1$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$1;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$1;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser$1;->access$0(Lsdkplugin/framework/protocol/PluginUser$1;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v1

    # invokes: Lsdkplugin/framework/protocol/PluginUser;->loginSuccess(Ljava/util/Map;)V
    invoke-static {v1, p2}, Lsdkplugin/framework/protocol/PluginUser;->access$1(Lsdkplugin/framework/protocol/PluginUser;Ljava/util/Map;)V

    .line 63
    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$1$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$1;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$1;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser$1;->access$0(Lsdkplugin/framework/protocol/PluginUser$1;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v2

    const-string v1, "userId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lsdkplugin/framework/protocol/PluginUser;->_strCurUserID:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$1$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$1;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$1;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser$1;->access$0(Lsdkplugin/framework/protocol/PluginUser$1;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v2

    const-string v1, "sign"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lsdkplugin/framework/protocol/PluginUser;->_strSessionID:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$1$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$1;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$1;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser$1;->access$0(Lsdkplugin/framework/protocol/PluginUser$1;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v1

    iget-object v2, v1, Lsdkplugin/framework/protocol/PluginUser;->_strSessionID:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lsdkplugin/framework/protocol/PluginUser;->_strSessionID:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$1$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$1;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$1;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser$1;->access$0(Lsdkplugin/framework/protocol/PluginUser$1;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v2

    iget-object v1, v2, Lsdkplugin/framework/protocol/PluginUser;->_strSessionID:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "timeStamp"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lsdkplugin/framework/protocol/PluginUser;->_strSessionID:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$1$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$1;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$1;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser$1;->access$0(Lsdkplugin/framework/protocol/PluginUser$1;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v1

    invoke-virtual {v1, v4}, Lsdkplugin/framework/protocol/PluginUser;->SetLoginState(Z)V

    .line 69
    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$1$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$1;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$1;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser$1;->access$0(Lsdkplugin/framework/protocol/PluginUser$1;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v1

    invoke-virtual {v1}, Lsdkplugin/framework/protocol/PluginUser;->getActionListener()Lonlysdk/framework/listener/UserActionListener;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 70
    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$1$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$1;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$1;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser$1;->access$0(Lsdkplugin/framework/protocol/PluginUser$1;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v1

    invoke-virtual {v1}, Lsdkplugin/framework/protocol/PluginUser;->getActionListener()Lonlysdk/framework/listener/UserActionListener;

    move-result-object v1

    sget-object v2, Lonlysdk/framework/enumtype/UserActionResultCode;->kLoginSuccess:Lonlysdk/framework/enumtype/UserActionResultCode;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lonlysdk/framework/listener/UserActionListener;->onUserActionResult(Lonlysdk/framework/enumtype/UserActionResultCode;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 77
    :cond_93
    :goto_93
    return-void

    .line 74
    :cond_94
    const-string v1, "msg"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginUser$1$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$1;

    # getter for: Lsdkplugin/framework/protocol/PluginUser$1;->this$0:Lsdkplugin/framework/protocol/PluginUser;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser$1;->access$0(Lsdkplugin/framework/protocol/PluginUser$1;)Lsdkplugin/framework/protocol/PluginUser;

    move-result-object v1

    # getter for: Lsdkplugin/framework/protocol/PluginUser;->_activity:Landroid/app/Activity;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginUser;->access$0(Lsdkplugin/framework/protocol/PluginUser;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/games37/riversdk/common/utils/ToastUtil;->toastByData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_93
.end method
