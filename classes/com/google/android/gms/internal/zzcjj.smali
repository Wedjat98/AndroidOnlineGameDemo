.class final Lcom/google/android/gms/internal/zzcjj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzimf:Ljava/lang/String;

.field private synthetic zzjgo:Lcom/google/android/gms/internal/zzcir;

.field private synthetic zzjgu:Ljava/lang/String;

.field private synthetic zzjgv:Ljava/lang/String;

.field private synthetic zzjgw:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcir;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjj;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjj;->zzjgu:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcjj;->zzimf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcjj;->zzjgv:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcjj;->zzjgw:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjj;->zzjgu:Ljava/lang/String;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjj;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcir;->zza(Lcom/google/android/gms/internal/zzcir;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjj;->zzimf:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzckc;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    :goto_14
    return-void

    :cond_15
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjj;->zzjgv:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwk:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjj;->zzjgu:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwl:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcjj;->zzjgw:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwm:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjj;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcir;->zza(Lcom/google/android/gms/internal/zzcir;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcim;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjj;->zzimf:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzckc;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    goto :goto_14
.end method
