.class final Lcom/google/firebase/database/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmka:Lcom/google/android/gms/internal/zzelq;

.field private synthetic zzmkt:Lcom/google/firebase/database/OnDisconnect;

.field private synthetic zzmku:Ljava/util/Map;

.field private synthetic zzmkv:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/OnDisconnect;Ljava/util/Map;Lcom/google/android/gms/internal/zzelq;Ljava/util/Map;)V
    .registers 5

    iput-object p1, p0, Lcom/google/firebase/database/zzn;->zzmkt:Lcom/google/firebase/database/OnDisconnect;

    iput-object p2, p0, Lcom/google/firebase/database/zzn;->zzmku:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/firebase/database/zzn;->zzmka:Lcom/google/android/gms/internal/zzelq;

    iput-object p4, p0, Lcom/google/firebase/database/zzn;->zzmkv:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/database/zzn;->zzmkt:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->zzb(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/zzedn;

    move-result-object v1

    iget-object v0, p0, Lcom/google/firebase/database/zzn;->zzmkt:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/zzn;->zzmku:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/firebase/database/zzn;->zzmka:Lcom/google/android/gms/internal/zzelq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelq;->zzcbg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v4, p0, Lcom/google/firebase/database/zzn;->zzmkv:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedk;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V

    return-void
.end method
