.class final Lcom/google/android/gms/internal/zzeej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmuc:Lcom/google/android/gms/internal/zzegd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzegd;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeej;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeej;->zzmuc:Lcom/google/android/gms/internal/zzegd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzbf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeej;->zzmti:Lcom/google/android/gms/internal/zzedn;

    const-string v2, "Persisted write"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeej;->zzmuc:Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeej;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeej;->zzmuc:Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegd;->zzbwy()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeej;->zzmuc:Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;JLcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method
