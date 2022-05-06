.class final Lcom/google/firebase/database/connection/idl/zzac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzebn;


# instance fields
.field private synthetic zzmqv:Lcom/google/firebase/database/connection/idl/zzw;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzac;->zzmqv:Lcom/google/firebase/database/connection/idl/zzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnect()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzac;->zzmqv:Lcom/google/firebase/database/connection/idl/zzw;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzw;->onDisconnect()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzac;->zzmqv:Lcom/google/firebase/database/connection/idl/zzw;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzb(Ljava/lang/Long;)J

    move-result-wide v4

    move-object v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/firebase/database/connection/idl/zzw;->zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzecd;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzecd;

    new-instance v4, Lcom/google/firebase/database/connection/idl/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecd;->zzbva()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecd;->zzbvb()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/database/connection/idl/zzak;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzecd;->zzbvc()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzac;->zzmqv:Lcom/google/firebase/database/connection/idl/zzw;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-static {p3}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzb(Ljava/lang/Long;)J

    move-result-wide v4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/firebase/database/connection/idl/zzw;->zza(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;J)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzai(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzac;->zzmqv:Lcom/google/firebase/database/connection/idl/zzw;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/connection/idl/zzw;->zzag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzbuk()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzac;->zzmqv:Lcom/google/firebase/database/connection/idl/zzw;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzw;->zzbuk()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzcl(Z)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzac;->zzmqv:Lcom/google/firebase/database/connection/idl/zzw;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/idl/zzw;->zzcl(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
