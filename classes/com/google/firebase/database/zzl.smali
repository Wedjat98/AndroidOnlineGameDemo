.class final Lcom/google/firebase/database/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/firebase/database/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmkr:Lcom/google/firebase/database/zzk;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/zzk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/database/zzl;->zzmkr:Lcom/google/firebase/database/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/zzl;->zzmkr:Lcom/google/firebase/database/zzk;

    iget-object v0, v0, Lcom/google/firebase/database/zzk;->zzmjs:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/database/zzl;->zzmkr:Lcom/google/firebase/database/zzk;

    iget-object v0, v0, Lcom/google/firebase/database/zzk;->zzmjs:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    new-instance v1, Lcom/google/firebase/database/MutableData;

    iget-object v2, p0, Lcom/google/firebase/database/zzl;->zzmkr:Lcom/google/firebase/database/zzk;

    iget-object v2, v2, Lcom/google/firebase/database/zzk;->zzmkq:Lcom/google/firebase/database/MutableData;

    invoke-static {v2}, Lcom/google/firebase/database/MutableData;->zza(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/zzefa;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/zzl;->zzmkr:Lcom/google/firebase/database/zzk;

    iget-object v3, v3, Lcom/google/firebase/database/zzk;->zzmkq:Lcom/google/firebase/database/MutableData;

    invoke-static {v3}, Lcom/google/firebase/database/MutableData;->zzb(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzefa;Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/zzi;)V

    return-object v1
.end method

.method public final remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
