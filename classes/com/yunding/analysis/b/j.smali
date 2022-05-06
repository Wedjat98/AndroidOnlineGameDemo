.class public Lcom/yunding/analysis/b/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "tandy_fw_20120309172733"

    sput-object v0, Lcom/yunding/analysis/b/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/yunding/analysis/b/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yunding/analysis/b/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/yunding/analysis/b/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yunding/analysis/b/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v6, 0x100

    const/4 v0, 0x0

    sget-object v2, Lcom/yunding/analysis/b/j;->a:Ljava/lang/String;

    new-array v3, v6, [I

    new-array v4, v6, [B

    move v1, v0

    :goto_a
    if-ge v1, v6, :cond_11

    aput v1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    move v1, v0

    :goto_12
    if-ge v1, v6, :cond_25

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    rem-int v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_12

    :cond_25
    move v1, v0

    move v2, v0

    :goto_27
    const/16 v5, 0xff

    if-ge v1, v5, :cond_3e

    aget v5, v3, v1

    add-int/2addr v2, v5

    aget-byte v5, v4, v1

    add-int/2addr v2, v5

    rem-int/lit16 v2, v2, 0x100

    aget v5, v3, v1

    aget v6, v3, v2

    aput v6, v3, v1

    aput v5, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v1, v4

    new-array v5, v1, [C

    move v1, v0

    move v2, v0

    :goto_47
    array-length v6, v4

    if-ge v0, v6, :cond_71

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x100

    aget v6, v3, v1

    add-int/2addr v2, v6

    rem-int/lit16 v2, v2, 0x100

    aget v6, v3, v1

    aget v7, v3, v2

    aput v7, v3, v1

    aput v6, v3, v2

    aget v6, v3, v1

    aget v7, v3, v2

    rem-int/lit16 v7, v7, 0x100

    add-int/2addr v6, v7

    rem-int/lit16 v6, v6, 0x100

    aget v6, v3, v6

    int-to-char v6, v6

    aget-char v7, v4, v0

    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_47

    :cond_71
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v0, 0x0

    :goto_12
    array-length v4, v3

    if-ge v0, v4, :cond_2c

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v4, v3, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    const/4 v0, 0x0

    :goto_f
    array-length v4, v3

    if-ge v0, v4, :cond_2f

    mul-int/lit8 v4, v0, 0x2

    aget-char v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
