.class final Lcom/google/android/gms/internal/zzegi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehq",
        "<",
        "Lcom/google/android/gms/internal/zzegd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzbs(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegd;->isVisible()Z

    move-result v0

    return v0
.end method
