.class Lsdkplugin/framework/protocol/PluginUser$2$1;
.super Lcom/games37/riversdk/core/callback/SDKCallback;
.source "PluginUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdkplugin/framework/protocol/PluginUser$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsdkplugin/framework/protocol/PluginUser$2;


# direct methods
.method constructor <init>(Lsdkplugin/framework/protocol/PluginUser$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lsdkplugin/framework/protocol/PluginUser$2$1;->this$1:Lsdkplugin/framework/protocol/PluginUser$2;

    .line 115
    invoke-direct {p0}, Lcom/games37/riversdk/core/callback/SDKCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/Map;)V
    .registers 3
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
    .line 125
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
