.class public final Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;
.super Lcom/google/firebase/analytics/FirebaseAnalytics$UserProperty;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserProperty"
.end annotation


# static fields
.field public static final FIREBASE_LAST_NOTIFICATION:Ljava/lang/String; = "_ln"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final zziwn:[Ljava/lang/String;

.field public static final zziwo:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "firebase_last_notification"

    aput-object v1, v0, v3

    const-string v1, "first_open_time"

    aput-object v1, v0, v4

    const-string v1, "first_visit_time"

    aput-object v1, v0, v5

    const-string v1, "last_deep_link_referrer"

    aput-object v1, v0, v6

    const-string v1, "user_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "first_open_after_install"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziwn:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ln"

    aput-object v1, v0, v3

    const-string v1, "_fot"

    aput-object v1, v0, v4

    const-string v1, "_fvt"

    aput-object v1, v0, v5

    const-string v1, "_ldl"

    aput-object v1, v0, v6

    const-string v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_fi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziwo:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics$UserProperty;-><init>()V

    return-void
.end method

.method public static zziq(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziwn:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zziwo:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
