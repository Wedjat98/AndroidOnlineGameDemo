.class public final enum Lcom/google/android/gms/internal/zzeic;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzeic;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzmzt:Lcom/google/android/gms/internal/zzeic;

.field public static final enum zzmzu:Lcom/google/android/gms/internal/zzeic;

.field public static final enum zzmzv:Lcom/google/android/gms/internal/zzeic;

.field public static final enum zzmzw:Lcom/google/android/gms/internal/zzeic;

.field public static final enum zzmzx:Lcom/google/android/gms/internal/zzeic;

.field private static final synthetic zzmzy:[Lcom/google/android/gms/internal/zzeic;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzeic;

    const-string v1, "CHILD_REMOVED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzeic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeic;->zzmzt:Lcom/google/android/gms/internal/zzeic;

    new-instance v0, Lcom/google/android/gms/internal/zzeic;

    const-string v1, "CHILD_ADDED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzeic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeic;->zzmzu:Lcom/google/android/gms/internal/zzeic;

    new-instance v0, Lcom/google/android/gms/internal/zzeic;

    const-string v1, "CHILD_MOVED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzeic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeic;->zzmzv:Lcom/google/android/gms/internal/zzeic;

    new-instance v0, Lcom/google/android/gms/internal/zzeic;

    const-string v1, "CHILD_CHANGED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzeic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeic;->zzmzw:Lcom/google/android/gms/internal/zzeic;

    new-instance v0, Lcom/google/android/gms/internal/zzeic;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzeic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzeic;->zzmzx:Lcom/google/android/gms/internal/zzeic;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/zzeic;

    sget-object v1, Lcom/google/android/gms/internal/zzeic;->zzmzt:Lcom/google/android/gms/internal/zzeic;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzeic;->zzmzu:Lcom/google/android/gms/internal/zzeic;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzeic;->zzmzv:Lcom/google/android/gms/internal/zzeic;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzeic;->zzmzw:Lcom/google/android/gms/internal/zzeic;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzeic;->zzmzx:Lcom/google/android/gms/internal/zzeic;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/zzeic;->zzmzy:[Lcom/google/android/gms/internal/zzeic;

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

.method public static values()[Lcom/google/android/gms/internal/zzeic;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzeic;->zzmzy:[Lcom/google/android/gms/internal/zzeic;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzeic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzeic;

    return-object v0
.end method
