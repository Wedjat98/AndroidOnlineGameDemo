.class public final Lcom/google/android/gms/internal/zzckg;
.super Lcom/google/android/gms/internal/zzcjl;


# instance fields
.field private final zzjic:Lcom/google/android/gms/internal/zzcku;

.field private zzjid:Lcom/google/android/gms/internal/zzche;

.field private volatile zzjie:Ljava/lang/Boolean;

.field private final zzjif:Lcom/google/android/gms/internal/zzcgs;

.field private final zzjig:Lcom/google/android/gms/internal/zzclk;

.field private final zzjih:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzjii:Lcom/google/android/gms/internal/zzcgs;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjih:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzclk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcim;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzclk;-><init>(Lcom/google/android/gms/common/util/zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjig:Lcom/google/android/gms/internal/zzclk;

    new-instance v0, Lcom/google/android/gms/internal/zzcku;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcku;-><init>(Lcom/google/android/gms/internal/zzckg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjic:Lcom/google/android/gms/internal/zzcku;

    new-instance v0, Lcom/google/android/gms/internal/zzckh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzckh;-><init>(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/internal/zzcim;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjif:Lcom/google/android/gms/internal/zzcgs;

    new-instance v0, Lcom/google/android/gms/internal/zzckm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzckm;-><init>(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/internal/zzcim;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjii:Lcom/google/android/gms/internal/zzcgs;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjid:Lcom/google/android/gms/internal/zzche;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjid:Lcom/google/android/gms/internal/zzche;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzckg;->zzyc()V

    :cond_1d
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/internal/zzche;)Lcom/google/android/gms/internal/zzche;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjid:Lcom/google/android/gms/internal/zzche;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzcku;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjic:Lcom/google/android/gms/internal/zzcku;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzckg;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzckg;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzckg;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzckg;->zzbat()V

    return-void
.end method

.method private final zzbat()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckg;->zzjih:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjih:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :try_start_2c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_20

    :catch_30
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_20

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjih:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjii:Lcom/google/android/gms/internal/zzcgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgs;->cancel()V

    return-void
.end method

.method private final zzbr(Z)Lcom/google/android/gms/internal/zzcgi;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazk()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzchh;->zzjg(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzckg;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzckg;->zzxs()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzckg;)Lcom/google/android/gms/internal/zzche;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjid:Lcom/google/android/gms/internal/zzche;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzckg;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzckg;->zzxr()V

    return-void
.end method

.method private final zzj(Ljava/lang/Runnable;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzckg;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjih:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto :goto_c

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjih:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjii:Lcom/google/android/gms/internal/zzcgs;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcgs;->zzs(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzckg;->zzyc()V

    goto :goto_c
.end method

.method private final zzxr()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjig:Lcom/google/android/gms/internal/zzclk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclk;->start()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckg;->zzjif:Lcom/google/android/gms/internal/zzcgs;

    sget-object v0, Lcom/google/android/gms/internal/zzchc;->zzjbj:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgs;->zzs(J)V

    return-void
.end method

.method private final zzxs()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzckg;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzckg;->disconnect()V

    goto :goto_9
.end method


# virtual methods
.method public final disconnect()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzamc()Lcom/google/android/gms/common/stats/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckg;->zzjic:Lcom/google/android/gms/internal/zzcku;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_12} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_12} :catch_18

    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjid:Lcom/google/android/gms/internal/zzche;

    return-void

    :catch_16
    move-exception v0

    goto :goto_12

    :catch_18
    move-exception v0

    goto :goto_12
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjid:Lcom/google/android/gms/internal/zzche;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected final resetAnalyticsData()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzbr(Z)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchi;->resetAnalyticsData()V

    new-instance v1, Lcom/google/android/gms/internal/zzcki;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzcki;-><init>(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzche;)V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckg;->zzjid:Lcom/google/android/gms/internal/zzche;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzckg;->zzxr()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzckg;->zzbat()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/zzche;Lcom/google/android/gms/internal/zzbfm;Lcom/google/android/gms/internal/zzcgi;)V
    .registers 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v3, 0x0

    const/16 v6, 0x64

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    move v5, v3

    move v4, v6

    :goto_b
    const/16 v0, 0x3e9

    if-ge v5, v0, :cond_9e

    if-ne v4, v6, :cond_9e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/zzchi;->zzeb(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9f

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v4, v1

    :goto_28
    if-eqz p2, :cond_2f

    if-ge v4, v6, :cond_2f

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    :goto_36
    if-ge v2, v7, :cond_99

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/internal/zzbfm;

    instance-of v8, v1, Lcom/google/android/gms/internal/zzcha;

    if-eqz v8, :cond_59

    :try_start_44
    check-cast v1, Lcom/google/android/gms/internal/zzcha;

    invoke-interface {p1, v1, p3}, Lcom/google/android/gms/internal/zzche;->zza(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4a

    goto :goto_36

    :catch_4a
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v8

    const-string v9, "Failed to send event to the service"

    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    :cond_59
    instance-of v8, v1, Lcom/google/android/gms/internal/zzcln;

    if-eqz v8, :cond_72

    :try_start_5d
    check-cast v1, Lcom/google/android/gms/internal/zzcln;

    invoke-interface {p1, v1, p3}, Lcom/google/android/gms/internal/zzche;->zza(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_62} :catch_63

    goto :goto_36

    :catch_63
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v8

    const-string v9, "Failed to send attribute to the service"

    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    :cond_72
    instance-of v8, v1, Lcom/google/android/gms/internal/zzcgl;

    if-eqz v8, :cond_8b

    :try_start_76
    check-cast v1, Lcom/google/android/gms/internal/zzcgl;

    invoke-interface {p1, v1, p3}, Lcom/google/android/gms/internal/zzche;->zza(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7b} :catch_7c

    goto :goto_36

    :catch_7c
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v8

    const-string v9, "Failed to send conditional property to the service"

    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v8, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto :goto_36

    :cond_99
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_b

    :cond_9e
    return-void

    :cond_9f
    move v4, v3

    goto :goto_28
.end method

.method protected final zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    new-instance v0, Lcom/google/android/gms/internal/zzckl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzckl;-><init>(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzbr(Z)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckj;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/zzckj;-><init>(Lcom/google/android/gms/internal/zzckg;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcgl;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzbr(Z)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/zzckq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzckq;-><init>(Lcom/google/android/gms/internal/zzckg;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcln;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzbr(Z)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzckr;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzckr;-><init>(Lcom/google/android/gms/internal/zzckg;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzcgi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcln;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzbr(Z)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckt;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzckt;-><init>(Lcom/google/android/gms/internal/zzckg;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzcgi;Z)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzawi()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawi()V

    return-void
.end method

.method public final bridge synthetic zzawj()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawj()V

    return-void
.end method

.method public final bridge synthetic zzawk()Lcom/google/android/gms/internal/zzcgd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawl()Lcom/google/android/gms/internal/zzcgk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawm()Lcom/google/android/gms/internal/zzcjn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawn()Lcom/google/android/gms/internal/zzchh;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawo()Lcom/google/android/gms/internal/zzcgu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawp()Lcom/google/android/gms/internal/zzckg;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawq()Lcom/google/android/gms/internal/zzckc;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawr()Lcom/google/android/gms/internal/zzchi;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaws()Lcom/google/android/gms/internal/zzcgo;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawt()Lcom/google/android/gms/internal/zzchk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawu()Lcom/google/android/gms/internal/zzclq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawv()Lcom/google/android/gms/internal/zzcig;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaww()Lcom/google/android/gms/internal/zzclf;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaww()Lcom/google/android/gms/internal/zzclf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawx()Lcom/google/android/gms/internal/zzcih;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawy()Lcom/google/android/gms/internal/zzchm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawz()Lcom/google/android/gms/internal/zzchx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaxa()Lcom/google/android/gms/internal/zzcgn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaxa()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzaxz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzcln;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzchi;->zza(Lcom/google/android/gms/internal/zzcln;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_12
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzckg;->zzbr(Z)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcks;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzcks;-><init>(Lcom/google/android/gms/internal/zzckg;ZLcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected final zzbaq()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzbr(Z)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckn;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzckn;-><init>(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzbar()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzbr(Z)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzckk;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzckk;-><init>(Lcom/google/android/gms/internal/zzckg;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzbas()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjie:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected final zzc(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzchi;->zza(Lcom/google/android/gms/internal/zzcha;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v3, v2

    :goto_15
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzckg;->zzbr(Z)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/zzcko;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcko;-><init>(Lcom/google/android/gms/internal/zzckg;ZZLcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void

    :cond_25
    const/4 v3, 0x0

    goto :goto_15
.end method

.method protected final zzf(Lcom/google/android/gms/internal/zzcgl;)V
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzchi;->zzc(Lcom/google/android/gms/internal/zzcgl;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v3, v2

    :goto_15
    new-instance v4, Lcom/google/android/gms/internal/zzcgl;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzcgl;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzckg;->zzbr(Z)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/zzckp;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzckp;-><init>(Lcom/google/android/gms/internal/zzckg;ZZLcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;Lcom/google/android/gms/internal/zzcgl;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzckg;->zzj(Ljava/lang/Runnable;)V

    return-void

    :cond_29
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public final bridge synthetic zzve()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzve()V

    return-void
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/common/util/zzd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method

.method final zzyc()V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzckg;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjie:Ljava/lang/Boolean;

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchx;->zzazo()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v2

    :cond_2a
    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjie:Ljava/lang/Boolean;

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjie:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckg;->zzjic:Lcom/google/android/gms/internal/zzcku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcku;->zzbau()V

    goto :goto_e

    :cond_3e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchh;->zzazb()I

    move-result v0

    if-ne v0, v2, :cond_54

    move v3, v2

    move v0, v2

    :goto_4a
    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzchx;->zzbm(Z)V

    goto :goto_2a

    :cond_54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/zzf;->zzafy()Lcom/google/android/gms/common/zzf;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/zzf;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_168

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Unexpected service status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move v3, v1

    move v0, v1

    goto :goto_4a

    :sswitch_88
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    move v3, v2

    move v0, v2

    goto :goto_4a

    :sswitch_98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    move v3, v2

    move v0, v1

    goto :goto_4a

    :sswitch_a8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    move v3, v2

    move v0, v2

    goto :goto_4a

    :sswitch_b8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/zzf;->zzafy()Lcom/google/android/gms/common/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/zzf;->zzcf(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x2c88

    if-ge v0, v3, :cond_dc

    move v3, v2

    move v0, v1

    goto/16 :goto_4a

    :cond_dc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchx;->zzazo()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_ec

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f0

    :cond_ec
    move v0, v2

    :goto_ed
    move v3, v1

    goto/16 :goto_4a

    :cond_f0
    move v0, v1

    goto :goto_ed

    :sswitch_f2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v3, "Service disabled"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    move v3, v1

    move v0, v1

    goto/16 :goto_4a

    :sswitch_103
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v3, "Service invalid"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    move v3, v1

    move v0, v1

    goto/16 :goto_4a

    :cond_114
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_157

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_157

    :goto_139
    if-eqz v2, :cond_159

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckg;->zzjic:Lcom/google/android/gms/internal/zzcku;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcku;->zzn(Landroid/content/Intent;)V

    goto/16 :goto_e

    :cond_157
    move v2, v1

    goto :goto_139

    :cond_159
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_data_168
    .sparse-switch
        0x0 -> :sswitch_88
        0x1 -> :sswitch_98
        0x2 -> :sswitch_b8
        0x3 -> :sswitch_f2
        0x9 -> :sswitch_103
        0x12 -> :sswitch_a8
    .end sparse-switch
.end method
