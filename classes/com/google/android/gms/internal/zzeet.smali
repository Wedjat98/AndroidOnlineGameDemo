.class final Lcom/google/android/gms/internal/zzeet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmtq:Lcom/google/android/gms/internal/zzedn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeet;->zzmtq:Lcom/google/android/gms/internal/zzedn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeet;->zzmtq:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedn;->resume()V

    return-void
.end method
