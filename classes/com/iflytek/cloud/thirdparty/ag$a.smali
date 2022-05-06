.class public final enum Lcom/iflytek/cloud/thirdparty/ag$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/cloud/thirdparty/ag$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iflytek/cloud/thirdparty/ag$a;

.field public static final enum b:Lcom/iflytek/cloud/thirdparty/ag$a;

.field public static final enum c:Lcom/iflytek/cloud/thirdparty/ag$a;

.field public static final enum d:Lcom/iflytek/cloud/thirdparty/ag$a;

.field public static final enum e:Lcom/iflytek/cloud/thirdparty/ag$a;

.field public static final enum f:Lcom/iflytek/cloud/thirdparty/ag$a;

.field private static final synthetic g:[Lcom/iflytek/cloud/thirdparty/ag$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ag$a;

    const-string v1, "VAD_LOOKING"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/ag$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ag$a;->a:Lcom/iflytek/cloud/thirdparty/ag$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ag$a;

    const-string v1, "VAD_INSPEECH"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/ag$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ag$a;->b:Lcom/iflytek/cloud/thirdparty/ag$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ag$a;

    const-string v1, "undefined_2"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/cloud/thirdparty/ag$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ag$a;->c:Lcom/iflytek/cloud/thirdparty/ag$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ag$a;

    const-string v1, "VAD_EOS"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/cloud/thirdparty/ag$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ag$a;->d:Lcom/iflytek/cloud/thirdparty/ag$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ag$a;

    const-string v1, "VAD_TIMEOUT"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/cloud/thirdparty/ag$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ag$a;->e:Lcom/iflytek/cloud/thirdparty/ag$a;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ag$a;

    const-string v1, "VAD_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ag$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ag$a;->f:Lcom/iflytek/cloud/thirdparty/ag$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iflytek/cloud/thirdparty/ag$a;

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ag$a;->a:Lcom/iflytek/cloud/thirdparty/ag$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ag$a;->b:Lcom/iflytek/cloud/thirdparty/ag$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ag$a;->c:Lcom/iflytek/cloud/thirdparty/ag$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ag$a;->d:Lcom/iflytek/cloud/thirdparty/ag$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/cloud/thirdparty/ag$a;->e:Lcom/iflytek/cloud/thirdparty/ag$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/cloud/thirdparty/ag$a;->f:Lcom/iflytek/cloud/thirdparty/ag$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/cloud/thirdparty/ag$a;->g:[Lcom/iflytek/cloud/thirdparty/ag$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ag$a;
    .registers 2

    const-class v0, Lcom/iflytek/cloud/thirdparty/ag$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/ag$a;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/cloud/thirdparty/ag$a;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/ag$a;->g:[Lcom/iflytek/cloud/thirdparty/ag$a;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/thirdparty/ag$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/thirdparty/ag$a;

    return-object v0
.end method
