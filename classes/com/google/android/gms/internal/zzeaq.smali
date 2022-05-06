.class public final Lcom/google/android/gms/internal/zzeaq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzmml:I

.field public static final enum zzmmm:I

.field private static final synthetic zzmmn:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/zzeaq;->zzmml:I

    sput v1, Lcom/google/android/gms/internal/zzeaq;->zzmmm:I

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/google/android/gms/internal/zzeaq;->zzmmn:[I

    return-void

    :array_e
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
