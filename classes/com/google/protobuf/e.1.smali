.class public final Lcom/google/protobuf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/e$a;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final m:Ljava/io/OutputStream;

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .registers 4

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/protobuf/e;->m:Ljava/io/OutputStream;

    .line 85
    iput-object p2, p0, Lcom/google/protobuf/e;->buffer:[B

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/e;->position:I

    .line 87
    array-length v0, p2

    iput v0, p0, Lcom/google/protobuf/e;->limit:I

    .line 88
    return-void
.end method

.method private constructor <init>([BII)V
    .registers 5

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/e;->m:Ljava/io/OutputStream;

    .line 78
    iput-object p1, p0, Lcom/google/protobuf/e;->buffer:[B

    .line 79
    iput p2, p0, Lcom/google/protobuf/e;->position:I

    .line 80
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/e;->limit:I

    .line 81
    return-void
.end method

.method public static A(I)I
    .registers 2

    .prologue
    .line 942
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 946
    :goto_5
    return v0

    .line 943
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    .line 944
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    goto :goto_5

    .line 945
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_5

    .line 946
    :cond_1a
    const/4 v0, 0x5

    goto :goto_5
.end method

.method public static C(I)I
    .registers 3

    .prologue
    .line 1012
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private G()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 796
    iget-object v0, p0, Lcom/google/protobuf/e;->m:Ljava/io/OutputStream;

    if-nez v0, :cond_b

    .line 798
    new-instance v0, Lcom/google/protobuf/e$a;

    invoke-direct {v0}, Lcom/google/protobuf/e$a;-><init>()V

    throw v0

    .line 803
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/e;->m:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/e;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/e;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 804
    iput v3, p0, Lcom/google/protobuf/e;->position:I

    .line 805
    return-void
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/google/protobuf/e;
    .registers 4

    .prologue
    .line 104
    new-instance v0, Lcom/google/protobuf/e;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/e;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static b(D)I
    .registers 3

    .prologue
    .line 624
    const/16 v0, 0x8

    return v0
.end method

.method public static b(F)I
    .registers 2

    .prologue
    .line 632
    const/4 v0, 0x4

    return v0
.end method

.method public static b(ID)I
    .registers 6

    .prologue
    .line 430
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/e;->b(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .registers 4

    .prologue
    .line 498
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/e;->i(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .registers 4

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/e;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(ILcom/google/protobuf/c;)I
    .registers 4

    .prologue
    .line 539
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/e;->c(Lcom/google/protobuf/c;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(Lcom/google/protobuf/c;)I
    .registers 3

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/google/protobuf/c;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->A(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/c;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(Lcom/google/protobuf/u;)I
    .registers 2

    .prologue
    .line 707
    invoke-interface {p0}, Lcom/google/protobuf/u;->a()I

    move-result v0

    return v0
.end method

.method public static d(IJ)I
    .registers 6

    .prologue
    .line 446
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/e;->h(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(ILcom/google/protobuf/c;)I
    .registers 4

    .prologue
    .line 612
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/protobuf/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/google/protobuf/e;->c(ILcom/google/protobuf/c;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(ILcom/google/protobuf/u;)I
    .registers 4

    .prologue
    .line 507
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Lcom/google/protobuf/e;->c(Lcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Lcom/google/protobuf/u;)I
    .registers 3

    .prologue
    .line 728
    invoke-interface {p0}, Lcom/google/protobuf/u;->a()I

    move-result v0

    .line 729
    invoke-static {v0}, Lcom/google/protobuf/e;->A(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Z)I
    .registers 2

    .prologue
    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method public static e(II)I
    .registers 4

    .prologue
    .line 462
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/e;->r(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(IJ)I
    .registers 6

    .prologue
    .line 454
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/e;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(ILcom/google/protobuf/u;)I
    .registers 4

    .prologue
    .line 530
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/e;->d(Lcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e([B)Lcom/google/protobuf/e;
    .registers 3

    .prologue
    .line 115
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/e;->e([BII)Lcom/google/protobuf/e;

    move-result-object v0

    return-object v0
.end method

.method public static e([BII)Lcom/google/protobuf/e;
    .registers 4

    .prologue
    .line 128
    new-instance v0, Lcom/google/protobuf/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/e;-><init>([BII)V

    return-object v0
.end method

.method public static f(II)I
    .registers 4

    .prologue
    .line 480
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/e;->s(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(IJ)I
    .registers 6

    .prologue
    .line 471
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/e;->j(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(ILcom/google/protobuf/u;)I
    .registers 4

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/protobuf/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/google/protobuf/e;->e(ILcom/google/protobuf/u;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static g(II)I
    .registers 4

    .prologue
    .line 547
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/e;->t(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static h(II)I
    .registers 4

    .prologue
    .line 556
    invoke-static {p0}, Lcom/google/protobuf/e;->y(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/e;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static h(J)I
    .registers 4

    .prologue
    .line 640
    invoke-static {p0, p1}, Lcom/google/protobuf/e;->n(J)I

    move-result v0

    return v0
.end method

.method public static i(J)I
    .registers 4

    .prologue
    .line 648
    invoke-static {p0, p1}, Lcom/google/protobuf/e;->n(J)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 694
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 695
    array-length v1, v0

    invoke-static {v1}, Lcom/google/protobuf/e;->A(I)I

    move-result v1

    array-length v0, v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    add-int/2addr v0, v1

    return v0

    .line 697
    :catch_e
    move-exception v0

    .line 698
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static j(J)I
    .registers 3

    .prologue
    .line 669
    const/16 v0, 0x8

    return v0
.end method

.method static k(I)I
    .registers 2

    .prologue
    const/16 v0, 0x1000

    .line 71
    if-le p0, v0, :cond_5

    move p0, v0

    .line 72
    :cond_5
    return p0
.end method

.method public static k(J)I
    .registers 3

    .prologue
    .line 770
    const/16 v0, 0x8

    return v0
.end method

.method public static l(J)I
    .registers 4

    .prologue
    .line 786
    invoke-static {p0, p1}, Lcom/google/protobuf/e;->p(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/e;->n(J)I

    move-result v0

    return v0
.end method

.method public static n(J)I
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 964
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 973
    :goto_a
    return v0

    .line 965
    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x2

    goto :goto_a

    .line 966
    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    goto :goto_a

    .line 967
    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x4

    goto :goto_a

    .line 968
    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 v0, 0x5

    goto :goto_a

    .line 969
    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v0, 0x6

    goto :goto_a

    .line 970
    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 v0, 0x7

    goto :goto_a

    .line 971
    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 v0, 0x8

    goto :goto_a

    .line 972
    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    const/16 v0, 0x9

    goto :goto_a

    .line 973
    :cond_5d
    const/16 v0, 0xa

    goto :goto_a
.end method

.method public static p(J)J
    .registers 6

    .prologue
    .line 1027
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static r(I)I
    .registers 2

    .prologue
    .line 656
    if-ltz p0, :cond_7

    .line 657
    invoke-static {p0}, Lcom/google/protobuf/e;->A(I)I

    move-result v0

    .line 660
    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa

    goto :goto_6
.end method

.method public static s(I)I
    .registers 2

    .prologue
    .line 677
    const/4 v0, 0x4

    return v0
.end method

.method public static t(I)I
    .registers 2

    .prologue
    .line 746
    invoke-static {p0}, Lcom/google/protobuf/e;->A(I)I

    move-result v0

    return v0
.end method

.method public static u(I)I
    .registers 2

    .prologue
    .line 754
    invoke-static {p0}, Lcom/google/protobuf/e;->A(I)I

    move-result v0

    return v0
.end method

.method public static v(I)I
    .registers 2

    .prologue
    .line 762
    const/4 v0, 0x4

    return v0
.end method

.method public static w(I)I
    .registers 2

    .prologue
    .line 778
    invoke-static {p0}, Lcom/google/protobuf/e;->C(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->A(I)I

    move-result v0

    return v0
.end method

.method public static y(I)I
    .registers 2

    .prologue
    .line 917
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/A;->k(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/e;->A(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public B(I)V
    .registers 3

    .prologue
    .line 978
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 979
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 980
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 981
    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 982
    return-void
.end method

.method public H()I
    .registers 3

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/protobuf/e;->m:Ljava/io/OutputStream;

    if-nez v0, :cond_a

    .line 823
    iget v0, p0, Lcom/google/protobuf/e;->limit:I

    iget v1, p0, Lcom/google/protobuf/e;->position:I

    sub-int/2addr v0, v1

    return v0

    .line 825
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public I()V
    .registers 3

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/google/protobuf/e;->H()I

    move-result v0

    if-eqz v0, :cond_e

    .line 840
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_e
    return-void
.end method

.method public a(B)V
    .registers 5

    .prologue
    .line 861
    iget v0, p0, Lcom/google/protobuf/e;->position:I

    iget v1, p0, Lcom/google/protobuf/e;->limit:I

    if-ne v0, v1, :cond_9

    .line 862
    invoke-direct {p0}, Lcom/google/protobuf/e;->G()V

    .line 865
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/e;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/e;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/e;->position:I

    aput-byte p1, v0, v1

    .line 866
    return-void
.end method

.method public a(D)V
    .registers 6

    .prologue
    .line 306
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/e;->o(J)V

    .line 307
    return-void
.end method

.method public a(F)V
    .registers 3

    .prologue
    .line 311
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->B(I)V

    .line 312
    return-void
.end method

.method public a(ID)V
    .registers 6

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 137
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/e;->a(D)V

    .line 138
    return-void
.end method

.method public a(II)V
    .registers 4

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 165
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->l(I)V

    .line 166
    return-void
.end method

.method public a(IJ)V
    .registers 6

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 151
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/e;->c(J)V

    .line 152
    return-void
.end method

.method public a(ILcom/google/protobuf/c;)V
    .registers 4

    .prologue
    .line 227
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 228
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->b(Lcom/google/protobuf/c;)V

    .line 229
    return-void
.end method

.method public a(ILcom/google/protobuf/u;)V
    .registers 4

    .prologue
    .line 199
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 200
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->a(Lcom/google/protobuf/u;)V

    .line 201
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 202
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 192
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 193
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->h(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public a(IZ)V
    .registers 4

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 186
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->c(Z)V

    .line 187
    return-void
.end method

.method public a(Lcom/google/protobuf/u;)V
    .registers 2

    .prologue
    .line 361
    invoke-interface {p1, p0}, Lcom/google/protobuf/u;->a(Lcom/google/protobuf/e;)V

    .line 362
    return-void
.end method

.method public b(II)V
    .registers 4

    .prologue
    .line 178
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->m(I)V

    .line 180
    return-void
.end method

.method public b(IJ)V
    .registers 6

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 158
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/e;->d(J)V

    .line 159
    return-void
.end method

.method public b(ILcom/google/protobuf/c;)V
    .registers 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 296
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/e;->i(II)V

    .line 297
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/e;->c(II)V

    .line 298
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/e;->a(ILcom/google/protobuf/c;)V

    .line 299
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 300
    return-void
.end method

.method public b(ILcom/google/protobuf/u;)V
    .registers 4

    .prologue
    .line 220
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 221
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->b(Lcom/google/protobuf/u;)V

    .line 222
    return-void
.end method

.method public b(Lcom/google/protobuf/c;)V
    .registers 4

    .prologue
    .line 384
    invoke-virtual {p1}, Lcom/google/protobuf/c;->toByteArray()[B

    move-result-object v0

    .line 385
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/e;->z(I)V

    .line 386
    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->f([B)V

    .line 387
    return-void
.end method

.method public b(Lcom/google/protobuf/u;)V
    .registers 3

    .prologue
    .line 378
    invoke-interface {p1}, Lcom/google/protobuf/u;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->z(I)V

    .line 379
    invoke-interface {p1, p0}, Lcom/google/protobuf/u;->a(Lcom/google/protobuf/e;)V

    .line 380
    return-void
.end method

.method public c(II)V
    .registers 4

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 235
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->n(I)V

    .line 236
    return-void
.end method

.method public c(IJ)V
    .registers 6

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 172
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/e;->e(J)V

    .line 173
    return-void
.end method

.method public c(ILcom/google/protobuf/u;)V
    .registers 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 283
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/e;->i(II)V

    .line 284
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/e;->c(II)V

    .line 285
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/e;->b(ILcom/google/protobuf/u;)V

    .line 286
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 287
    return-void
.end method

.method public c(J)V
    .registers 4

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e;->m(J)V

    .line 317
    return-void
.end method

.method public c(Z)V
    .registers 3

    .prologue
    .line 346
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 347
    return-void

    .line 346
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public d(II)V
    .registers 4

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/e;->i(II)V

    .line 245
    invoke-virtual {p0, p2}, Lcom/google/protobuf/e;->o(I)V

    .line 246
    return-void
.end method

.method public d(J)V
    .registers 4

    .prologue
    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e;->m(J)V

    .line 322
    return-void
.end method

.method public e(J)V
    .registers 4

    .prologue
    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e;->o(J)V

    .line 337
    return-void
.end method

.method public f(J)V
    .registers 4

    .prologue
    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e;->o(J)V

    .line 410
    return-void
.end method

.method public f([B)V
    .registers 4

    .prologue
    .line 875
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/e;->f([BII)V

    .line 876
    return-void
.end method

.method public f([BII)V
    .registers 8

    .prologue
    .line 881
    iget v0, p0, Lcom/google/protobuf/e;->limit:I

    iget v1, p0, Lcom/google/protobuf/e;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_14

    .line 883
    iget-object v0, p0, Lcom/google/protobuf/e;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/e;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    iget v0, p0, Lcom/google/protobuf/e;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/e;->position:I

    .line 907
    :goto_13
    return-void

    .line 888
    :cond_14
    iget v0, p0, Lcom/google/protobuf/e;->limit:I

    iget v1, p0, Lcom/google/protobuf/e;->position:I

    sub-int/2addr v0, v1

    .line 889
    iget-object v1, p0, Lcom/google/protobuf/e;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/e;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 890
    add-int v1, p2, v0

    .line 891
    sub-int v0, p3, v0

    .line 892
    iget v2, p0, Lcom/google/protobuf/e;->limit:I

    iput v2, p0, Lcom/google/protobuf/e;->position:I

    .line 893
    invoke-direct {p0}, Lcom/google/protobuf/e;->G()V

    .line 898
    iget v2, p0, Lcom/google/protobuf/e;->limit:I

    if-gt v0, v2, :cond_38

    .line 900
    iget-object v2, p0, Lcom/google/protobuf/e;->buffer:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 901
    iput v0, p0, Lcom/google/protobuf/e;->position:I

    goto :goto_13

    .line 904
    :cond_38
    iget-object v2, p0, Lcom/google/protobuf/e;->m:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_13
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/protobuf/e;->m:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 813
    invoke-direct {p0}, Lcom/google/protobuf/e;->G()V

    .line 815
    :cond_7
    return-void
.end method

.method public g(J)V
    .registers 6

    .prologue
    .line 419
    invoke-static {p1, p2}, Lcom/google/protobuf/e;->p(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/e;->m(J)V

    .line 420
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 354
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 355
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/e;->z(I)V

    .line 356
    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->f([B)V

    .line 357
    return-void
.end method

.method public i(II)V
    .registers 4

    .prologue
    .line 912
    invoke-static {p1, p2}, Lcom/google/protobuf/A;->k(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->z(I)V

    .line 913
    return-void
.end method

.method public l(I)V
    .registers 4

    .prologue
    .line 326
    if-ltz p1, :cond_6

    .line 327
    invoke-virtual {p0, p1}, Lcom/google/protobuf/e;->z(I)V

    .line 332
    :goto_5
    return-void

    .line 330
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/e;->m(J)V

    goto :goto_5
.end method

.method public m(I)V
    .registers 2

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/google/protobuf/e;->B(I)V

    .line 342
    return-void
.end method

.method public m(J)V
    .registers 8

    .prologue
    .line 952
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 953
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 954
    return-void

    .line 956
    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 957
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public n(I)V
    .registers 2

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/google/protobuf/e;->z(I)V

    .line 392
    return-void
.end method

.method public o(I)V
    .registers 2

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/google/protobuf/e;->z(I)V

    .line 400
    return-void
.end method

.method public o(J)V
    .registers 6

    .prologue
    .line 988
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 989
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 990
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 991
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 992
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 993
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 994
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 995
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 996
    return-void
.end method

.method public p(I)V
    .registers 2

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/google/protobuf/e;->B(I)V

    .line 405
    return-void
.end method

.method public q(I)V
    .registers 3

    .prologue
    .line 414
    invoke-static {p1}, Lcom/google/protobuf/e;->C(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->z(I)V

    .line 415
    return-void
.end method

.method public x(I)V
    .registers 3

    .prologue
    .line 870
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->a(B)V

    .line 871
    return-void
.end method

.method public z(I)V
    .registers 3

    .prologue
    .line 926
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 927
    invoke-virtual {p0, p1}, Lcom/google/protobuf/e;->x(I)V

    .line 928
    return-void

    .line 930
    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/e;->x(I)V

    .line 931
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
