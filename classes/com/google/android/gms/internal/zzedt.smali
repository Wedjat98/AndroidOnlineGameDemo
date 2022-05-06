.class final Lcom/google/android/gms/internal/zzedt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmkf:Lcom/google/firebase/database/Transaction$Handler;

.field private synthetic zzmtn:Lcom/google/firebase/database/DatabaseError;

.field private synthetic zzmto:Lcom/google/firebase/database/DataSnapshot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V
    .registers 5

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedt;->zzmkf:Lcom/google/firebase/database/Transaction$Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzedt;->zzmtn:Lcom/google/firebase/database/DatabaseError;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzedt;->zzmto:Lcom/google/firebase/database/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedt;->zzmkf:Lcom/google/firebase/database/Transaction$Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedt;->zzmtn:Lcom/google/firebase/database/DatabaseError;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzedt;->zzmto:Lcom/google/firebase/database/DataSnapshot;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/Transaction$Handler;->onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method
