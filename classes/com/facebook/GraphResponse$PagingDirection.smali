.class public final enum Lcom/facebook/GraphResponse$PagingDirection;
.super Ljava/lang/Enum;
.source "GraphResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PagingDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/GraphResponse$PagingDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/facebook/GraphResponse$PagingDirection;

.field public static final enum NEXT:Lcom/facebook/GraphResponse$PagingDirection;

.field public static final enum PREVIOUS:Lcom/facebook/GraphResponse$PagingDirection;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    new-instance v0, Lcom/facebook/GraphResponse$PagingDirection;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/GraphResponse$PagingDirection;-><init>(Ljava/lang/String;I)V

    .line 176
    sput-object v0, Lcom/facebook/GraphResponse$PagingDirection;->NEXT:Lcom/facebook/GraphResponse$PagingDirection;

    .line 177
    new-instance v0, Lcom/facebook/GraphResponse$PagingDirection;

    const-string v1, "PREVIOUS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/GraphResponse$PagingDirection;-><init>(Ljava/lang/String;I)V

    .line 180
    sput-object v0, Lcom/facebook/GraphResponse$PagingDirection;->PREVIOUS:Lcom/facebook/GraphResponse$PagingDirection;

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/GraphResponse$PagingDirection;

    sget-object v1, Lcom/facebook/GraphResponse$PagingDirection;->NEXT:Lcom/facebook/GraphResponse$PagingDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/GraphResponse$PagingDirection;->PREVIOUS:Lcom/facebook/GraphResponse$PagingDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/GraphResponse$PagingDirection;->ENUM$VALUES:[Lcom/facebook/GraphResponse$PagingDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/GraphResponse$PagingDirection;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/facebook/GraphResponse$PagingDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphResponse$PagingDirection;

    return-object v0
.end method

.method public static values()[Lcom/facebook/GraphResponse$PagingDirection;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/GraphResponse$PagingDirection;->ENUM$VALUES:[Lcom/facebook/GraphResponse$PagingDirection;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/GraphResponse$PagingDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
