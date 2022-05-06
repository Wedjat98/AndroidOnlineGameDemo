.class final Lcom/google/firebase/iid/zzab;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private zznzy:Lcom/google/firebase/iid/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/zzaa;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaa;->zzcjp()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcix()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Connectivity changed. Starting background sync."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    goto :goto_4
.end method

.method public final zzcjq()V
    .registers 3

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcix()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Connectivity change received registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/iid/zzab;->zznzy:Lcom/google/firebase/iid/zzaa;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzaa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
