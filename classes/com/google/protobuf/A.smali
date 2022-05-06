.class public final Lcom/google/protobuf/A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/A$a;,
        Lcom/google/protobuf/A$b;
    }
.end annotation


# static fields
.field static final eM:I

.field static final eN:I

.field static final eO:I

.field static final eP:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 155
    invoke-static {v1, v3}, Lcom/google/protobuf/A;->k(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/A;->eM:I

    .line 157
    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/google/protobuf/A;->k(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/A;->eN:I

    .line 159
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/google/protobuf/A;->k(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/A;->eO:I

    .line 161
    invoke-static {v3, v2}, Lcom/google/protobuf/A;->k(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/A;->eP:I

    return-void
.end method

.method static ac(I)I
    .registers 2

    .prologue
    .line 60
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static ad(I)I
    .registers 2

    .prologue
    .line 65
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static k(II)I
    .registers 3

    .prologue
    .line 70
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
