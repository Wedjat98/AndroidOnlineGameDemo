.class public abstract Lcom/google/android/gms/internal/zzcaq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzbha:I

.field private final zzbhb:Ljava/lang/String;

.field private final zzbhc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcaq;->zzbha:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcaq;->zzbhb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcaq;->zzbhc:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzcbb;->zzarb()Lcom/google/android/gms/internal/zzcaw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcaw;->zza(Lcom/google/android/gms/internal/zzcaq;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzcar;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcaq;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcas;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzcas;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzcas;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzcat;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzcat;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzcat;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzcau;
    .registers 8

    new-instance v0, Lcom/google/android/gms/internal/zzcau;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzcau;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzbhb:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzbha:I

    return v0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzcay;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcay;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zziv()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcaq;->zzbhc:Ljava/lang/Object;

    return-object v0
.end method
