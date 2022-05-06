.class final Lcom/google/firebase/database/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmjz:Lcom/google/android/gms/internal/zzekd;

.field private synthetic zzmka:Lcom/google/android/gms/internal/zzelq;

.field private synthetic zzmkb:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzelq;)V
    .registers 4

    iput-object p1, p0, Lcom/google/firebase/database/zzc;->zzmkb:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/zzc;->zzmjz:Lcom/google/android/gms/internal/zzekd;

    iput-object p3, p0, Lcom/google/firebase/database/zzc;->zzmka:Lcom/google/android/gms/internal/zzelq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/database/zzc;->zzmkb:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, v0, Lcom/google/firebase/database/DatabaseReference;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v0, p0, Lcom/google/firebase/database/zzc;->zzmkb:Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, v0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v3, p0, Lcom/google/firebase/database/zzc;->zzmjz:Lcom/google/android/gms/internal/zzekd;

    iget-object v0, p0, Lcom/google/firebase/database/zzc;->zzmka:Lcom/google/android/gms/internal/zzelq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelq;->zzcbg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
