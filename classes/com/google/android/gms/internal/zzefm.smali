.class final Lcom/google/android/gms/internal/zzefm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehp",
        "<",
        "Lcom/google/android/gms/internal/zzefg;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    check-cast p2, Lcom/google/android/gms/internal/zzefg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzefg;->zzbwu()Lcom/google/android/gms/internal/zzeil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefh;->zzh(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzefz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzefz;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;)V

    :cond_2b
    const/4 v0, 0x0

    return-object v0

    :cond_2d
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzefg;->zzbws()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzefh;->zzh(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzefz;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefm;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/zzefz;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;)V

    goto :goto_35
.end method
