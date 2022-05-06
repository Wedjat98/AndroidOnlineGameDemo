.class Lcom/ledo/fantasy/game/GameApp$9;
.super Ljava/lang/Object;
.source "GameApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameApp;->postHttpUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$data:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameApp$9;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/ledo/fantasy/game/GameApp$9;->val$data:Ljava/lang/String;

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1120
    :try_start_0
    iget-object v1, p0, Lcom/ledo/fantasy/game/GameApp$9;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/ledo/fantasy/game/GameApp$9;->val$data:Ljava/lang/String;

    # invokes: Lcom/ledo/fantasy/game/GameApp;->sendPOSTRequest(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/ledo/fantasy/game/GameApp;->access$1(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 1125
    :goto_7
    return-void

    .line 1121
    :catch_8
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method
