.class final Lcom/google/android/gms/internal/zzeij;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zznan:I

.field public static final enum zznao:I

.field private static final synthetic zznap:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/google/android/gms/internal/zzeij;->zznan:I

    sput v0, Lcom/google/android/gms/internal/zzeij;->zznao:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/gms/internal/zzeij;->zznan:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/gms/internal/zzeij;->zznao:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/zzeij;->zznap:[I

    return-void
.end method

.method public static values$50KLMJ33DTMIUPRFDTJMOP9FCPKN4PB2C5PMABR4C5Q62OJ1EDIIUORFE9IIUTJ9CLRIUKBLCLP7IK31E9GMQSP4APKMATQ6E9NMQEO_0()[I
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzeij;->zznap:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
