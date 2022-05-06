.class Lcom/ledo/fantasy/game/GameApp$6;
.super Ljava/lang/Object;
.source "GameApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/game/GameApp;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ledo/fantasy/game/GameApp;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/game/GameApp;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/game/GameApp$6;->this$0:Lcom/ledo/fantasy/game/GameApp;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 745
    invoke-static {}, Lcom/ledo/fantasy/game/GameJNILib;->onPause()V

    .line 746
    return-void
.end method
