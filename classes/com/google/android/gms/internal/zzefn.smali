.class final Lcom/google/android/gms/internal/zzefn;
.super Lcom/google/android/gms/internal/zzear;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzear",
        "<",
        "Lcom/google/android/gms/internal/zzejg;",
        "Lcom/google/android/gms/internal/zzehm",
        "<",
        "Lcom/google/android/gms/internal/zzefg;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzmtm:Ljava/util/List;

.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;

.field private synthetic zzmwe:Lcom/google/android/gms/internal/zzekd;

.field private synthetic zzmwf:Lcom/google/android/gms/internal/zzegj;

.field private synthetic zzmwg:Lcom/google/android/gms/internal/zzego;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzego;Ljava/util/List;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefn;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefn;->zzmwe:Lcom/google/android/gms/internal/zzekd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefn;->zzmwf:Lcom/google/android/gms/internal/zzegj;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzefn;->zzmwg:Lcom/google/android/gms/internal/zzego;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzefn;->zzmtm:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzear;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    check-cast p1, Lcom/google/android/gms/internal/zzejg;

    check-cast p2, Lcom/google/android/gms/internal/zzehm;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefn;->zzmwe:Lcom/google/android/gms/internal/zzekd;

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefn;->zzmwe:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzefn;->zzmwf:Lcom/google/android/gms/internal/zzegj;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzegj;->zzb(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzegj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefn;->zzmwg:Lcom/google/android/gms/internal/zzego;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzego;->zzc(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzego;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefn;->zzmtm:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefn;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v4, v2, p2, v0, v1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzegj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_28
    return-void
.end method
