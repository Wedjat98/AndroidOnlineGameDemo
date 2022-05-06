.class public final enum Lcom/google/protobuf/A$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum fl:Lcom/google/protobuf/A$b;

.field public static final enum fm:Lcom/google/protobuf/A$b;

.field public static final enum fn:Lcom/google/protobuf/A$b;

.field public static final enum fo:Lcom/google/protobuf/A$b;

.field public static final enum fp:Lcom/google/protobuf/A$b;

.field public static final enum fq:Lcom/google/protobuf/A$b;

.field public static final enum fr:Lcom/google/protobuf/A$b;

.field public static final enum fs:Lcom/google/protobuf/A$b;

.field public static final enum ft:Lcom/google/protobuf/A$b;

.field private static final synthetic fu:[Lcom/google/protobuf/A$b;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    new-instance v0, Lcom/google/protobuf/A$b;

    const-string v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/google/protobuf/A$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/A$b;->fl:Lcom/google/protobuf/A$b;

    .line 79
    new-instance v0, Lcom/google/protobuf/A$b;

    const-string v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/protobuf/A$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/A$b;->fm:Lcom/google/protobuf/A$b;

    .line 80
    new-instance v0, Lcom/google/protobuf/A$b;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/google/protobuf/A$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/A$b;->fn:Lcom/google/protobuf/A$b;

    .line 81
    new-instance v0, Lcom/google/protobuf/A$b;

    const-string v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/google/protobuf/A$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/A$b;->fo:Lcom/google/protobuf/A$b;

    .line 82
    new-instance v0, Lcom/google/protobuf/A$b;

    const-string v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/google/protobuf/A$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/A$b;->fp:Lcom/google/protobuf/A$b;

    .line 83
    new-instance v0, Lcom/google/protobuf/A$b;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/A$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/A$b;->fq:Lcom/google/protobuf/A$b;

    .line 84
    new-instance v0, Lcom/google/protobuf/A$b;

    const-string v1, "BYTE_STRING"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/protobuf/c;->c:Lcom/google/protobuf/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/A$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/A$b;->fr:Lcom/google/protobuf/A$b;

    .line 85
    new-instance v0, Lcom/google/protobuf/A$b;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/A$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/A$b;->fs:Lcom/google/protobuf/A$b;

    .line 86
    new-instance v0, Lcom/google/protobuf/A$b;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/A$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/A$b;->ft:Lcom/google/protobuf/A$b;

    .line 77
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/protobuf/A$b;

    sget-object v1, Lcom/google/protobuf/A$b;->fl:Lcom/google/protobuf/A$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/A$b;->fm:Lcom/google/protobuf/A$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protobuf/A$b;->fn:Lcom/google/protobuf/A$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protobuf/A$b;->fo:Lcom/google/protobuf/A$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protobuf/A$b;->fp:Lcom/google/protobuf/A$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protobuf/A$b;->fq:Lcom/google/protobuf/A$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protobuf/A$b;->fr:Lcom/google/protobuf/A$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protobuf/A$b;->fs:Lcom/google/protobuf/A$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protobuf/A$b;->ft:Lcom/google/protobuf/A$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protobuf/A$b;->fu:[Lcom/google/protobuf/A$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public static final hD()[Lcom/google/protobuf/A$b;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/protobuf/A$b;->fu:[Lcom/google/protobuf/A$b;

    invoke-virtual {v0}, [Lcom/google/protobuf/A$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/A$b;

    return-object v0
.end method
