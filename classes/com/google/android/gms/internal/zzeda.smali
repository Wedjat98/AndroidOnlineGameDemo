.class final Lcom/google/android/gms/internal/zzeda;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehp",
        "<",
        "Lcom/google/android/gms/internal/zzekd;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmrw:Ljava/util/Map;

.field private synthetic zzmrx:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzecy;Ljava/util/Map;Z)V
    .registers 5

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeda;->zzmrw:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeda;->zzmrx:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    check-cast p2, Lcom/google/android/gms/internal/zzekd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeda;->zzmrw:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwf()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzeda;->zzmrx:Z

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/zzekd;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
