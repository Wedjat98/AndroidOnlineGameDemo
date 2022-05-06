.class final Lcom/google/android/gms/internal/zzeco;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmqg:Lcom/google/android/gms/internal/zzeck;

.field private synthetic zzmqi:Lcom/google/android/gms/internal/zzela;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeck;Lcom/google/android/gms/internal/zzela;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeco;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeco;->zzmqi:Lcom/google/android/gms/internal/zzela;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeco;->zzmqi:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzela;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeco;->zzmqi:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzela;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeco;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v1, "WebSocket reached EOF."

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_23
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeco;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zze(Lcom/google/android/gms/internal/zzecf;)V

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeco;->zzmqg:Lcom/google/android/gms/internal/zzeck;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeck;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzb(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzejc;

    move-result-object v0

    const-string v1, "WebSocket error."

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeco;->zzmqi:Lcom/google/android/gms/internal/zzela;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_23
.end method
