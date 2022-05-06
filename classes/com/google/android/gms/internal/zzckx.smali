.class final Lcom/google/android/gms/internal/zzckx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjit:Lcom/google/android/gms/internal/zzcku;

.field private synthetic zzjiu:Lcom/google/android/gms/internal/zzche;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcku;Lcom/google/android/gms/internal/zzche;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckx;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckx;->zzjiu:Lcom/google/android/gms/internal/zzche;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zzjit:Lcom/google/android/gms/internal/zzcku;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjit:Lcom/google/android/gms/internal/zzcku;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzcku;->zza(Lcom/google/android/gms/internal/zzcku;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckg;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Connected to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckx;->zzjiu:Lcom/google/android/gms/internal/zzche;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/internal/zzche;)V

    :cond_2d
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0
.end method
