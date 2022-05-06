.class final synthetic Lcom/google/android/gms/internal/zzeii;
.super Ljava/lang/Object;


# static fields
.field static final synthetic zznam:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/zzeij;->values$50KLMJ33DTMIUPRFDTJMOP9FCPKN4PB2C5PMABR4C5Q62OJ1EDIIUORFE9IIUTJ9CLRIUKBLCLP7IK31E9GMQSP4APKMATQ6E9NMQEO_0()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zzeii;->zznam:[I

    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/zzeii;->zznam:[I

    sget v1, Lcom/google/android/gms/internal/zzeij;->zznan:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_1e

    :goto_12
    :try_start_12
    sget-object v0, Lcom/google/android/gms/internal/zzeii;->zznam:[I

    sget v1, Lcom/google/android/gms/internal/zzeij;->zznao:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b

    :catch_1e
    move-exception v0

    goto :goto_12
.end method
