.class final Lcom/google/android/gms/internal/zzckn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjgn:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic zzjij:Lcom/google/android/gms/internal/zzckg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/internal/zzcgi;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckn;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckn;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckn;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zzd(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckn;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Failed to send measurementEnabled to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzckn;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzche;->zzb(Lcom/google/android/gms/internal/zzcgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckn;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zze(Lcom/google/android/gms/internal/zzckg;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_23

    goto :goto_17

    :catch_23
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckn;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to send measurementEnabled to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17
.end method
