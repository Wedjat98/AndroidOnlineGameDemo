.class public final Lmobi/tikl/wire/control/a$at;
.super Lcom/google/protobuf/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/tikl/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "at"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/tikl/wire/control/a$at$a;
    }
.end annotation


# static fields
.field private static final wf:Lmobi/tikl/wire/control/a$at;


# instance fields
.field private ai:I

.field private sS:Z

.field private wg:Ljava/lang/String;

.field private wh:Z

.field private wi:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14843
    new-instance v0, Lmobi/tikl/wire/control/a$at;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmobi/tikl/wire/control/a$at;-><init>(Z)V

    sput-object v0, Lmobi/tikl/wire/control/a$at;->wf:Lmobi/tikl/wire/control/a$at;

    .line 14844
    invoke-static {}, Lmobi/tikl/wire/control/a;->K()V

    .line 14845
    sget-object v0, Lmobi/tikl/wire/control/a$at;->wf:Lmobi/tikl/wire/control/a$at;

    .line 14846
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14526
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 14553
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$at;->wg:Ljava/lang/String;

    .line 14560
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$at;->wi:I

    .line 14584
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$at;->ai:I

    .line 14527
    return-void
.end method

.method synthetic constructor <init>(Lmobi/tikl/wire/control/b;)V
    .registers 2

    .prologue
    .line 14523
    invoke-direct {p0}, Lmobi/tikl/wire/control/a$at;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 14529
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    .line 14553
    const-string v0, ""

    iput-object v0, p0, Lmobi/tikl/wire/control/a$at;->wg:Ljava/lang/String;

    .line 14560
    const/4 v0, 0x0

    iput v0, p0, Lmobi/tikl/wire/control/a$at;->wi:I

    .line 14584
    const/4 v0, -0x1

    iput v0, p0, Lmobi/tikl/wire/control/a$at;->ai:I

    .line 14529
    return-void
.end method

.method public static Hg()Lmobi/tikl/wire/control/a$at;
    .registers 1

    .prologue
    .line 14533
    sget-object v0, Lmobi/tikl/wire/control/a$at;->wf:Lmobi/tikl/wire/control/a$at;

    return-object v0
.end method

.method public static Hl()Lmobi/tikl/wire/control/a$at$a;
    .registers 1

    .prologue
    .line 14670
    invoke-static {}, Lmobi/tikl/wire/control/a$at$a;->Ht()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$at;I)I
    .registers 2

    .prologue
    .line 14523
    iput p1, p0, Lmobi/tikl/wire/control/a$at;->wi:I

    return p1
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$at;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14523
    iput-object p1, p0, Lmobi/tikl/wire/control/a$at;->wg:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lmobi/tikl/wire/control/a$at;)Lmobi/tikl/wire/control/a$at$a;
    .registers 2

    .prologue
    .line 14673
    invoke-static {}, Lmobi/tikl/wire/control/a$at;->Hl()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/tikl/wire/control/a$at$a;->b(Lmobi/tikl/wire/control/a$at;)Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmobi/tikl/wire/control/a$at;Z)Z
    .registers 2

    .prologue
    .line 14523
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$at;->sS:Z

    return p1
.end method

.method public static final ax()Lcom/google/protobuf/l$a;
    .registers 1

    .prologue
    .line 14542
    invoke-static {}, Lmobi/tikl/wire/control/a;->li()Lcom/google/protobuf/l$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/tikl/wire/control/a$at;Z)Z
    .registers 2

    .prologue
    .line 14523
    iput-boolean p1, p0, Lmobi/tikl/wire/control/a$at;->wh:Z

    return p1
.end method


# virtual methods
.method public Hh()Lmobi/tikl/wire/control/a$at;
    .registers 2

    .prologue
    .line 14537
    sget-object v0, Lmobi/tikl/wire/control/a$at;->wf:Lmobi/tikl/wire/control/a$at;

    return-object v0
.end method

.method public Hi()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14555
    iget-object v0, p0, Lmobi/tikl/wire/control/a$at;->wg:Ljava/lang/String;

    return-object v0
.end method

.method public Hj()Z
    .registers 2

    .prologue
    .line 14561
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$at;->wh:Z

    return v0
.end method

.method public Hk()I
    .registers 2

    .prologue
    .line 14562
    iget v0, p0, Lmobi/tikl/wire/control/a$at;->wi:I

    return v0
.end method

.method public Hm()Lmobi/tikl/wire/control/a$at$a;
    .registers 2

    .prologue
    .line 14671
    invoke-static {}, Lmobi/tikl/wire/control/a$at;->Hl()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public Hn()Lmobi/tikl/wire/control/a$at$a;
    .registers 2

    .prologue
    .line 14675
    invoke-static {p0}, Lmobi/tikl/wire/control/a$at;->a(Lmobi/tikl/wire/control/a$at;)Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .registers 4

    .prologue
    .line 14586
    iget v0, p0, Lmobi/tikl/wire/control/a$at;->ai:I

    .line 14587
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 14600
    :goto_5
    return v0

    .line 14589
    :cond_6
    const/4 v0, 0x0

    .line 14590
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->zF()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 14591
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->Hi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 14594
    :cond_18
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->Hj()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 14595
    const/4 v1, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->Hk()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14598
    :cond_28
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->gH()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 14599
    iput v0, p0, Lmobi/tikl/wire/control/a$at;->ai:I

    goto :goto_5
.end method

.method public a(Lcom/google/protobuf/e;)V
    .registers 4

    .prologue
    .line 14574
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->a()I

    .line 14575
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->zF()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 14576
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->Hi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(ILjava/lang/String;)V

    .line 14578
    :cond_11
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->Hj()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 14579
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->Hk()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/e;->a(II)V

    .line 14581
    :cond_1f
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->gH()Lcom/google/protobuf/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z;->a(Lcom/google/protobuf/e;)V

    .line 14582
    return-void
.end method

.method public synthetic aN()Lcom/google/protobuf/t$a;
    .registers 2

    .prologue
    .line 14523
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->Hm()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aO()Lcom/google/protobuf/t;
    .registers 2

    .prologue
    .line 14523
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->Hh()Lmobi/tikl/wire/control/a$at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aP()Lcom/google/protobuf/u$a;
    .registers 2

    .prologue
    .line 14523
    invoke-virtual {p0}, Lmobi/tikl/wire/control/a$at;->Hn()Lmobi/tikl/wire/control/a$at$a;

    move-result-object v0

    return-object v0
.end method

.method protected ay()Lcom/google/protobuf/q$d;
    .registers 2

    .prologue
    .line 14547
    invoke-static {}, Lmobi/tikl/wire/control/a;->lj()Lcom/google/protobuf/q$d;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 14567
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$at;->sS:Z

    if-nez v1, :cond_6

    .line 14569
    :cond_5
    :goto_5
    return v0

    .line 14568
    :cond_6
    iget-boolean v1, p0, Lmobi/tikl/wire/control/a$at;->wh:Z

    if-eqz v1, :cond_5

    .line 14569
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public zF()Z
    .registers 2

    .prologue
    .line 14554
    iget-boolean v0, p0, Lmobi/tikl/wire/control/a$at;->sS:Z

    return v0
.end method
