.class Lcom/gm99/fzzj/MyPlatform$6;
.super Lonlysdk/framework/listener/ShareResultListener;
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
    .line 376
    invoke-direct {p0}, Lonlysdk/framework/listener/ShareResultListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onShareResult(Lonlysdk/framework/enumtype/ShareResultCode;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 9
    .param p1, "ret"    # Lonlysdk/framework/enumtype/ShareResultCode;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonlysdk/framework/enumtype/ShareResultCode;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p3, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p1

    .line 384
    .local v2, "ret_sharereg":Lonlysdk/framework/enumtype/ShareResultCode;
    move-object v1, p2

    .line 386
    .local v1, "msg_sharereg":Ljava/lang/String;
    move-object v0, p3

    .line 388
    .local v0, "info_sharereg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/ledo/fantasy/game/GameApp;->mView:Lcom/ledo/fantasy/game/GameView;

    new-instance v4, Lcom/gm99/fzzj/MyPlatform$6$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/gm99/fzzj/MyPlatform$6$1;-><init>(Lcom/gm99/fzzj/MyPlatform$6;Ljava/util/HashMap;Lonlysdk/framework/enumtype/ShareResultCode;)V

    invoke-virtual {v3, v4}, Lcom/ledo/fantasy/game/GameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method
