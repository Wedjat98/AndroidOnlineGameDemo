.class public abstract Lcom/google/android/gms/internal/zzejv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/zzekc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzekc;Lcom/google/android/gms/internal/zzekc;Z)I
    .registers 5

    if-eqz p3, :cond_7

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzejv;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzejv;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_6
.end method

.method public abstract zzcag()Lcom/google/android/gms/internal/zzekc;
.end method

.method public abstract zzcah()Ljava/lang/String;
.end method

.method public abstract zzf(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekc;
.end method

.method public abstract zzi(Lcom/google/android/gms/internal/zzekd;)Z
.end method
