.class final Lcom/google/android/gms/internal/zzeie;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/zzehz;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zznab:Lcom/google/android/gms/internal/zzeid;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeid;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeie;->zznab:Lcom/google/android/gms/internal/zzeid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/google/android/gms/internal/zzehz;

    check-cast p2, Lcom/google/android/gms/internal/zzehz;

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehz;->zzbyd()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehz;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    new-instance v1, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehz;->zzbyd()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehz;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeie;->zznab:Lcom/google/android/gms/internal/zzeid;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeid;->zza(Lcom/google/android/gms/internal/zzeid;)Lcom/google/android/gms/internal/zzejv;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzejv;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
