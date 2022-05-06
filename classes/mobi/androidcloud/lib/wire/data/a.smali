.class public final Lmobi/androidcloud/lib/wire/data/a;
.super Lmobi/androidcloud/lib/wire/data/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILmobi/androidcloud/lib/wire/data/b$a;S[BIS)V
    .registers 7

    .prologue
    .line 8
    invoke-direct/range {p0 .. p6}, Lmobi/androidcloud/lib/wire/data/b;-><init>(ILmobi/androidcloud/lib/wire/data/b$a;S[BIS)V

    .line 10
    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 6
    sget-object v2, Lmobi/androidcloud/lib/wire/data/b$a;->lg:Lmobi/androidcloud/lib/wire/data/b$a;

    array-length v0, p2

    int-to-short v6, v0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lmobi/androidcloud/lib/wire/data/b;-><init>(ILmobi/androidcloud/lib/wire/data/b$a;S[BIS)V

    .line 8
    return-void
.end method
