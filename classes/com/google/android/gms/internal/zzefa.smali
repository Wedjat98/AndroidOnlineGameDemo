.class public final Lcom/google/android/gms/internal/zzefa;
.super Ljava/lang/Object;


# instance fields
.field private zzmvg:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefa;->zzmvg:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzekd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefa;->zzmvg:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method


# virtual methods
.method public final zzbwr()Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefa;->zzmvg:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefa;->zzmvg:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefa;->zzmvg:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefa;->zzmvg:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0
.end method
