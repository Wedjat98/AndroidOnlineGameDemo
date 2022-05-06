.class final Lcom/google/android/gms/internal/zzebr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzebx;


# instance fields
.field private synthetic zzmow:Lcom/google/android/gms/internal/zzece;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzebo;Lcom/google/android/gms/internal/zzece;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/zzebr;->zzmow:Lcom/google/android/gms/internal/zzece;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaj(Ljava/util/Map;)V
    .registers 5
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

    const/4 v1, 0x0

    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_19
    iget-object v2, p0, Lcom/google/android/gms/internal/zzebr;->zzmow:Lcom/google/android/gms/internal/zzece;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/google/android/gms/internal/zzebr;->zzmow:Lcom/google/android/gms/internal/zzece;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/zzece;->zzbd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void

    :cond_23
    move-object v0, v1

    goto :goto_19
.end method
