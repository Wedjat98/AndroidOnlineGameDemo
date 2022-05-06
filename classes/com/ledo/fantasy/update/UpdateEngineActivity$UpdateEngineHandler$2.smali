.class Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$2;
.super Ljava/lang/Object;
.source "UpdateEngineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;


# direct methods
.method constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler$2;->this$1:Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateEngineHandler;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1043
    const-string v0, "EVENT_UPDATEENGINEACTIVITY_UPDATE_ENGINE_NET_UNREACHABLE_EXITGAME"

    invoke-static {v0}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;)V

    .line 1045
    invoke-static {}, Lcom/ledo/fantasy/update/AsynFileDownloader;->ShutDown()V

    .line 1046
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->release()V

    .line 1047
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ledo/fantasy/game/GameApp;->finish()V

    .line 1048
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1050
    return-void
.end method
