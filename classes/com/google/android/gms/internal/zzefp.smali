.class final Lcom/google/android/gms/internal/zzefp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/android/gms/internal/zzeib;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzmuf:J

.field private synthetic zzmvv:Z

.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;

.field private synthetic zzmwj:Z

.field private synthetic zzmwk:Lcom/google/android/gms/internal/zzeli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;ZJZLcom/google/android/gms/internal/zzeli;)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefp;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzefp;->zzmvv:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzefp;->zzmuf:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzefp;->zzmwj:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzefp;->zzmwk:Lcom/google/android/gms/internal/zzeli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmvv:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzefp;->zzmuf:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzegy;->zzbl(J)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzc(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegg;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzefp;->zzmuf:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzegg;->zzbv(J)Lcom/google/android/gms/internal/zzegd;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzc(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegg;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzefp;->zzmuf:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzegg;->zzbw(J)Z

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzefp;->zzmwj:Z

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefp;->zzmwk:Lcom/google/android/gms/internal/zzeli;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeex;->zza(Lcom/google/android/gms/internal/zzeli;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->zzbxb()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->zzbwz()Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzeex;->zza(Lcom/google/android/gms/internal/zzekd;Ljava/util/Map;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefp;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/zzegy;->zzk(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    :cond_53
    :goto_53
    if-nez v0, :cond_70

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_59
    return-object v0

    :cond_5a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->zzbxa()Lcom/google/android/gms/internal/zzecy;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzeex;->zza(Lcom/google/android/gms/internal/zzecy;Ljava/util/Map;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefp;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/zzegy;->zzc(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    goto :goto_53

    :cond_70
    invoke-static {}, Lcom/google/android/gms/internal/zzehm;->zzbxw()Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->zzbxb()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v1

    :cond_86
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    new-instance v3, Lcom/google/android/gms/internal/zzegl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzefp;->zzmwj:Z

    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/gms/internal/zzegl;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;Z)V

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;

    move-result-object v0

    goto :goto_59

    :cond_98
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->zzbxa()Lcom/google/android/gms/internal/zzecy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzecy;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_a1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzedk;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    move-object v1, v0

    goto :goto_a1
.end method
