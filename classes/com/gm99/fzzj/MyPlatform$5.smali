.class Lcom/gm99/fzzj/MyPlatform$5;
.super Lonlysdk/framework/listener/PayResultListener;
.source "MyPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gm99/fzzj/MyPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Lonlysdk/framework/listener/PayResultListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPayResult(Lonlysdk/framework/enumtype/PayResultCode;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 9
    .param p1, "ret"    # Lonlysdk/framework/enumtype/PayResultCode;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonlysdk/framework/enumtype/PayResultCode;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p3, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p1

    .line 269
    .local v2, "ret_payreg":Lonlysdk/framework/enumtype/PayResultCode;
    move-object v1, p2

    .line 271
    .local v1, "msg_payreg":Ljava/lang/String;
    move-object v0, p3

    .line 273
    .local v0, "info_payreg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v4, Lcom/gm99/fzzj/MyPlatform$5$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/gm99/fzzj/MyPlatform$5$1;-><init>(Lcom/gm99/fzzj/MyPlatform$5;Lonlysdk/framework/enumtype/PayResultCode;Ljava/util/HashMap;)V

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method
