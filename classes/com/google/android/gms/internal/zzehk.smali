.class final Lcom/google/android/gms/internal/zzehk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehp",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/google/android/gms/internal/zzeih;",
        "Lcom/google/android/gms/internal/zzehe;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmyw:Lcom/google/android/gms/internal/zzehf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzehf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehk;->zzmyw:Lcom/google/android/gms/internal/zzehf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzehe;->complete:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehk;->zzmyw:Lcom/google/android/gms/internal/zzehf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehe;->zzbxt()Lcom/google/android/gms/internal/zzehe;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehf;Lcom/google/android/gms/internal/zzehe;)V

    goto :goto_a

    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method
