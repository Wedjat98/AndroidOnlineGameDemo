.class public enum Lcom/google/protobuf/A$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "a"
.end annotation


# static fields
.field public static final enum eQ:Lcom/google/protobuf/A$a;

.field public static final enum eR:Lcom/google/protobuf/A$a;

.field public static final enum eS:Lcom/google/protobuf/A$a;

.field public static final enum eT:Lcom/google/protobuf/A$a;

.field public static final enum eU:Lcom/google/protobuf/A$a;

.field public static final enum eV:Lcom/google/protobuf/A$a;

.field public static final enum eW:Lcom/google/protobuf/A$a;

.field public static final enum eX:Lcom/google/protobuf/A$a;

.field public static final enum eY:Lcom/google/protobuf/A$a;

.field public static final enum eZ:Lcom/google/protobuf/A$a;

.field public static final enum fa:Lcom/google/protobuf/A$a;

.field public static final enum fb:Lcom/google/protobuf/A$a;

.field public static final enum fc:Lcom/google/protobuf/A$a;

.field public static final enum fd:Lcom/google/protobuf/A$a;

.field public static final enum fe:Lcom/google/protobuf/A$a;

.field public static final enum ff:Lcom/google/protobuf/A$a;

.field public static final enum fg:Lcom/google/protobuf/A$a;

.field public static final enum fh:Lcom/google/protobuf/A$a;

.field private static final synthetic fk:[Lcom/google/protobuf/A$a;


# instance fields
.field private final fi:Lcom/google/protobuf/A$b;

.field private final fj:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/google/protobuf/A$b;->fo:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->eQ:Lcom/google/protobuf/A$a;

    .line 109
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/google/protobuf/A$b;->fn:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->eR:Lcom/google/protobuf/A$a;

    .line 110
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "INT64"

    sget-object v2, Lcom/google/protobuf/A$b;->fm:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->eS:Lcom/google/protobuf/A$a;

    .line 111
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "UINT64"

    sget-object v2, Lcom/google/protobuf/A$b;->fm:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->eT:Lcom/google/protobuf/A$a;

    .line 112
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "INT32"

    const/4 v2, 0x4

    sget-object v3, Lcom/google/protobuf/A$b;->fl:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->eU:Lcom/google/protobuf/A$a;

    .line 113
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "FIXED64"

    sget-object v2, Lcom/google/protobuf/A$b;->fm:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->eV:Lcom/google/protobuf/A$a;

    .line 114
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/protobuf/A$b;->fl:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->eW:Lcom/google/protobuf/A$a;

    .line 115
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/google/protobuf/A$b;->fp:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->eX:Lcom/google/protobuf/A$a;

    .line 116
    new-instance v0, Lcom/google/protobuf/B;

    const-string v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lcom/google/protobuf/A$b;->fq:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/protobuf/B;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->eY:Lcom/google/protobuf/A$a;

    .line 119
    new-instance v0, Lcom/google/protobuf/C;

    const-string v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lcom/google/protobuf/A$b;->ft:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/google/protobuf/C;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->eZ:Lcom/google/protobuf/A$a;

    .line 122
    new-instance v0, Lcom/google/protobuf/D;

    const-string v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lcom/google/protobuf/A$b;->ft:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/protobuf/D;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->fa:Lcom/google/protobuf/A$a;

    .line 125
    new-instance v0, Lcom/google/protobuf/E;

    const-string v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lcom/google/protobuf/A$b;->fr:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/protobuf/E;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->fb:Lcom/google/protobuf/A$a;

    .line 128
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lcom/google/protobuf/A$b;->fl:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->fc:Lcom/google/protobuf/A$a;

    .line 129
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lcom/google/protobuf/A$b;->fs:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->fd:Lcom/google/protobuf/A$a;

    .line 130
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lcom/google/protobuf/A$b;->fl:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->fe:Lcom/google/protobuf/A$a;

    .line 131
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lcom/google/protobuf/A$b;->fm:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->ff:Lcom/google/protobuf/A$a;

    .line 132
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lcom/google/protobuf/A$b;->fl:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->fg:Lcom/google/protobuf/A$a;

    .line 133
    new-instance v0, Lcom/google/protobuf/A$a;

    const-string v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lcom/google/protobuf/A$b;->fm:Lcom/google/protobuf/A$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    sput-object v0, Lcom/google/protobuf/A$a;->fh:Lcom/google/protobuf/A$a;

    .line 107
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/protobuf/A$a;

    sget-object v1, Lcom/google/protobuf/A$a;->eQ:Lcom/google/protobuf/A$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/A$a;->eR:Lcom/google/protobuf/A$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protobuf/A$a;->eS:Lcom/google/protobuf/A$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protobuf/A$a;->eT:Lcom/google/protobuf/A$a;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/google/protobuf/A$a;->eU:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protobuf/A$a;->eV:Lcom/google/protobuf/A$a;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protobuf/A$a;->eW:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protobuf/A$a;->eX:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protobuf/A$a;->eY:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protobuf/A$a;->eZ:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protobuf/A$a;->fa:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protobuf/A$a;->fb:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/protobuf/A$a;->fc:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/protobuf/A$a;->fd:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/protobuf/A$a;->fe:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/protobuf/A$a;->ff:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/protobuf/A$a;->fg:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/protobuf/A$a;->fh:Lcom/google/protobuf/A$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protobuf/A$a;->fk:[Lcom/google/protobuf/A$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V
    .registers 5

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput-object p3, p0, Lcom/google/protobuf/A$a;->fi:Lcom/google/protobuf/A$b;

    .line 137
    iput p4, p0, Lcom/google/protobuf/A$a;->fj:I

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/protobuf/A$b;ILcom/google/protobuf/d;)V
    .registers 6

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/A$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A$b;I)V

    return-void
.end method

.method public static final hA()[Lcom/google/protobuf/A$a;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/google/protobuf/A$a;->fk:[Lcom/google/protobuf/A$a;

    invoke-virtual {v0}, [Lcom/google/protobuf/A$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/A$a;

    return-object v0
.end method


# virtual methods
.method public gu()Z
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public hB()Lcom/google/protobuf/A$b;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/protobuf/A$a;->fi:Lcom/google/protobuf/A$b;

    return-object v0
.end method

.method public hC()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/google/protobuf/A$a;->fj:I

    return v0
.end method
