.class final Lcom/google/android/gms/internal/zzdzy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$message:Ljava/lang/String;

.field private synthetic zzmlo:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdzx;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdzy;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdzy;->zzmlo:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzy;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdzy;->zzmlo:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
