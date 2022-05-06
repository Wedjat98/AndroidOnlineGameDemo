.class final Lcom/google/android/gms/internal/zzeei;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmua:Lcom/google/android/gms/internal/zzefw;

.field private synthetic zzmub:Lcom/google/android/gms/internal/zzeeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeeh;Lcom/google/android/gms/internal/zzefw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeei;->zzmub:Lcom/google/android/gms/internal/zzeeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeei;->zzmua:Lcom/google/android/gms/internal/zzefw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzbf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeei;->zzmua:Lcom/google/android/gms/internal/zzefw;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzefw;->zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeei;->zzmub:Lcom/google/android/gms/internal/zzeeh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeeh;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/util/List;)V

    return-void
.end method
