.class final Lcom/google/firebase/database/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# instance fields
.field private synthetic zzmky:Lcom/google/firebase/database/ValueEventListener;

.field private synthetic zzmkz:Lcom/google/firebase/database/Query;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/firebase/database/zzp;->zzmkz:Lcom/google/firebase/database/Query;

    iput-object p2, p0, Lcom/google/firebase/database/zzp;->zzmky:Lcom/google/firebase/database/ValueEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/zzp;->zzmky:Lcom/google/firebase/database/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public final onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/zzp;->zzmkz:Lcom/google/firebase/database/Query;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    iget-object v0, p0, Lcom/google/firebase/database/zzp;->zzmky:Lcom/google/firebase/database/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onDataChange(Lcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method
