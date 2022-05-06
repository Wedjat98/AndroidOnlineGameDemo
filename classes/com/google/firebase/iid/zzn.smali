.class final synthetic Lcom/google/firebase/iid/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zznzg:Lcom/google/firebase/iid/zzk;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzn;->zznzg:Lcom/google/firebase/iid/zzk;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v7, 0x2

    iget-object v1, p0, Lcom/google/firebase/iid/zzn;->zznzg:Lcom/google/firebase/iid/zzk;

    :goto_3
    monitor-enter v1

    :try_start_4
    iget v0, v1, Lcom/google/firebase/iid/zzk;->state:I

    if-eq v0, v7, :cond_a

    monitor-exit v1

    :goto_9
    return-void

    :cond_a
    iget-object v0, v1, Lcom/google/firebase/iid/zzk;->zznzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzk;->zzcjc()V

    monitor-exit v1

    goto :goto_9

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :try_start_1a
    iget-object v0, v1, Lcom/google/firebase/iid/zzk;->zznzd:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzr;

    iget-object v2, v1, Lcom/google/firebase/iid/zzk;->zznze:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/firebase/iid/zzr;->zzift:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/google/firebase/iid/zzk;->zznzf:Lcom/google/firebase/iid/zzi;

    invoke-static {v2}, Lcom/google/firebase/iid/zzi;->zzb(Lcom/google/firebase/iid/zzi;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/iid/zzo;

    invoke-direct {v3, v1, v0}, Lcom/google/firebase/iid/zzo;-><init>(Lcom/google/firebase/iid/zzk;Lcom/google/firebase/iid/zzr;)V

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_17

    const-string v2, "MessengerIpcClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string v2, "MessengerIpcClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sending "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    iget-object v2, v1, Lcom/google/firebase/iid/zzk;->zznzf:Lcom/google/firebase/iid/zzi;

    invoke-static {v2}, Lcom/google/firebase/iid/zzi;->zza(Lcom/google/firebase/iid/zzi;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/google/firebase/iid/zzk;->zznzb:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    iget v5, v0, Lcom/google/firebase/iid/zzr;->what:I

    iput v5, v4, Landroid/os/Message;->what:I

    iget v5, v0, Lcom/google/firebase/iid/zzr;->zzift:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    iput-object v3, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "oneWay"

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzr;->zzcje()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "pkg"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    iget-object v0, v0, Lcom/google/firebase/iid/zzr;->zznzj:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_a2
    iget-object v0, v1, Lcom/google/firebase/iid/zzk;->zznzc:Lcom/google/firebase/iid/zzp;

    invoke-virtual {v0, v4}, Lcom/google/firebase/iid/zzp;->send(Landroid/os/Message;)V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a7} :catch_a9

    goto/16 :goto_3

    :catch_a9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/google/firebase/iid/zzk;->zzm(ILjava/lang/String;)V

    goto/16 :goto_3
.end method
