.class public final enum Lcom/iflytek/cloud/thirdparty/ac$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/cloud/thirdparty/ac$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iflytek/cloud/thirdparty/ac$a;

.field public static final enum b:Lcom/iflytek/cloud/thirdparty/ac$a;

.field public static final enum c:Lcom/iflytek/cloud/thirdparty/ac$a;

.field public static final enum d:Lcom/iflytek/cloud/thirdparty/ac$a;

.field public static final enum e:Lcom/iflytek/cloud/thirdparty/ac$a;

.field private static final synthetic f:[Lcom/iflytek/cloud/thirdparty/ac$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ac$a;

    const-string v1, "all"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->a:Lcom/iflytek/cloud/thirdparty/ac$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ac$a;

    const-string v1, "detail"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/ac$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->b:Lcom/iflytek/cloud/thirdparty/ac$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ac$a;

    const-string v1, "normal"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/ac$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->c:Lcom/iflytek/cloud/thirdparty/ac$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ac$a;

    const-string v1, "low"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/cloud/thirdparty/ac$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->d:Lcom/iflytek/cloud/thirdparty/ac$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ac$a;

    const-string v1, "none"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/cloud/thirdparty/ac$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->e:Lcom/iflytek/cloud/thirdparty/ac$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/cloud/thirdparty/ac$a;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ac$a;->a:Lcom/iflytek/cloud/thirdparty/ac$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ac$a;->b:Lcom/iflytek/cloud/thirdparty/ac$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ac$a;->c:Lcom/iflytek/cloud/thirdparty/ac$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ac$a;->d:Lcom/iflytek/cloud/thirdparty/ac$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ac$a;->e:Lcom/iflytek/cloud/thirdparty/ac$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->f:[Lcom/iflytek/cloud/thirdparty/ac$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ac$a;
    .registers 2

    const-class v0, Lcom/iflytek/cloud/thirdparty/ac$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ac$a;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/cloud/thirdparty/ac$a;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ac$a;->f:[Lcom/iflytek/cloud/thirdparty/ac$a;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/thirdparty/ac$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/thirdparty/ac$a;

    return-object v0
.end method
