.class final Lcom/google/android/gms/internal/zzech;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmqe:Lcom/google/android/gms/internal/zzecf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzecf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzech;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzech;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzg(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzecj;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzech;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzg(Lcom/google/android/gms/internal/zzecf;)Lcom/google/android/gms/internal/zzecj;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzecj;->zzps(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzech;->zzmqe:Lcom/google/android/gms/internal/zzecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecf;->zzc(Lcom/google/android/gms/internal/zzecf;)V

    :cond_18
    return-void
.end method
