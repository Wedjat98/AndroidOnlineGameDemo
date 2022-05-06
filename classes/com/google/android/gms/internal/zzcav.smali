.class public final Lcom/google/android/gms/internal/zzcav;
.super Lcom/google/android/gms/internal/zzcaq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcaq",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/google/android/gms/internal/zzcaq;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzcar;)V

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/zzcay;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcaq;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcaq;->zziv()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcaq;->getSource()I

    move-result v2

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzcay;->getStringFlagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcaq;->zziv()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_12
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzcay;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcav;->zze(Lcom/google/android/gms/internal/zzcay;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
