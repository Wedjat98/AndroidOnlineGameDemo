.class final Lcom/google/android/gms/internal/zzeht;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehv",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic zzmzg:Lcom/google/android/gms/internal/zzehv;

.field private synthetic zzmzh:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzehs;Lcom/google/android/gms/internal/zzehv;Z)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeht;->zzmzg:Lcom/google/android/gms/internal/zzehv;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzeht;->zzmzh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/zzehs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehs",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeht;->zzmzg:Lcom/google/android/gms/internal/zzehv;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzeht;->zzmzh:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzehs;->zza(Lcom/google/android/gms/internal/zzehv;ZZ)V

    return-void
.end method
