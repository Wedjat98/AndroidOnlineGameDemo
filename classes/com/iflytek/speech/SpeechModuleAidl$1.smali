.class Lcom/iflytek/speech/SpeechModuleAidl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/speech/SpeechModuleAidl;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/speech/SpeechModuleAidl;


# direct methods
.method constructor <init>(Lcom/iflytek/speech/SpeechModuleAidl;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    iget-object v1, v0, Lcom/iflytek/speech/SpeechModuleAidl;->mSynLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechModuleAidl;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "init success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    iget-object v2, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    # invokes: Lcom/iflytek/speech/SpeechModuleAidl;->getService(Landroid/os/IBinder;)Landroid/os/IInterface;
    invoke-static {v2, p2}, Lcom/iflytek/speech/SpeechModuleAidl;->access$000(Lcom/iflytek/speech/SpeechModuleAidl;Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    iput-object v2, v0, Lcom/iflytek/speech/SpeechModuleAidl;->mService:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechModuleAidl;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    iget-object v3, v3, Lcom/iflytek/speech/SpeechModuleAidl;->mService:Landroid/os/IInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    # getter for: Lcom/iflytek/speech/SpeechModuleAidl;->mInitListener:Lcom/iflytek/cloud/InitListener;
    invoke-static {v0}, Lcom/iflytek/speech/SpeechModuleAidl;->access$100(Lcom/iflytek/speech/SpeechModuleAidl;)Lcom/iflytek/cloud/InitListener;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    # getter for: Lcom/iflytek/speech/SpeechModuleAidl;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/iflytek/speech/SpeechModuleAidl;->access$200(Lcom/iflytek/speech/SpeechModuleAidl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_53
    monitor-exit v1

    return-void

    :catchall_55
    move-exception v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechModuleAidl;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/iflytek/speech/SpeechModuleAidl;->mService:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    # getter for: Lcom/iflytek/speech/SpeechModuleAidl;->userDestroy:Z
    invoke-static {v0}, Lcom/iflytek/speech/SpeechModuleAidl;->access$300(Lcom/iflytek/speech/SpeechModuleAidl;)Z

    move-result v0

    if-nez v0, :cond_1d

    :try_start_18
    iget-object v0, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    # invokes: Lcom/iflytek/speech/SpeechModuleAidl;->bindService()V
    invoke-static {v0}, Lcom/iflytek/speech/SpeechModuleAidl;->access$400(Lcom/iflytek/speech/SpeechModuleAidl;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/speech/SpeechModuleAidl$1;->this$0:Lcom/iflytek/speech/SpeechModuleAidl;

    invoke-virtual {v1}, Lcom/iflytek/speech/SpeechModuleAidl;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rebindService error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
