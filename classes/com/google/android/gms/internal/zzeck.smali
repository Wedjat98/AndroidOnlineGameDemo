.class final Lcom/google/android/gms/internal/zzeck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzecj;
.implements Lcom/google/android/gms/internal/zzekz;


# instance fields
.field final synthetic zzmqe:Lcom/google/android/gms/internal/zzecf;

.field private zzmqf:Lcom/google/android/gms/internal/zzeku;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzecf;Lcom/google/android/gms/internal/zzeku;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzeku;->zza(Lcom/google/android/gms/internal/zzekz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzecf;Lcom/google/android/gms/internal/zzeku;Lcom/google/android/gms/internal/zzecg;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeck;-><init>(Lcom/google/android/gms/internal/zzecf;Lcom/google/android/gms/internal/zzeku;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeku;->close()V

    return-void
.end method

.method public final connect()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeku;->connect()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/zzela; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v1

    const-string v2, "Error connecting"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeku;->close()V

    :try_start_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeku;->zzcaw()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_5

    :catch_2c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v1

    const-string v2, "Interrupted while shutting down websocket threads"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzejc;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public final onClose()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzd(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzecn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzecn;-><init>(Lcom/google/android/gms/internal/zzeck;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzela;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzd(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzeco;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzeco;-><init>(Lcom/google/android/gms/internal/zzeck;Lcom/google/android/gms/internal/zzela;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelc;)V
    .registers 7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelc;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v2

    const-string v3, "ws message: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_26
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzd(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzecm;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzecm;-><init>(Lcom/google/android/gms/internal/zzeck;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public final zzbvg()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzd(Lcom/google/android/gms/internal/zzecf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzecl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzecl;-><init>(Lcom/google/android/gms/internal/zzeck;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzps(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeck;->zzmqf:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeku;->zzps(Ljava/lang/String;)V

    return-void
.end method
