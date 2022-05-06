.class public final enum Lmobi/androidcloud/lib/im/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/androidcloud/lib/im/n$a;
    }
.end annotation


# static fields
.field public static final enum hI:Lmobi/androidcloud/lib/im/n;


# instance fields
.field private hJ:Lmobi/androidcloud/lib/util/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Lmobi/androidcloud/lib/im/n;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/im/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/androidcloud/lib/im/n;->hI:Lmobi/androidcloud/lib/im/n;

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Lmobi/androidcloud/lib/im/n;

    sget-object v1, Lmobi/androidcloud/lib/im/n;->hI:Lmobi/androidcloud/lib/im/n;

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    new-instance v0, Lmobi/androidcloud/lib/util/a;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lmobi/androidcloud/lib/util/a;-><init>(I)V

    iput-object v0, p0, Lmobi/androidcloud/lib/im/n;->hJ:Lmobi/androidcloud/lib/util/a;

    return-void
.end method


# virtual methods
.method public ak(I)V
    .registers 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Lmobi/androidcloud/lib/wire/control/K;

    invoke-direct {v1, v0, p1}, Lmobi/androidcloud/lib/wire/control/K;-><init>(Ljava/lang/String;I)V

    .line 39
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/net/a;->b(Lmobi/androidcloud/lib/wire/control/M;)V

    .line 40
    return-void
.end method

.method al(I)Lmobi/androidcloud/lib/im/n$a;
    .registers 9

    .prologue
    .line 68
    iget-object v1, p0, Lmobi/androidcloud/lib/im/n;->hJ:Lmobi/androidcloud/lib/util/a;

    const-wide/32 v2, 0xdbba00

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v6}, Lmobi/androidcloud/lib/util/a;->a(JJLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/androidcloud/lib/im/n$a;

    .line 71
    invoke-virtual {p0}, Lmobi/androidcloud/lib/im/n;->iJ()V

    .line 72
    return-object v0
.end method

.method public b(Lmobi/androidcloud/lib/wire/control/L;)V
    .registers 8

    .prologue
    .line 45
    iget-object v0, p1, Lmobi/androidcloud/lib/wire/control/L;->kY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/androidcloud/lib/wire/control/L$a;

    .line 46
    iget-object v2, p0, Lmobi/androidcloud/lib/im/n;->hJ:Lmobi/androidcloud/lib/util/a;

    new-instance v3, Lmobi/androidcloud/lib/im/n$a;

    iget-boolean v4, p1, Lmobi/androidcloud/lib/wire/control/L;->hL:Z

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Lmobi/androidcloud/lib/im/n$a;-><init>(Lmobi/androidcloud/lib/wire/control/L$a;ZLmobi/androidcloud/lib/im/j;)V

    invoke-virtual {v2, v3}, Lmobi/androidcloud/lib/util/a;->offer(Ljava/lang/Object;)Z

    goto :goto_6

    .line 51
    :cond_20
    return-void
.end method

.method iI()Lmobi/androidcloud/lib/im/n$a;
    .registers 2

    .prologue
    .line 64
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lmobi/androidcloud/lib/im/n;->al(I)Lmobi/androidcloud/lib/im/n$a;

    move-result-object v0

    return-object v0
.end method

.method public iJ()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lmobi/androidcloud/lib/im/n;->hJ:Lmobi/androidcloud/lib/util/a;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/util/a;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    .line 77
    if-lez v0, :cond_d

    .line 79
    invoke-virtual {p0, v0}, Lmobi/androidcloud/lib/im/n;->ak(I)V

    .line 80
    :cond_d
    return-void
.end method
