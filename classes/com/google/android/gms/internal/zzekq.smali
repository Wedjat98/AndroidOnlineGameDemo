.class final Lcom/google/android/gms/internal/zzekq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzekp;


# static fields
.field private static zzndn:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private static zzndo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzndp:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzekr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzekr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzekq;->zzndn:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/zzeks;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeks;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzekq;->zzndo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzekq;->zzndp:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zzap([B)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzekq;->zzndn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public final zzao([B)Z
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzekq;->zzap([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekq;->zzndp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final zzcar()Lcom/google/android/gms/internal/zzelc;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzelc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekq;->zzndp:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzelc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
