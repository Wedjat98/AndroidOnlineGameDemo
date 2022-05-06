.class public final Lmobi/androidcloud/lib/session/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic jq:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lmobi/androidcloud/lib/session/e;->jq:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static kg()[I
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lmobi/androidcloud/lib/session/e;->jq:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
