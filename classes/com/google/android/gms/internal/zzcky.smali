.class final Lcom/google/android/gms/internal/zzcky;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjit:Lcom/google/android/gms/internal/zzcku;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcku;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcky;->zzjit:Lcom/google/android/gms/internal/zzcku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcky;->zzjit:Lcom/google/android/gms/internal/zzcku;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcku;->zzjij:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/internal/zzckg;Landroid/content/ComponentName;)V

    return-void
.end method
