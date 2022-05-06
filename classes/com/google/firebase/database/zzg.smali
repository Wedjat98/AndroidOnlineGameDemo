.class final Lcom/google/firebase/database/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmkm:Lcom/google/firebase/database/FirebaseDatabase;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/FirebaseDatabase;)V
    .registers 2

    iput-object p1, p0, Lcom/google/firebase/database/zzg;->zzmkm:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/zzg;->zzmkm:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-static {v0}, Lcom/google/firebase/database/FirebaseDatabase;->zza(Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/zzedn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedn;->purgeOutstandingWrites()V

    return-void
.end method
