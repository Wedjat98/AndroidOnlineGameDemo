.class public final Lcom/google/android/gms/internal/zzchl;
.super Lcom/google/android/gms/common/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzd",
        "<",
        "Lcom/google/android/gms/internal/zzche;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;)V
    .registers 12

    const/16 v3, 0x5d

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzd;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzche;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/zzche;

    goto :goto_3

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/zzchg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzchg;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method protected final zzhi()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.measurement.START"

    return-object v0
.end method

.method protected final zzhj()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0
.end method
