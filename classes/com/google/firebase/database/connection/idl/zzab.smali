.class final Lcom/google/firebase/database/connection/idl/zzab;
.super Lcom/google/firebase/database/connection/idl/zzx;


# instance fields
.field private synthetic zzmqu:Lcom/google/android/gms/internal/zzebn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzebn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzx;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnect()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebn;->onDisconnect()V

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "ZJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzbr(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/google/android/gms/internal/zzebn;->zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/connection/idl/zzak;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "J)V"
        }
    .end annotation

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2c

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/idl/zzak;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/firebase/database/connection/idl/zzak;->zza(Lcom/google/firebase/database/connection/idl/zzak;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzecd;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    :cond_2c
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzbr(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v3, v1}, Lcom/google/android/gms/internal/zzebn;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    return-void
.end method

.method public final zzag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzebn;->zzai(Ljava/util/Map;)V

    return-void
.end method

.method public final zzbuk()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzebn;->zzbuk()V

    return-void
.end method

.method public final zzcl(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzmqu:Lcom/google/android/gms/internal/zzebn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzebn;->zzcl(Z)V

    return-void
.end method
