.class Lcom/games37/riversdk/core/model/SDKInformation$1;
.super Ljava/lang/Object;
.source "SDKInformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/model/SDKInformation;->initGPId(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/model/SDKInformation;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/model/SDKInformation;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/model/SDKInformation;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/games37/riversdk/core/model/SDKInformation$1;->this$0:Lcom/games37/riversdk/core/model/SDKInformation;

    iput-object p2, p0, Lcom/games37/riversdk/core/model/SDKInformation$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/games37/riversdk/core/model/SDKInformation$1;->this$0:Lcom/games37/riversdk/core/model/SDKInformation;

    iget-object v1, p0, Lcom/games37/riversdk/core/model/SDKInformation$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/games37/riversdk/core/model/SDKInformation$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/games37/riversdk/common/utils/CommonUtils;->getGoogleAdvertisingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/games37/riversdk/core/model/SDKInformation;->setGpid(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    return-void
.end method
