.class public Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;
.super Ljava/lang/Thread;
.source "UpdateEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/update/UpdateEngineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateThread"
.end annotation


# instance fields
.field public interrupt:Z

.field public m_UpdateEngineThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;


# direct methods
.method public constructor <init>(Lcom/ledo/fantasy/update/UpdateEngineActivity;)V
    .registers 3

    .prologue
    .line 258
    iput-object p1, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->interrupt:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 263
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 264
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/update/UpdateEngineActivity;->m_UpdateThreadLooper:Landroid/os/Looper;

    .line 267
    new-instance v0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread$1;

    invoke-direct {v0, p0}, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread$1;-><init>(Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;)V

    iput-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->m_UpdateEngineThreadHandler:Landroid/os/Handler;

    .line 294
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    invoke-virtual {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->unzipAndCopyAssetsTo()V

    .line 300
    iget-object v0, p0, Lcom/ledo/fantasy/update/UpdateEngineActivity$UpdateThread;->this$0:Lcom/ledo/fantasy/update/UpdateEngineActivity;

    invoke-virtual {v0}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->checkVersion()Z

    .line 304
    const-string v0, "EVENT_UPDATEENGINEACTIVITY_NATIVE_STARTRESOURCEUPDATE"

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Z)V

    .line 305
    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->nativeStartResourceUpdate()V

    .line 306
    const-string v0, "EVENT_UPDATEENGINEACTIVITY_NATIVE_ENDRESOURCEUPDATE"

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Z)V

    .line 312
    const-string v0, "EVENT_UPDATEENGINEACTIVITY_UPDATETHREADRUN_COPYASSETSEND"

    invoke-static {v0, v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Z)V

    .line 313
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 314
    return-void
.end method
