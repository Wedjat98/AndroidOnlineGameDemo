.class public final Lcom/google/android/gms/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private zzdok:Lcom/google/android/gms/internal/zzasc;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzdok:Lcom/google/android/gms/internal/zzasc;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzasc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzasc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzdok:Lcom/google/android/gms/internal/zzasc;

    :cond_b
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzasc;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
