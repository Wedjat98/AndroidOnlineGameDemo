.class public final enum Lcom/google/protobuf/l$f$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum dA:Lcom/google/protobuf/l$f$b;

.field public static final enum dB:Lcom/google/protobuf/l$f$b;

.field public static final enum dC:Lcom/google/protobuf/l$f$b;

.field public static final enum dD:Lcom/google/protobuf/l$f$b;

.field public static final enum dE:Lcom/google/protobuf/l$f$b;

.field public static final enum dF:Lcom/google/protobuf/l$f$b;

.field public static final enum dG:Lcom/google/protobuf/l$f$b;

.field public static final enum dH:Lcom/google/protobuf/l$f$b;

.field public static final enum dI:Lcom/google/protobuf/l$f$b;

.field public static final enum dJ:Lcom/google/protobuf/l$f$b;

.field public static final enum dK:Lcom/google/protobuf/l$f$b;

.field public static final enum dL:Lcom/google/protobuf/l$f$b;

.field public static final enum dM:Lcom/google/protobuf/l$f$b;

.field public static final enum dN:Lcom/google/protobuf/l$f$b;

.field public static final enum dO:Lcom/google/protobuf/l$f$b;

.field public static final enum dP:Lcom/google/protobuf/l$f$b;

.field public static final enum dQ:Lcom/google/protobuf/l$f$b;

.field public static final enum dR:Lcom/google/protobuf/l$f$b;

.field private static final synthetic dT:[Lcom/google/protobuf/l$f$b;


# instance fields
.field private dS:Lcom/google/protobuf/l$f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 818
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/google/protobuf/l$f$a;->ds:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dA:Lcom/google/protobuf/l$f$b;

    .line 819
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/google/protobuf/l$f$a;->dr:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v5, v2}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dB:Lcom/google/protobuf/l$f$b;

    .line 820
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "INT64"

    sget-object v2, Lcom/google/protobuf/l$f$a;->dq:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v6, v2}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dC:Lcom/google/protobuf/l$f$b;

    .line 821
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "UINT64"

    sget-object v2, Lcom/google/protobuf/l$f$a;->dq:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v7, v2}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dD:Lcom/google/protobuf/l$f$b;

    .line 822
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "INT32"

    sget-object v2, Lcom/google/protobuf/l$f$a;->dp:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v8, v2}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dE:Lcom/google/protobuf/l$f$b;

    .line 823
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "FIXED64"

    const/4 v2, 0x5

    sget-object v3, Lcom/google/protobuf/l$f$a;->dq:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dF:Lcom/google/protobuf/l$f$b;

    .line 824
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/protobuf/l$f$a;->dp:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dG:Lcom/google/protobuf/l$f$b;

    .line 825
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/google/protobuf/l$f$a;->dt:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dH:Lcom/google/protobuf/l$f$b;

    .line 826
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lcom/google/protobuf/l$f$a;->du:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dI:Lcom/google/protobuf/l$f$b;

    .line 827
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dJ:Lcom/google/protobuf/l$f$b;

    .line 828
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dK:Lcom/google/protobuf/l$f$b;

    .line 829
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lcom/google/protobuf/l$f$a;->dv:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dL:Lcom/google/protobuf/l$f$b;

    .line 830
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lcom/google/protobuf/l$f$a;->dp:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dM:Lcom/google/protobuf/l$f$b;

    .line 831
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lcom/google/protobuf/l$f$a;->dw:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dN:Lcom/google/protobuf/l$f$b;

    .line 832
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lcom/google/protobuf/l$f$a;->dp:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dO:Lcom/google/protobuf/l$f$b;

    .line 833
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lcom/google/protobuf/l$f$a;->dq:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dP:Lcom/google/protobuf/l$f$b;

    .line 834
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lcom/google/protobuf/l$f$a;->dp:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dQ:Lcom/google/protobuf/l$f$b;

    .line 835
    new-instance v0, Lcom/google/protobuf/l$f$b;

    const-string v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lcom/google/protobuf/l$f$a;->dq:Lcom/google/protobuf/l$f$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V

    sput-object v0, Lcom/google/protobuf/l$f$b;->dR:Lcom/google/protobuf/l$f$b;

    .line 817
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/protobuf/l$f$b;

    sget-object v1, Lcom/google/protobuf/l$f$b;->dA:Lcom/google/protobuf/l$f$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/l$f$b;->dB:Lcom/google/protobuf/l$f$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protobuf/l$f$b;->dC:Lcom/google/protobuf/l$f$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protobuf/l$f$b;->dD:Lcom/google/protobuf/l$f$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protobuf/l$f$b;->dE:Lcom/google/protobuf/l$f$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protobuf/l$f$b;->dF:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protobuf/l$f$b;->dG:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protobuf/l$f$b;->dH:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protobuf/l$f$b;->dI:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protobuf/l$f$b;->dJ:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protobuf/l$f$b;->dK:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protobuf/l$f$b;->dL:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/protobuf/l$f$b;->dM:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/protobuf/l$f$b;->dN:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/protobuf/l$f$b;->dO:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/protobuf/l$f$b;->dP:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/protobuf/l$f$b;->dQ:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/protobuf/l$f$b;->dR:Lcom/google/protobuf/l$f$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protobuf/l$f$b;->dT:[Lcom/google/protobuf/l$f$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/protobuf/l$f$a;)V
    .registers 4

    .prologue
    .line 837
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 838
    iput-object p3, p0, Lcom/google/protobuf/l$f$b;->dS:Lcom/google/protobuf/l$f$a;

    .line 839
    return-void
.end method

.method public static b(Lcom/google/protobuf/f$f$c;)Lcom/google/protobuf/l$f$b;
    .registers 3

    .prologue
    .line 849
    invoke-static {}, Lcom/google/protobuf/l$f$b;->gA()[Lcom/google/protobuf/l$f$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/f$f$c;->getNumber()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final gA()[Lcom/google/protobuf/l$f$b;
    .registers 1

    .prologue
    .line 817
    sget-object v0, Lcom/google/protobuf/l$f$b;->dT:[Lcom/google/protobuf/l$f$b;

    invoke-virtual {v0}, [Lcom/google/protobuf/l$f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/l$f$b;

    return-object v0
.end method


# virtual methods
.method public go()Lcom/google/protobuf/l$f$a;
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/protobuf/l$f$b;->dS:Lcom/google/protobuf/l$f$a;

    return-object v0
.end method
