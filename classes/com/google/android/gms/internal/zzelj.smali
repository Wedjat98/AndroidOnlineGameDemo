.class public final Lcom/google/android/gms/internal/zzelj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeli;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final millis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
