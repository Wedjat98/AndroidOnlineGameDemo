.class public final enum Lcom/ledo/fantasy/game/GameAppInitType;
.super Ljava/lang/Enum;
.source "GameAppInitType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ledo/fantasy/game/GameAppInitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ledo/fantasy/game/GameAppInitType;

.field public static final enum INIT_BY_SDK:Lcom/ledo/fantasy/game/GameAppInitType;

.field public static final enum INIT_DIRECTLY:Lcom/ledo/fantasy/game/GameAppInitType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/ledo/fantasy/game/GameAppInitType;

    const-string v1, "INIT_DIRECTLY"

    invoke-direct {v0, v1, v2}, Lcom/ledo/fantasy/game/GameAppInitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ledo/fantasy/game/GameAppInitType;->INIT_DIRECTLY:Lcom/ledo/fantasy/game/GameAppInitType;

    .line 6
    new-instance v0, Lcom/ledo/fantasy/game/GameAppInitType;

    const-string v1, "INIT_BY_SDK"

    invoke-direct {v0, v1, v3}, Lcom/ledo/fantasy/game/GameAppInitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ledo/fantasy/game/GameAppInitType;->INIT_BY_SDK:Lcom/ledo/fantasy/game/GameAppInitType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ledo/fantasy/game/GameAppInitType;

    sget-object v1, Lcom/ledo/fantasy/game/GameAppInitType;->INIT_DIRECTLY:Lcom/ledo/fantasy/game/GameAppInitType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ledo/fantasy/game/GameAppInitType;->INIT_BY_SDK:Lcom/ledo/fantasy/game/GameAppInitType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ledo/fantasy/game/GameAppInitType;->ENUM$VALUES:[Lcom/ledo/fantasy/game/GameAppInitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ledo/fantasy/game/GameAppInitType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/ledo/fantasy/game/GameAppInitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ledo/fantasy/game/GameAppInitType;

    return-object v0
.end method

.method public static values()[Lcom/ledo/fantasy/game/GameAppInitType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ledo/fantasy/game/GameAppInitType;->ENUM$VALUES:[Lcom/ledo/fantasy/game/GameAppInitType;

    array-length v1, v0

    new-array v2, v1, [Lcom/ledo/fantasy/game/GameAppInitType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
