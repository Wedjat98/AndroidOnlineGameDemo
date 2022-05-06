.class public final enum Lcom/google/android/gms/internal/zzeje;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzeje;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zznbm:Lcom/google/android/gms/internal/zzeje;

.field public static final enum zznbn:Lcom/google/android/gms/internal/zzeje;

.field public static final enum zznbo:Lcom/google/android/gms/internal/zzeje;

.field public static final enum zznbp:Lcom/google/android/gms/internal/zzeje;

.field public static final enum zznbq:Lcom/google/android/gms/internal/zzeje;

.field private static final synthetic zznbr:[Lcom/google/android/gms/internal/zzeje;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzeje;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzeje;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeje;->zznbm:Lcom/google/android/gms/internal/zzeje;

    new-instance v0, Lcom/google/android/gms/internal/zzeje;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzeje;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeje;->zznbn:Lcom/google/android/gms/internal/zzeje;

    new-instance v0, Lcom/google/android/gms/internal/zzeje;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzeje;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeje;->zznbo:Lcom/google/android/gms/internal/zzeje;

    new-instance v0, Lcom/google/android/gms/internal/zzeje;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzeje;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeje;->zznbp:Lcom/google/android/gms/internal/zzeje;

    new-instance v0, Lcom/google/android/gms/internal/zzeje;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzeje;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeje;->zznbq:Lcom/google/android/gms/internal/zzeje;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/zzeje;

    sget-object v1, Lcom/google/android/gms/internal/zzeje;->zznbm:Lcom/google/android/gms/internal/zzeje;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzeje;->zznbn:Lcom/google/android/gms/internal/zzeje;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzeje;->zznbo:Lcom/google/android/gms/internal/zzeje;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzeje;->zznbp:Lcom/google/android/gms/internal/zzeje;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzeje;->zznbq:Lcom/google/android/gms/internal/zzeje;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/zzeje;->zznbr:[Lcom/google/android/gms/internal/zzeje;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzeje;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzeje;->zznbr:[Lcom/google/android/gms/internal/zzeje;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzeje;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzeje;

    return-object v0
.end method
