.class public final enum Lcom/iflytek/cloud/thirdparty/A$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/cloud/thirdparty/A$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iflytek/cloud/thirdparty/A$a;

.field public static final enum b:Lcom/iflytek/cloud/thirdparty/A$a;

.field private static final synthetic c:[Lcom/iflytek/cloud/thirdparty/A$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/cloud/thirdparty/A$a;

    const-string v1, "max"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/A$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/A$a;

    const-string v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/A$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/cloud/thirdparty/A$a;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->a:Lcom/iflytek/cloud/thirdparty/A$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/cloud/thirdparty/A$a;->b:Lcom/iflytek/cloud/thirdparty/A$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->c:[Lcom/iflytek/cloud/thirdparty/A$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/A$a;
    .registers 2

    const-class v0, Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/A$a;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/cloud/thirdparty/A$a;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/A$a;->c:[Lcom/iflytek/cloud/thirdparty/A$a;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/thirdparty/A$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/thirdparty/A$a;

    return-object v0
.end method
