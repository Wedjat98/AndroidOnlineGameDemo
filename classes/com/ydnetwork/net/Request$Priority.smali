.class public final enum Lcom/ydnetwork/net/Request$Priority;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ydnetwork/net/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ydnetwork/net/Request$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ydnetwork/net/Request$Priority;

.field public static final enum HIGH:Lcom/ydnetwork/net/Request$Priority;

.field public static final enum IMMEDIATE:Lcom/ydnetwork/net/Request$Priority;

.field public static final enum LOW:Lcom/ydnetwork/net/Request$Priority;

.field public static final enum NORMAL:Lcom/ydnetwork/net/Request$Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ydnetwork/net/Request$Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/ydnetwork/net/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ydnetwork/net/Request$Priority;->LOW:Lcom/ydnetwork/net/Request$Priority;

    new-instance v0, Lcom/ydnetwork/net/Request$Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/ydnetwork/net/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ydnetwork/net/Request$Priority;->NORMAL:Lcom/ydnetwork/net/Request$Priority;

    new-instance v0, Lcom/ydnetwork/net/Request$Priority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/ydnetwork/net/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ydnetwork/net/Request$Priority;->HIGH:Lcom/ydnetwork/net/Request$Priority;

    new-instance v0, Lcom/ydnetwork/net/Request$Priority;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/ydnetwork/net/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ydnetwork/net/Request$Priority;->IMMEDIATE:Lcom/ydnetwork/net/Request$Priority;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ydnetwork/net/Request$Priority;

    sget-object v1, Lcom/ydnetwork/net/Request$Priority;->LOW:Lcom/ydnetwork/net/Request$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ydnetwork/net/Request$Priority;->NORMAL:Lcom/ydnetwork/net/Request$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ydnetwork/net/Request$Priority;->HIGH:Lcom/ydnetwork/net/Request$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ydnetwork/net/Request$Priority;->IMMEDIATE:Lcom/ydnetwork/net/Request$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ydnetwork/net/Request$Priority;->$VALUES:[Lcom/ydnetwork/net/Request$Priority;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ydnetwork/net/Request$Priority;
    .registers 2

    const-class v0, Lcom/ydnetwork/net/Request$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ydnetwork/net/Request$Priority;

    return-object v0
.end method

.method public static values()[Lcom/ydnetwork/net/Request$Priority;
    .registers 1

    sget-object v0, Lcom/ydnetwork/net/Request$Priority;->$VALUES:[Lcom/ydnetwork/net/Request$Priority;

    invoke-virtual {v0}, [Lcom/ydnetwork/net/Request$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ydnetwork/net/Request$Priority;

    return-object v0
.end method
