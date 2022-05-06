.class public final enum Lcom/google/protobuf/l$f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum dp:Lcom/google/protobuf/l$f$a;

.field public static final enum dq:Lcom/google/protobuf/l$f$a;

.field public static final enum dr:Lcom/google/protobuf/l$f$a;

.field public static final enum ds:Lcom/google/protobuf/l$f$a;

.field public static final enum dt:Lcom/google/protobuf/l$f$a;

.field public static final enum du:Lcom/google/protobuf/l$f$a;

.field public static final enum dv:Lcom/google/protobuf/l$f$a;

.field public static final enum dw:Lcom/google/protobuf/l$f$a;

.field public static final enum dx:Lcom/google/protobuf/l$f$a;

.field private static final synthetic dz:[Lcom/google/protobuf/l$f$a;


# instance fields
.field private final dy:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 863
    new-instance v0, Lcom/google/protobuf/l$f$a;

    const-string v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/google/protobuf/l$f$a;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/l$f$a;->dp:Lcom/google/protobuf/l$f$a;

    .line 864
    new-instance v0, Lcom/google/protobuf/l$f$a;

    const-string v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/protobuf/l$f$a;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/l$f$a;->dq:Lcom/google/protobuf/l$f$a;

    .line 865
    new-instance v0, Lcom/google/protobuf/l$f$a;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/google/protobuf/l$f$a;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/l$f$a;->dr:Lcom/google/protobuf/l$f$a;

    .line 866
    new-instance v0, Lcom/google/protobuf/l$f$a;

    const-string v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/google/protobuf/l$f$a;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/l$f$a;->ds:Lcom/google/protobuf/l$f$a;

    .line 867
    new-instance v0, Lcom/google/protobuf/l$f$a;

    const-string v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/google/protobuf/l$f$a;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/l$f$a;->dt:Lcom/google/protobuf/l$f$a;

    .line 868
    new-instance v0, Lcom/google/protobuf/l$f$a;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$a;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/l$f$a;->du:Lcom/google/protobuf/l$f$a;

    .line 869
    new-instance v0, Lcom/google/protobuf/l$f$a;

    const-string v1, "BYTE_STRING"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/protobuf/c;->c:Lcom/google/protobuf/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$a;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/l$f$a;->dv:Lcom/google/protobuf/l$f$a;

    .line 870
    new-instance v0, Lcom/google/protobuf/l$f$a;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$a;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/l$f$a;->dw:Lcom/google/protobuf/l$f$a;

    .line 871
    new-instance v0, Lcom/google/protobuf/l$f$a;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/l$f$a;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    .line 862
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/protobuf/l$f$a;

    sget-object v1, Lcom/google/protobuf/l$f$a;->dp:Lcom/google/protobuf/l$f$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/l$f$a;->dq:Lcom/google/protobuf/l$f$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protobuf/l$f$a;->dr:Lcom/google/protobuf/l$f$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protobuf/l$f$a;->ds:Lcom/google/protobuf/l$f$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protobuf/l$f$a;->dt:Lcom/google/protobuf/l$f$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protobuf/l$f$a;->du:Lcom/google/protobuf/l$f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protobuf/l$f$a;->dv:Lcom/google/protobuf/l$f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protobuf/l$f$a;->dw:Lcom/google/protobuf/l$f$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protobuf/l$f$a;->dx:Lcom/google/protobuf/l$f$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protobuf/l$f$a;->dz:[Lcom/google/protobuf/l$f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 873
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 874
    iput-object p3, p0, Lcom/google/protobuf/l$f$a;->dy:Ljava/lang/Object;

    .line 875
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/l$f$a;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/protobuf/l$f$a;->dy:Ljava/lang/Object;

    return-object v0
.end method

.method public static final gz()[Lcom/google/protobuf/l$f$a;
    .registers 1

    .prologue
    .line 862
    sget-object v0, Lcom/google/protobuf/l$f$a;->dz:[Lcom/google/protobuf/l$f$a;

    invoke-virtual {v0}, [Lcom/google/protobuf/l$f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/l$f$a;

    return-object v0
.end method
