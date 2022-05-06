.class final Lcom/google/firebase/database/zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmka:Lcom/google/android/gms/internal/zzelq;

.field private synthetic zzmkb:Lcom/google/firebase/database/DatabaseReference;

.field private synthetic zzmkd:Lcom/google/android/gms/internal/zzecy;

.field private synthetic zzmke:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzecy;Lcom/google/android/gms/internal/zzelq;Ljava/util/Map;)V
    .registers 5

    iput-object p1, p0, Lcom/google/firebase/database/zze;->zzmkb:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/zze;->zzmkd:Lcom/google/android/gms/internal/zzecy;

    iput-object p3, p0, Lcom/google/firebase/database/zze;->zzmka:Lcom/google/android/gms/internal/zzelq;

    iput-object p4, p0, Lcom/google/firebase/database/zze;->zzmke:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/database/zze;->zzmkb:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, v0, Lcom/google/firebase/database/DatabaseReference;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v0, p0, Lcom/google/firebase/database/zze;->zzmkb:Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, v0, Lcom/google/firebase/database/Query;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v3, p0, Lcom/google/firebase/database/zze;->zzmkd:Lcom/google/android/gms/internal/zzecy;

    iget-object v0, p0, Lcom/google/firebase/database/zze;->zzmka:Lcom/google/android/gms/internal/zzelq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelq;->zzcbg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v4, p0, Lcom/google/firebase/database/zze;->zzmke:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V

    return-void
.end method
