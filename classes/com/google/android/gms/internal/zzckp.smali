.class final Lcom/google/android/gms/internal/zzckp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjgn:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic zzjij:Lcom/google/android/gms/internal/zzckg;

.field private synthetic zzjim:Z

.field private synthetic zzjin:Z

.field private synthetic zzjio:Lcom/google/android/gms/internal/zzcgl;

.field private synthetic zzjip:Lcom/google/android/gms/internal/zzcgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckg;ZZLcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;Lcom/google/android/gms/internal/zzcgl;)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckp;->zzjij:Lcom/google/android/gms/internal/zzckg;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjim:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzckp;->zzjin:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzckp;->zzjio:Lcom/google/android/gms/internal/zzcgl;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzckp;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzckp;->zzjip:Lcom/google/android/gms/internal/zzcgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zzd(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzche;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjim:Z

    if-eqz v0, :cond_31

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckp;->zzjij:Lcom/google/android/gms/internal/zzckg;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjin:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    :goto_23
    iget-object v3, p0, Lcom/google/android/gms/internal/zzckp;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/internal/zzche;Lcom/google/android/gms/internal/zzbfm;Lcom/google/android/gms/internal/zzcgi;)V

    :goto_28
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckg;->zze(Lcom/google/android/gms/internal/zzckg;)V

    goto :goto_17

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjio:Lcom/google/android/gms/internal/zzcgl;

    goto :goto_23

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjip:Lcom/google/android/gms/internal/zzcgl;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjio:Lcom/google/android/gms/internal/zzcgl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckp;->zzjgn:Lcom/google/android/gms/internal/zzcgi;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzche;->zza(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_42} :catch_43

    goto :goto_28

    :catch_43
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckp;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_28

    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckp;->zzjio:Lcom/google/android/gms/internal/zzcgl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzche;->zzb(Lcom/google/android/gms/internal/zzcgl;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_59} :catch_43

    goto :goto_28
.end method
