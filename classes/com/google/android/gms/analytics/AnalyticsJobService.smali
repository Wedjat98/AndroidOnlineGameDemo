.class public final Lcom/google/android/gms/analytics/AnalyticsJobService;
.super Landroid/app/job/JobService;

# interfaces
.implements Lcom/google/android/gms/internal/zzasg;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field private zzdoj:Lcom/google/android/gms/internal/zzasd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzasd",
            "<",
            "Lcom/google/android/gms/analytics/AnalyticsJobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private final zzuo()Lcom/google/android/gms/internal/zzasd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzasd",
            "<",
            "Lcom/google/android/gms/analytics/AnalyticsJobService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsJobService;->zzdoj:Lcom/google/android/gms/internal/zzasd;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzasd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzasd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsJobService;->zzdoj:Lcom/google/android/gms/internal/zzasd;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsJobService;->zzdoj:Lcom/google/android/gms/internal/zzasd;

    return-object v0
.end method


# virtual methods
.method public final callServiceStopSelfResult(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/AnalyticsJobService;->stopSelfResult(I)Z

    move-result v0

    return v0
.end method

.method public final onCreate()V
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->zzuo()Lcom/google/android/gms/internal/zzasd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasd;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->zzuo()Lcom/google/android/gms/internal/zzasd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasd;->onDestroy()V

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->zzuo()Lcom/google/android/gms/internal/zzasd;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzasd;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->zzuo()Lcom/google/android/gms/internal/zzasd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzasd;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result v0

    return v0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Landroid/app/job/JobParameters;Z)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
