.class public final enum Lcom/iflytek/cloud/thirdparty/D$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/cloud/thirdparty/D$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iflytek/cloud/thirdparty/D$a;

.field public static final enum b:Lcom/iflytek/cloud/thirdparty/D$a;

.field public static final enum c:Lcom/iflytek/cloud/thirdparty/D$a;

.field private static final synthetic d:[Lcom/iflytek/cloud/thirdparty/D$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/cloud/thirdparty/D$a;

    const-string v1, "MSC"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/D$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/D$a;

    const-string v1, "PLUS"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/D$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/D$a;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/D$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->c:Lcom/iflytek/cloud/thirdparty/D$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/cloud/thirdparty/D$a;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/D$a;->a:Lcom/iflytek/cloud/thirdparty/D$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/cloud/thirdparty/D$a;->b:Lcom/iflytek/cloud/thirdparty/D$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/cloud/thirdparty/D$a;->c:Lcom/iflytek/cloud/thirdparty/D$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->d:[Lcom/iflytek/cloud/thirdparty/D$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/D$a;
    .registers 2

    const-class v0, Lcom/iflytek/cloud/thirdparty/D$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/D$a;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/cloud/thirdparty/D$a;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/D$a;->d:[Lcom/iflytek/cloud/thirdparty/D$a;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/thirdparty/D$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/thirdparty/D$a;

    return-object v0
.end method
