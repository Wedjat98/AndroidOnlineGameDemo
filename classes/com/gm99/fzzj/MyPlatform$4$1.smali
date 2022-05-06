.class Lcom/gm99/fzzj/MyPlatform$4$1;
.super Ljava/lang/Thread;
.source "MyPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gm99/fzzj/MyPlatform$4;->onUserActionResult(Lonlysdk/framework/enumtype/UserActionResultCode;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gm99/fzzj/MyPlatform$4;


# direct methods
.method constructor <init>(Lcom/gm99/fzzj/MyPlatform$4;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gm99/fzzj/MyPlatform$4$1;->this$1:Lcom/gm99/fzzj/MyPlatform$4;

    .line 164
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 167
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_12

    .line 171
    :goto_7
    sget-object v1, Lcom/gm99/fzzj/MyPlatform;->gameActivity:Landroid/app/Activity;

    new-instance v2, Lcom/gm99/fzzj/MyPlatform$4$1$1;

    invoke-direct {v2, p0}, Lcom/gm99/fzzj/MyPlatform$4$1$1;-><init>(Lcom/gm99/fzzj/MyPlatform$4$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    return-void

    .line 168
    :catch_12
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7
.end method
