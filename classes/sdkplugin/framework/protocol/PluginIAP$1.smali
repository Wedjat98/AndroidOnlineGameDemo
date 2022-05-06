.class Lsdkplugin/framework/protocol/PluginIAP$1;
.super Ljava/lang/Object;
.source "PluginIAP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdkplugin/framework/protocol/PluginIAP;->payForProduct(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsdkplugin/framework/protocol/PluginIAP;

.field private final synthetic val$item_id_final:Ljava/lang/String;

.field private final synthetic val$order_no_final:Ljava/lang/String;

.field private final synthetic val$role_id_final:Ljava/lang/String;

.field private final synthetic val$role_level_final:Ljava/lang/String;

.field private final synthetic val$role_name_final:Ljava/lang/String;

.field private final synthetic val$server_id_final:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsdkplugin/framework/protocol/PluginIAP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->this$0:Lsdkplugin/framework/protocol/PluginIAP;

    iput-object p2, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$role_id_final:Ljava/lang/String;

    iput-object p3, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$role_name_final:Ljava/lang/String;

    iput-object p4, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$role_level_final:Ljava/lang/String;

    iput-object p5, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$server_id_final:Ljava/lang/String;

    iput-object p6, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$item_id_final:Ljava/lang/String;

    iput-object p7, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$order_no_final:Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 289
    sget-object v0, Lsdkplugin/framework/protocol/PluginAgent;->riverSDKApi:Lcom/games37/riversdk/core/RiverSDKApi;

    iget-object v1, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->this$0:Lsdkplugin/framework/protocol/PluginIAP;

    # getter for: Lsdkplugin/framework/protocol/PluginIAP;->_activity:Landroid/app/Activity;
    invoke-static {v1}, Lsdkplugin/framework/protocol/PluginIAP;->access$0(Lsdkplugin/framework/protocol/PluginIAP;)Landroid/app/Activity;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$role_id_final:Ljava/lang/String;

    .line 293
    iget-object v3, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$role_name_final:Ljava/lang/String;

    .line 295
    iget-object v4, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$role_level_final:Ljava/lang/String;

    .line 297
    iget-object v5, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$server_id_final:Ljava/lang/String;

    .line 299
    iget-object v6, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$item_id_final:Ljava/lang/String;

    .line 301
    iget-object v7, p0, Lsdkplugin/framework/protocol/PluginIAP$1;->val$order_no_final:Ljava/lang/String;

    .line 303
    const-string v8, ""

    .line 304
    new-instance v9, Lsdkplugin/framework/protocol/PluginIAP$1$1;

    invoke-direct {v9, p0}, Lsdkplugin/framework/protocol/PluginIAP$1$1;-><init>(Lsdkplugin/framework/protocol/PluginIAP$1;)V

    .line 289
    invoke-virtual/range {v0 .. v9}, Lcom/games37/riversdk/core/RiverSDKApi;->sqSDKInAppPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/SDKCallback;)V

    .line 323
    return-void
.end method
