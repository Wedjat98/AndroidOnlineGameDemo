.class public final Lmobi/androidcloud/lib/wire/data/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final iY:I

.field private lm:S

.field private ln:Lmobi/androidcloud/lib/wire/data/a;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-short v0, p0, Lmobi/androidcloud/lib/wire/data/c;->lm:S

    .line 20
    iput p1, p0, Lmobi/androidcloud/lib/wire/data/c;->iY:I

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lmobi/androidcloud/lib/wire/data/b$a;[BIS)Lmobi/androidcloud/lib/wire/data/b;
    .registers 12

    .prologue
    .line 35
    iget-short v0, p0, Lmobi/androidcloud/lib/wire/data/c;->lm:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lmobi/androidcloud/lib/wire/data/c;->lm:S

    .line 36
    iget-short v0, p0, Lmobi/androidcloud/lib/wire/data/c;->lm:S

    if-gez v0, :cond_e

    .line 37
    const/4 v0, 0x0

    iput-short v0, p0, Lmobi/androidcloud/lib/wire/data/c;->lm:S

    .line 40
    :cond_e
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/data/c;->ln:Lmobi/androidcloud/lib/wire/data/a;

    if-nez v0, :cond_24

    .line 42
    new-instance v0, Lmobi/androidcloud/lib/wire/data/a;

    iget v1, p0, Lmobi/androidcloud/lib/wire/data/c;->iY:I

    iget-short v3, p0, Lmobi/androidcloud/lib/wire/data/c;->lm:S

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lmobi/androidcloud/lib/wire/data/a;-><init>(ILmobi/androidcloud/lib/wire/data/b$a;S[BIS)V

    iput-object v0, p0, Lmobi/androidcloud/lib/wire/data/c;->ln:Lmobi/androidcloud/lib/wire/data/a;

    .line 48
    :goto_21
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/data/c;->ln:Lmobi/androidcloud/lib/wire/data/a;

    return-object v0

    .line 46
    :cond_24
    iget-object v0, p0, Lmobi/androidcloud/lib/wire/data/c;->ln:Lmobi/androidcloud/lib/wire/data/a;

    iget v1, p0, Lmobi/androidcloud/lib/wire/data/c;->iY:I

    iget-short v3, p0, Lmobi/androidcloud/lib/wire/data/c;->lm:S

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lmobi/androidcloud/lib/wire/data/a;->a(ILmobi/androidcloud/lib/wire/data/b$a;S[BIS)V

    goto :goto_21
.end method
