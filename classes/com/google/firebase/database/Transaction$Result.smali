.class public Lcom/google/firebase/database/Transaction$Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private zzmld:Z

.field private zzmle:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method private constructor <init>(ZLcom/google/android/gms/internal/zzekd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/firebase/database/Transaction$Result;->zzmld:Z

    iput-object p2, p0, Lcom/google/firebase/database/Transaction$Result;->zzmle:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/zzt;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/Transaction$Result;-><init>(ZLcom/google/android/gms/internal/zzekd;)V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/firebase/database/Transaction$Result;->zzmld:Z

    return v0
.end method

.method public final zzbsv()Lcom/google/android/gms/internal/zzekd;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/database/Transaction$Result;->zzmle:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method
