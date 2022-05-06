.class public Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;
.super Lcom/google/firebase/database/connection/idl/zzu;


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field private zzmqr:Lcom/google/android/gms/internal/zzebm;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzu;-><init>()V

    return-void
.end method

.method public static loadDynamic(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/zzebg;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzebn;)Lcom/google/firebase/database/connection/idl/zzt;
    .registers 9

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzgxa:Lcom/google/android/gms/dynamite/DynamiteModule$zzd;

    const-string v1, "com.google.android.gms.firebase_database"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzd;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.firebase.database.connection.idl.IPersistentConnectionImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhb(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zzu;->asInterface(Landroid/os/IBinder;)Lcom/google/firebase/database/connection/idl/zzt;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/connection/idl/zzad;

    invoke-direct {v1, p2}, Lcom/google/firebase/database/connection/idl/zzad;-><init>(Lcom/google/android/gms/internal/zzebg;)V

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/database/connection/idl/zzab;

    invoke-direct {v3, p4}, Lcom/google/firebase/database/connection/idl/zzab;-><init>(Lcom/google/android/gms/internal/zzebn;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/firebase/database/connection/idl/zzt;->setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzw;)V
    :try_end_23
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_0 .. :try_end_23} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_2b

    return-object v0

    :catch_24
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zza(Ljava/lang/Long;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag parameter clashed with NO_TAG value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_18
    return-wide v0
.end method

.method private static zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzece;
    .registers 2

    new-instance v0, Lcom/google/firebase/database/connection/idl/zzaa;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/idl/zzaa;-><init>(Lcom/google/firebase/database/connection/idl/zzah;)V

    return-object v0
.end method

.method static synthetic zzb(Ljava/lang/Long;)J
    .registers 3

    invoke-static {p0}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static zzbq(J)Ljava/lang/Long;
    .registers 4

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7
.end method

.method static synthetic zzbr(J)Ljava/lang/Long;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzbq(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareAndPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/firebase/database/connection/idl/zzah;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzece;

    move-result-object v2

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/google/android/gms/internal/zzebm;->zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method public initialize()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebm;->initialize()V

    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzebm;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public isInterrupted(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzebm;->isInterrupted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listen(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzq;JLcom/google/firebase/database/connection/idl/zzah;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzq;",
            "J",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzbq(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Lcom/google/firebase/database/connection/idl/zzz;

    invoke-direct {v3, p0, p3}, Lcom/google/firebase/database/connection/idl/zzz;-><init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;Lcom/google/firebase/database/connection/idl/zzq;)V

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-static {p6}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzece;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzebm;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzebl;Ljava/lang/Long;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method public merge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzece;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/zzebm;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method public onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/idl/zzah;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-static {p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzece;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzebm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method public onDisconnectMerge(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzece;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/zzebm;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method public onDisconnectPut(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzece;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzebm;->zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebm;->purgeOutstandingWrites()V

    return-void
.end method

.method public put(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzah;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/firebase/database/connection/idl/zzah;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zza(Lcom/google/firebase/database/connection/idl/zzah;)Lcom/google/android/gms/internal/zzece;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzebm;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzece;)V

    return-void
.end method

.method public refreshAuthToken()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebm;->refreshAuthToken()V

    return-void
.end method

.method public refreshAuthToken2(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzebm;->zzpn(Ljava/lang/String;)V

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzebm;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public setup(Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/firebase/database/connection/idl/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/database/connection/idl/zzw;)V
    .registers 15

    iget-object v0, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzmqj:Lcom/google/firebase/database/connection/idl/zzi;

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zzi;->zza(Lcom/google/firebase/database/connection/idl/zzi;)Lcom/google/android/gms/internal/zzebk;

    move-result-object v8

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lcom/google/firebase/database/connection/idl/zzac;

    invoke-direct {v9, p4}, Lcom/google/firebase/database/connection/idl/zzac;-><init>(Lcom/google/firebase/database/connection/idl/zzw;)V

    new-instance v1, Lcom/google/android/gms/internal/zzeiz;

    iget v0, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzmqk:I

    packed-switch v0, :pswitch_data_48

    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbq:Lcom/google/android/gms/internal/zzeje;

    :goto_1a
    iget-object v2, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzmql:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzeiz;-><init>(Lcom/google/android/gms/internal/zzeje;Ljava/util/List;)V

    new-instance v2, Lcom/google/firebase/database/connection/idl/zzaf;

    invoke-direct {v2, p2}, Lcom/google/firebase/database/connection/idl/zzaf;-><init>(Lcom/google/firebase/database/connection/idl/zzk;)V

    new-instance v0, Lcom/google/android/gms/internal/zzebi;

    iget-boolean v4, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzmnr:Z

    iget-object v5, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzmqm:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzmnt:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/firebase/database/connection/idl/zzc;->zzmnu:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzebi;-><init>(Lcom/google/android/gms/internal/zzejd;Lcom/google/android/gms/internal/zzebg;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzebo;

    invoke-direct {v1, v0, v8, v9}, Lcom/google/android/gms/internal/zzebo;-><init>(Lcom/google/android/gms/internal/zzebi;Lcom/google/android/gms/internal/zzebk;Lcom/google/android/gms/internal/zzebn;)V

    iput-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    return-void

    :pswitch_39
    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbq:Lcom/google/android/gms/internal/zzeje;

    goto :goto_1a

    :pswitch_3c
    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbm:Lcom/google/android/gms/internal/zzeje;

    goto :goto_1a

    :pswitch_3f
    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbn:Lcom/google/android/gms/internal/zzeje;

    goto :goto_1a

    :pswitch_42
    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbo:Lcom/google/android/gms/internal/zzeje;

    goto :goto_1a

    :pswitch_45
    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbp:Lcom/google/android/gms/internal/zzeje;

    goto :goto_1a

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
    .end packed-switch
.end method

.method public shutdown()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebm;->shutdown()V

    return-void
.end method

.method public unlisten(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzmqr:Lcom/google/android/gms/internal/zzebm;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/zzebm;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
